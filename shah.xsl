<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes"
        include-content-type="no" indent="yes"/>
    
    <!--Everything except the templates go here--> 
        
        <xsl:template match="/">
    <html>
        
        <head>
        <title><xsl:value-of select="//maintitle"/></title>
            <link rel="stylesheet" href="style.css"/>
        </head>
        
        <body>
            <header>
                <nav>
                    <a href="splash_page.xhtml">Home</a>
                    <a href="about.xhtml">About</a>
                    <a href="shah.xhtml">Reading View</a>
                </nav>
                <div class="legend">
                    <h3>Key</h3>
                    <span class="loc">Location</span>
                    <span class="place">Place</span>
                    <span class="observation">Observation</span>
                    <span class="cultural">Cultural Exchange</span>
                    <span class="person">Person</span>
                    <span class="concept">Concept</span>
                    <span class="ethn">Ethnic/National Group</span>
                    <span class="cult">Cultural Exchange</span>
                    <span class="ethnonym">Ethnonym</span>
                </div>
            </header>
                <h1><xsl:value-of select= "normalize-space (//maintitle)"/></h1>
            <h1><img src="Screenshot 2026-04-21 at 07.28.39.png" alt="Portrait of the Shah" width="250" height="200"/></h1>
            <h1><img src="Naser_al-Din_Shah_Qajar,_close_up,_with_slight_smile_by_Nadar.jpg" alt="Naser al-Din Shah Qajar" width="250" height="200"/></h1>
            <h2><xsl:value-of select="//translator"/></h2>
            <xsl:apply-templates select="//chapter"/> 
        </body>
        
    </html>
        </xsl:template>
    
    <!-- templates go here-->
    
    <xsl:template match="chapter">
        <section>
            <h2><xsl:value-of select="maintitle"/></h2>
            <div>
                <xsl:apply-templates/>
            </div>
        </section>
    </xsl:template>
    
    <xsl:template match="place">
        <span class="place {@type}">
        <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="observation">
        <span class="observation {@type}">
        <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="gathering">
        <span class="gathering {@type}">
        <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="ethn">
        <span class="ethn {@type}">
        <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="loc">
        <span class="loc {@type}">
        <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="cultural">
        <span class="cultural {@type}">
        <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="concept">
        <span class="concept {@type}">
        <xsl:apply-templates/>    
        </span>
    </xsl:template>
    
    <xsl:template match="person">
        <span class="person {@role}">
        <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="comm">
        <span class="comm {@type}">
        <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="cult">
        <span class="cult {@exchange}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="ethnonym">
        <span class="ethnonym">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
</xsl:stylesheet>