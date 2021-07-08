<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:html="http://www.w3.org/1999/xhtml" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/10">

    <xsl:output method="html" encoding="UTF-8" indent="yes" />    
    <xsl:template match="/">
            
                 <html>
                    <head> 
                        <style>
                         h1{
                        color:blue;
                         }
                         div{
                        width:45%;
                        border-style:solid;
                        border-width:2px;
                        text-align:justify;
                        margin:20px;
                        padding:15px;
                        font-size:20px;
                         }
                        </style>                     
                    </head> 
                    <body>  
                        <h1>Progetto Esame Codifica di Testi anno 2020-21</h1>
                        <p> <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/></p>
                        <div>
                            <xsl:value-of select="//tei:p[@xml:id='Pericope1']"/><br/>
                            <xsl:value-of select="//tei:p[@xml:id='Pericope2']"/>
                            <xsl:value-of select="//tei:p[@xml:id='Pericope3']"/>
                            <xsl:value-of select="//tei:p[@xml:id='Pericope4']"/>
                            <xsl:value-of select="//tei:p[@xml:id='Pericope5']"/>
                            <xsl:value-of select="//tei:p[@xml:id='Pericope6']"/>
                            <xsl:value-of select="//tei:p[@xml:id='Pericope7']"/>
                        
                        </div>
                        <div>
                        
                        
                        
                        
                        
                        </div>
                    </body>      
        
        
                </html>
    </xsl:template>  



</xsl:stylesheet>