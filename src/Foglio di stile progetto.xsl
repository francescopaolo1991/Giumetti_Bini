<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/title" /> 
                </title> 
            </head> 
            <body> 
                <h1>Prolusioni all'università di Ginevra</h1>
            </body>       
        
        
        </html>


    </xsl:template>



</xsl:stylesheet>