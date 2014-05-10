<xsl:stylesheet version = '1.0'
     xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
<xsl:output  omit-xml-declaration="yes" />
<xsl:template match="/">
#EXTM3U
<xsl:for-each select="//item"> 
<xsl:if test="position()&lt;='10'">
<xsl:text>
#EXTINF:-1,</xsl:text>
<xsl:value-of select="./title"/> 
<xsl:text>
</xsl:text>
<xsl:value-of select="./link"/> 
<xsl:text>
</xsl:text>
</xsl:if>
</xsl:for-each> 
</xsl:template>

</xsl:stylesheet> 

