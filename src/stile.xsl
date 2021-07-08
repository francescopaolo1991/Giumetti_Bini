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
                        text-align:center;
                         p{
                        text-align:center;
                        }
                         }
                         .left{
                        position:absolute;
                        left:0px;
                        width:45%;
                        border-style:solid;
                        border-width:2px;
                        text-align:justify;
                        margin:20px;
                        padding:15px;
                        font-size:20px;
                         }
                         .right{
                        position:absolute;
                        right:0px;
                        width:45%;
                        border-style:solid;
                        border-width:2px;
                        text-align:justify;
                        margin:20px;
                        padding:15px;
                        font-size:20px;

                        </style>                     
                    </head> 
                    <body>  
                        <h1>Progetto Esame Codifica di Testi anno 2020-21</h1>
                        <p> <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/></p>
                        <p> <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt"/></p>
                        <div class="left">
                            <xsl:value-of select="//tei:p[@xml:id='pericope1']"/><br/>
                            <xsl:value-of select="//tei:p[@xml:id='pericope2']"/>
                            <xsl:value-of select="//tei:p[@xml:id='pericope3']"/>
                            <xsl:value-of select="//tei:p[@xml:id='pericope4']"/>
                            <xsl:value-of select="//tei:p[@xml:id='pericope5']"/>
                            <xsl:value-of select="//tei:p[@xml:id='pericope6']"/>
                            <xsl:value-of select="//tei:p[@xml:id='pericope7']"/>
                        
                        </div>
                        <div class="right">

                            <xsl:value-of select="//tei:p[@xml:id='Traduzione pericope 1']"/><br/>
                            <xsl:value-of select="//tei:p[@xml:id='Traduzione pericope 2']"/>
                            <xsl:value-of select="//tei:p[@xml:id='Traduzione pericope 3']"/>
                            <xsl:value-of select="//tei:p[@xml:id='Traduzione pericope 4']"/>
                            <xsl:value-of select="//tei:p[@xml:id='Traduzione pericope 5']"/>
                            <xsl:value-of select="//tei:p[@xml:id='Traduzione pericope 6']"/>
                            <xsl:value-of select="//tei:p[@xml:id='Traduzione pericope 7']"/> 
                        
                        
                        
                        
                        </div>
                    </body>      
        
        
                </html>
    </xsl:template>  



</xsl:stylesheet>