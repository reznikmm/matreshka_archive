#
#  Copyright (C) 2005 Frans Englich <frans.englich@telia.com>
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

.PHONY: xtests

# Runs the catalogResolver on the test suite and sends result to standard out.
#
check-local:
	cd $(srcdir); \
	perl runTests.pl -d -p `which catalogResolver`

# Note, the runTests.{py,xsl} is non-functional and needs to be completed.
xtests:
	python runTests.py `which catalogResolver` xmlcatconf.xml > rawResults.xml; \
	xsltproc runTests.xsl rawResults.xml > results.xhtml

