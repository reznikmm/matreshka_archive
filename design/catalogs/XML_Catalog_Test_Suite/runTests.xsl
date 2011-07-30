<?xml version="1.0" encoding="UTF-8" ?>
<!--

Copyright (C) 2005 Frans Englich frans.englich@telia.com

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License as
published by the Free Software Foundation; either version 2 of
the License, or (at your option) any later version.
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.  
You should have received a copy of the GNU General Public
License along with this program; if not, write to the Free
Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
MA 02111-1307, USA.

-->

<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"

    xmlns="http://www.w3.org/1999/xhtml"

    version="1.0">
    

  <xsl:param name="dir" select="'.'"/> <!-- Directory for source file -->


    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="CatalogTestResults">
        <html>
            <head>
                <title>The unofficial OASIS XML Catalog Test Suite &#x2014;
                    Results from Run</title>
                <style type="text/css">
                    output
                    {
                        list-style: none;
                    }
                    .disabled
                    {
                        color: gray;
                    }

                </style>
            </head>
            <body>
                <p><xsl:value-of select="count(TestCases)"/> collections of test
                cases were found and run:</p>
                <ul>
                    <xsl:apply-templates select="TestCases" mode="list"/>
                </ul>

                <p>Results:</p>

                <xsl:apply-templates select="TestCases"/>

            </body>
        </html>
    </xsl:template>

    <xsl:template mode="list" match="TestCases">
        <li>
            <a href="#{@Desc}">
                <xsl:value-of select="@Desc"/>
                <xsl:text> &#x2014; </xsl:text>
                <xsl:value-of select="@Author"/></a>
        </li>
    </xsl:template>

    <xsl:template match="TestCases">
        <a name="{@Desc}"
          href="{@Desc}"/>
        <div>
            <table>
                <thead>
                    <tr style="vertical-align: top;">
                        <td>ID</td>
                        <td>Description</td>
                        <td>Input</td>
                        <td>Output</td>
                        <td>Expected Output</td>
                    </tr>
                </thead>
                <tbody>
                    <xsl:apply-templates select="EntityTest | UriTest" />
                </tbody>
            </table>
        </div>
    </xsl:template>

    <xsl:template match="EntityTest | UriTest">
        <tr>
          <td><a href="{concat($dir,'/',@catalog)}"><xsl:value-of select="@id"/></a></td>
            <td><xsl:value-of select="normalize-space(.)"/></td>
            <td>
                <table>
                    <tr>
                        <td>PublicId:</td>
                        <td>
                            <xsl:if test="not(@publicId)">
                                <span class="disabled">None</span>
                            </xsl:if>
                            <xsl:value-of select="@publicId"/>
                        </td>
                    </tr>
                    <tr>
                        <td>SystemId:</td>
                        <td>
                            <xsl:if test="not(@systemId)">
                                <span class="disabled">None</span>
                            </xsl:if>
                            <xsl:value-of select="@systemId"/>
                        </td>
                    </tr>
                    <tr>
                        <td>URI:</td>
                        <td>
                            <xsl:if test="not(@uri)">
                                <span class="disabled">None</span>
                            </xsl:if>
                            <xsl:value-of select="@uri"/>
                        </td>
                    </tr>
                </table>
            </td>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td>Return code:</td>
                            <td><xsl:value-of select="@ReturnCode"/></td>
                        </tr>
                        <tr>
                            <td>URI:</td>
                            <td>
                                <xsl:if test="not(normalize-space(@Result))">
                                    <span class="disabled">None</span>
                                </xsl:if>
                                <xsl:value-of select="@Result"/>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr><!-- Expected Output -->
                <td>
                    <table>
                        <tr>
                            <td>Return code:</td>
                            <td><xsl:value-of select="@ReturnCode"/></td>
                        </tr>
                        <tr>
                            <td>URI:</td>
                            <td>
                                <xsl:if test="not(normalize-space(@expectedUri))">
                                    <span class="disabled">None</span>
                                </xsl:if>
                                <xsl:value-of select="@expectedUri"/>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </tr>
    </xsl:template>

    <xsl:template match="*">
      <xsl:message>
*****        <xsl:value-of select="name(..)"/>/<xsl:value-of select="name(.)"/>*******
      </xsl:message>
    </xsl:template>


</xsl:stylesheet>
<!-- vim: set et tw=80 ts=4 sw=4 sts=4: -->
