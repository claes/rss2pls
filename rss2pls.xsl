<xsl:stylesheet version = '1.0'
     xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
<xsl:output  omit-xml-declaration="yes" />
<xsl:template match="/">[playlist]
NumberOfEntries=10
<xsl:for-each select="//item"> 
<xsl:if test="position()&lt;='10'">
Title<xsl:value-of select="position()" />=<xsl:value-of select="./title"/> 
File<xsl:value-of select="position()" />=<xsl:value-of select="./link"/> 
</xsl:if>
</xsl:for-each> 
</xsl:template>

</xsl:stylesheet> 

