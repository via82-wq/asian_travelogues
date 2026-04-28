<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="no" 
        include-content-type="no" indent="yes"/>
     
    
    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:apply-templates select="//title"/></title>
                <link rel="stylesheet" href="style.css"/>
            </head>
            
            <body style="direction: rtl; text-align: right;">
                <xsl:apply-templates select="//paragraph"/>
                <h1><xsl:value-of select="//title"/></h1>
                <h2><xsl:value-of select="//author"/></h2>
                <xsl:apply-templates select="//paragraph"/>
            </body>
        </html>
    </xsl:template>
        
    <xsl:template match="paragraph">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
</xsl:stylesheet>