#!/usr/bin/env python
#
# Copyright (C) 2005 Frans Englich <frans.englich@telia.com>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation; either version 2 of
# the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public
# License along with this program; if not, write to the Free
# Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
# MA 02111-1307, USA.

from optparse import OptionParser
from xml.dom import *
from xml.dom.minidom import getDOMImplementation, parse, Document, DocumentType
from xml.parsers.expat import ExpatError
import os
import subprocess
import sys

resultDocument = Document()

# Holds the path to the test program
testUtility = ""

# Holds the path to the XML Test Suite file
testSuite = ""

# This dictionary maps the specific parameters of the 
# test program.
parameters = {  "catalog"   : "--cat",
                "publicId"  : "--pub",
                "systemId"  : "--sys",
                "uri"       : "--uri",
                "prefer"    : "--prefer"
             }

#------------------------------------------------------------------------------
def main( argv ):
    """

    The XML file is expected to be after the syntax described in xmlcatconf.dtd.

    """

    try: # KeyboardInterrupt

        # Parse command line flags
        # --------------------------------------------
        optParser = OptionParser(   "usage: %prog <URL "\
                "test utility> <URL to Test Suite XML file>",
                                version="%prog 0.1" )

        (opts, args) = optParser.parse_args( argv )

        # --------------------------------------------
        # Do sanity checks
        if len(args) < 2:
            optParser.error("You must supply an URL which specifies the OASIS " \
                    "XML Catalog test utility, and an URL to the Test Suite file.")

        if len(args) > 2:
            optParser.error("It makes no sense to supply more than two URLs.")

        global testUtility, testSuite
        testUtility = args[0]
        testSuite = os.path.abspath(args[1])

        if not os.access( testUtility, os.X_OK ):
            sys.stderr.write("The file " + testUtility + " does not exist or have " \
            "not execute permissions.\n")
            sys.exit(1)

        # --------------------------------------------
        # Open the file
        impl = getDOMImplementation()

        try:
            sourceDocument = parse(testSuite)

        except ExpatError, e:
            sys.stderr.write("Specified file is not " + str(e) + '\n')
            sys.exit(1)

        global resultDocument

        resultDocument = impl.createDocument("", "CatalogTestResults",
                DocumentType("CatalogTestResults"))
        resDocElement = resultDocument.documentElement
        children = sourceDocument.documentElement.childNodes
        
        for e in children:
            if e.nodeType == Node.ELEMENT_NODE:
                resDocElement.appendChild(parseTestCases(e))

        print resultDocument.toprettyxml()

    except KeyboardInterrupt:
        print "Terminated by user."
        sys.exit(1)

def parseTestCases(el):
    """
    Iterates over the children in @p el which is expected to have the
    name 'TestCases', and for each child element named 'EntityTest' is
    parseTestCase() called.

    @param el a TestCases element
    """
    if not el.tagName == "TestCases":
        sys.stderr.write("The XML file have invalid content.\n")
        sys.exit(1)
        
    doc = el.ownerDocument
    re = doc.createElement("TestCases")

    re.setAttribute("Author", el.getAttribute("Author"))
    re.setAttribute("Desc", el.getAttribute("Desc"))
    re.setAttribute("xml:base", el.getAttribute("xml:base"))
    
    children = el.childNodes
    for e in children:
        if e.nodeType == Node.ELEMENT_NODE:
            re.appendChild(parseTestCase(e))

    return re

def parseTestCase(el):

    doc = el.ownerDocument

    if not el.tagName in ("EntityTest", "UriTest"):
        sys.stderr.write("The XML file have invalid content.\n")
        sys.exit(1)

    re = el.cloneNode(True)

    # Run the test.
    global testUtility

    catalogPath = baseURI(el) + '/' + el.getAttribute("catalog")
    program = (testUtility, parameters["catalog"], catalogPath)

    if el.tagName in "EntityTest":
        program += (parameters["publicId"], el.getAttribute("publicId"),
                parameters["systemId"], el.getAttribute("systemId"),
                parameters["prefer"], el.getAttribute("prefer"))

    else: # Must be UriTest
        program += (parameters["uri"], el.getAttribute("uri"))

    process = subprocess.Popen( args = program,
                stderr=subprocess.PIPE,
                # I am Mario!!!
                stdout=subprocess.PIPE)

    retcode = process.wait()
    sys.stderr.write(process.stderr.read())

    re.setAttribute("ReturnCode", str(retcode))
    re.setAttribute("Result", process.stdout.read())
    re.setAttribute("catalog", catalogPath)

    return re
#------------------------------------------------------------------------------

def baseURI(node):
    """
    A half-broken implementation of baseURI for minidom.
    """

    if node.nodeType == Node.DOCUMENT_NODE:
        global testSuite
        return os.path.dirname(testSuite) # Acts as documentURI, so to speak.
    
    parentBase = baseURI(node.parentNode) + '/'
    myBase = node.getAttribute("xml:base")
    return os.path.dirname(parentBase) + '/' + os.path.dirname(myBase)

if __name__ == "__main__":
    main(sys.argv[1:])

# vim: set et tw=80 ts=4 sw=4 sts=4:
