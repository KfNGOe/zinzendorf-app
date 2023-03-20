<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    version="2.0" exclude-result-prefixes="xsl tei xs">
    
    <xsl:variable name="volume">band_001</xsl:variable>
    
    <xsl:variable name="doc_toc" select="document('../data/xml/dirFileList.xml')"/>
        
    <xsl:template match="/" name="toc_diaries">
        <div class="container" id="selectList">
            <div class="de">            
                <h2>Inhaltsverzeichnis</h2>
                <xsl:call-template name="toc_content"/>                
            </div>
            <div class="en" style="display: none"></div>            
        </div>
    </xsl:template>
    
    <xsl:template name="toc_content">
        <xsl:sequence select="$doc_toc"/>        
    </xsl:template>
    
</xsl:stylesheet>