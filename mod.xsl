<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.anchor">
        <!-- className 'J_OXMod' required  -->
        <xsl:param name="name">dock1</xsl:param>
        <div class="J_OXMod oxmod-anchor" ox-mod="anchor">
            
        	<xsl:choose>
        		<xsl:when test="env/domain = 'online'">
        			<a name="{$name}"></a>
        		</xsl:when>
        		<xsl:otherwise>
        			<a name="{$name}">#<xsl:value-of select="$name"/></a>
        		</xsl:otherwise>
        	</xsl:choose>
            
        </div>
    </xsl:template>
</xsl:stylesheet>
