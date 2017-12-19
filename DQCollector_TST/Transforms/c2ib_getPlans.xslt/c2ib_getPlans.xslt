<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes" method="xml" encoding="UTF-8"/>
        <xsl:template match="/">
            <xsl:variable name="data" select="status/cmdoutput"/>
                <Plans>
                    <xsl:for-each select="tokenize($data, '\n')">
						
                        <xsl:if test="string-length(.) &gt; 0"> <!--to suppress empty Plan element-->
                            <Plan>
								
									
										<xsl:attribute name = "lastmodified">
										
											<xsl:sequence select="substring(., string-length(.)-18, string-length(.))"/>
										    
										</xsl:attribute>
									
									
									<xsl:sequence select="substring-before(translate(., '&quot;', ''), '#')"/>
									
                            </Plan>
													
						</xsl:if>	
                    </xsl:for-each>
				 		
                </Plans>
			</xsl:template>
</xsl:stylesheet>