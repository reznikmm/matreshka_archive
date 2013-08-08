# encoding: utf-8
##--------------------------------------------------------------------------##
##                                                                          ##
##                            Matreshka Project                             ##
##                                                                          ##
##         Localization, Internationalization, Globalization for Ada        ##
##                                                                          ##
##                              Tools Component                             ##
##                                                                          ##
##--------------------------------------------------------------------------##
##                                                                          ##
## Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     ##
## All rights reserved.                                                     ##
##                                                                          ##
## Redistribution and use in source and binary forms, with or without       ##
## modification, are permitted provided that the following conditions       ##
## are met:                                                                 ##
##                                                                          ##
##  * Redistributions of source code must retain the above copyright        ##
##    notice, this list of conditions and the following disclaimer.         ##
##                                                                          ##
##  * Redistributions in binary form must reproduce the above copyright     ##
##    notice, this list of conditions and the following disclaimer in the   ##
##    documentation and/or other materials provided with the distribution.  ##
##                                                                          ##
##  * Neither the name of the Vadim Godunko, IE nor the names of its        ##
##    contributors may be used to endorse or promote products derived from  ##
##    this software without specific prior written permission.              ##
##                                                                          ##
## THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS      ##
## "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT        ##
## LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    ##
## A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT     ##
## HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   ##
## SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED ##
## TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR   ##
## PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF   ##
## LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     ##
## NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS       ##
## SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.             ##
##                                                                          ##
##--------------------------------------------------------------------------##
##  $Revision$ $Date$
##--------------------------------------------------------------------------##
##  This plugin provides fancy output of Matreshka's data types in gdb.
##--------------------------------------------------------------------------##
import gdb.printing

# A pretty-printer that conforms to the "PrettyPrinter" protocol from
# gdb.printing.
class Printer(gdb.printing.PrettyPrinter):
    def __init__(self, name):
        super(Printer, self).__init__(name)

    def __call__(self, val):
        typename = val.type.tag

        if typename == 'league__strings__universal_string':
            return UniversalStringPrinter('Universal_String', val)

        return None

# A sub-pretty-printer that conforms to the "SubPrettyPrinter" protocol from
# gdb.printing.
class UniversalStringPrinter(gdb.printing.SubPrettyPrinter):
    def __init__(self, name, val):
        super(UniversalStringPrinter, self).__init__(name)
        self.val = val

    def to_string(self):
        return gdb.execute('output league.strings.to_wide_wide_string({league.strings.universal_string}' + str(self.val.address) + ')', to_string=True)

gdb.printing.register_pretty_printer(gdb.current_objfile(), Printer('Matreshka'))
