<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xmi="http://schema.omg.org/spec/XMI/2.1"
                xmlns:cmof="http://schema.omg.org/spec/MOF/2.0/cmof.xml"
                version='1.1'>

<xsl:output method="xml"/>

<xsl:template match="/|*|@*|text()">
  <xsl:copy>
   <xsl:apply-templates select="*|@*"/>
  </xsl:copy>
</xsl:template>

<!--
<xsl:template match="ownedMember[../@xmi:type='cmof:Package']">
-->
<xsl:template match="ownedMember[../@xmi:type='cmof:Package' or name(..)='cmof:Package']">
  <packagedElement>
   <xsl:apply-templates select="*|@*"/>
  </packagedElement>
</xsl:template>

</xsl:stylesheet>
