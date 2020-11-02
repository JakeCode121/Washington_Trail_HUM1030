<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0">



    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href=""/>

                <title>Washington's Journey to Fort Le Boeuf, 1753</title>

            </head>

            <body>

                <h1> Locations of Washington's Stays</h1>
                <h2> cities </h2>
                <ul>
                    <xsl:apply-templates select="descendant::place[@PlaceType='city']"/>
                </ul> 
                
                <h2>People in Washington's Journal</h2>
                <ul>
                    <xsl:apply-templates select="descendant::person"/>
                </ul>
                
                
            </body>
            
        </html>
    </xsl:template>

    <xsl:template match="place[@PlaceType ='city']">
        
        <li>    <xsl:apply-templates/></li>
        
        </xsl:template>
       <xsl:template match="place[@PlaceType ='river']">
            
            <li>    <xsl:apply-templates/></li>  
        
    </xsl:template>

            <xsl:template match="person">
                
                <li>    <xsl:apply-templates/></li>
                
                </xsl:template>

</xsl:stylesheet>