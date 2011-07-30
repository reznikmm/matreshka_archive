#!/usr/bin/env perl -w
#	XML Catalog Conformance Tests DTD
#	Copyright 2001 ElCel Technology Limited
#	Copyright 2005 Frans Englich <frans.englich@telia.com>
#	All Rights Reserved.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is fur-
# nished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FIT-
# NESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS 
# IN THE SOFTWARE.

use XML::Parser;
use File::Compare;
use strict;
use English;
use Getopt::Std;

# Options:
# -d 		Turns on debug output.
# -p <URL>	Specifies the testing program
getopts('dp:');

use vars qw( $opt_d $opt_p);
use vars qw($debug $prefix);
use vars qw($catalogProgram $cattest);
use vars qw($passCount $failCount);

my $catalogProgram = $opt_p;
my $debug = $opt_d;
my $passCount = 0;
my $failCount = 0;
my $prefix = "";

if(! -f $catalogProgram)
{
	print "Executable file $catalogProgram not found\n";
	exit (1);
}

my $p1 = new XML::Parser(Style => 'Subs', NoLWP => 'true');
$p1->parsefile('xmlcatconf.xml');
print "Tests passed: $passCount, tests failed: $failCount\n";

sub TestCases()
{
	my ($expat, $element, %attrs) = @_;
	my $author = $attrs{Author};
	my $desc = $attrs{Desc};
	my $base = $attrs{"xml:base"};

	print "TestCases Author=$author Desc=$desc\n" if $debug;

	$main::prefix = $base;
}

sub EntityTest()
{
	my ($expat, $element, %attrs) = @_;
	doTest($expat, $element, %attrs);
}

sub UriTest()
{
	my ($expat, $element, %attrs) = @_;
	doTest($expat, $element, %attrs);
}

sub doTest()
{
	my ($expat, $element, %attrs) = @_;
	my $catalog = $attrs{catalog};
	my $systemId = $attrs{systemId};
	my $publicId = $attrs{publicId};
	my $uri = $attrs{uri};
	my $expectedUri = $attrs{expectedUri};
	my $expectedFile = $attrs{expectedFile};
	my $prefer = $attrs{prefer};
	my $type = $attrs{type};
	my $id = $attrs{id};
	my $expectedRC = 0;

	my $catFile = $main::prefix . $catalog;
	my $result;
	my $rc;

	if($uri)
	{
		print "$catalogProgram --cat \"$catFile\" --uri \"$uri\"" if $debug;
		$result = `$catalogProgram --cat \"$catFile\" --uri \"$uri\"`;
		$rc = $? >> 8;
	}
	else
	{
		if(! $publicId)
		{
			$publicId= "";
		}

		print "$catalogProgram --cat \"$catFile\" --pub \"$publicId\" --sys \"$systemId\" " .
		"--prefer $prefer\n" if $debug;
		my $resultStr = "$catalogProgram --cat \"$catFile\" --pub \"$publicId\"" . 
			" --sys \"$systemId\" --prefer \"$prefer\"";
		$result = `$resultStr`;

		$rc = $? >> 8;
	}

	if($type eq "nomatch")
	{
		$expectedRC = 1;
	}
	elsif($type eq "error")
	{
		$expectedRC = 2;
	}

	my $fail = 0;

	if($rc != $expectedRC)
	{
		if($expectedUri)
		{
			print "FAILURE for $id. rc=$rc, expectedUri=\"$expectedUri\" " .
			"expectedRC=\"$expectedRC\" Result=\"$result\"\n";
		}
		elsif($expectedFile)
		{
			print "FAILURE for $id. rc=$rc, expectedFile=\"$expectedFile\" " .
			"expectedRC=\"$expectedRC\" Result=\"$result\"\n";
		}
		$failCount++;
	}
	elsif($expectedRC eq $rc and $rc eq 1 and $result eq "")
	{
		print "SUCCESS for $id. rc=$rc, expectedResult=\"\" " .
		"expectedRC=\"$expectedRC\" Result=\"$result\"\n";
		$passCount++;
	}
	elsif($rc < 2)
	{
		chomp($result);
		my $file = $result;

		if($result =~ /(.*:).*[\/\\](.*)$/)
		{
			$file = $2;
		}

		if($expectedUri && ($result ne $expectedUri))
		{
			$failCount++;
			print "FAILURE for $id. Expected URI=\"$expectedUri\" Result=\"$result\" RC=$rc\n";
		}
		elsif($expectedFile && ($file ne $expectedFile))
		{
			$failCount++;
			print "FAILURE for $id. Expected URI=\"$expectedFile\" Result=\"$file\" RC=$rc\n";
		}
		else
		{
			$passCount++;
			if($debug)
			{
				if($expectedUri)
				{
					print "SUCCESS for $id. Expected URI=\"$expectedUri\" " .
					"Result=\"$result\" RC=$rc\n";
				}
				else
				{
					print "SUCCESS for $id. Expected File=\"$expectedFile\" " .
					"Result=\"$result\" RC=$rc\n";
				}
			}	
		}
	}
	else
	{
		$passCount++;
		if($debug)
		{
			print "SUCCESS for $id. Result=\"$result\" RC=$rc\n";
		}	
	}
}
