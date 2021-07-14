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
                         }
                         h2{
                              text-align:center;

                         }
                         .index{
                                 margin:60px;
                                padding:80px;
                                font-size:18px;
                                text-align:justify;
                         }
                         .left {
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
                         .right {
                        position:absolute;
                        right:0px;
                             width:45%;
                        border-style:solid;
                        border-width:2px;
                        text-align:justify;
                        margin:20px;
                        padding:15px;
                        font-size:20px;

                         }
                         .footer{
                            position:absolute;
                            margin-top:1430px;
                            display:block;
                            font-size:20px;
                            padding:15px;
                             border-style:solid;
                            border-width:2px;

                         }

                        #person {
                        background-color:DeepPink;    

                        }
                        #term{
                        background-color:yellow; 
                        }
                        #org{
                            background-color:DarkMagenta; 
                        }
                        #location{
                            background-color:FireBrick;

                        }
                        #date{
                            background-color:green;
                        }
                        #pericope{
                             background-color:grey;
                        }
                        table, th, td {
                             border: 1px solid black;
                             width:100%;
                             font-size:20px;
                        }
                        #bibl{

                             background-color:Chartreuse;
                        }
                        #example{
                             background-color:Aqua;

                            
                        }

                
                        </style>                     
                    </head> 
                    <body>  
                            <h1>Progetto Esame Codifica di Testi anno 2020-21</h1>
                            <h2><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:resp" /></h2>
                            <h2><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name" /></h2>
                            <h2><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name[@n='2']" /></h2>
    
                            <div class="index">                           
                        
                                    <p>
                                     <b><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem/tei:title" /> </b>                                    
                                    </p>
                                    <p>
                                     <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc" />
                                    </p>                                   
                                     <p>
                                     <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:idno" />
                                    </p>
                                    <p>
                                    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt" /><br/>
                                    <a href="https://archives.bge-geneve.ch/ark:/17786/vtae78f994bf3242bef/dao/0/1">Immagini Facsimili:https://archives.bge-geneve.ch/ark:/17786/vtae78f994bf3242bef/dao/0/1</a>
                                    </p>
                            </div>

                            <div class="table">
                                <table>
                                    
                                    <th><b>Didascalia dei tag</b></th>
                                    
                                    <tr>
                                        <td>Pericope<br/>
                                        <span id="example">Esempio linguistico : “pater[latino]”</span><br/>
                                        <span id="bibl">Riferimento bibliografico o allusione bibliografica</span><br/>
                                        <span id="person">Antroponimo</span><br/>
                                        <span id="location">Toponimo</span><br/>
                                        <span id="org">Istituzione</span><br/>
                                        <span id="date">Data o evento databile</span><br/>
                                        <span id="term">Elemento Linguistico</span> (per ciascuna occorrenza
                                         se presente in simple_FdS collegare quest’ultima all’occorrenza presente nel testo)
                                        
                                        </td>
                                        <tr>
                                            <td>1.{f. X} indica ilnumero del foglio manoscritto,
                                            posto all’inizio del testo<br/>2. [+ TAGX] eventuale doppio
                                            tagsull’elemento che precede specificato con il colore
                                            assegnato al tag<br/>3. Nelle note, solo per alcuni elementi
                                             a mo’ di esempio, si precisano le informazioni
                                             essenzialidi un elemento taggato. Lo studente può
                                             integrare altri elementi, specie le entità nominate quali
                                             toponimi, antroponimi etc., con le informazioni presenti nel commento di Tullio De Mauro</td>
                                        </tr>     
                                    </tr>    

                                </table>
                                <h2> Codice archivistico “BGE 3951/1.1”<br/>Edizione francese (pericopi, tag e annotazioni) e traduzione
                                 italiana (pericopi) a fronte<br/>Fogli 12-13  </h2>     
                            </div>

                           

                        
                    
                        
                             <div class="left">
                            <xsl:for-each select="//tei:p[@xml:id='pericope1']">
                            <p> <i><a href="pag12.png">{f.12}</a></i>
                                <xsl:value-of select="./tei:l"/>
                                <span id="person"><xsl:value-of select="//tei:p[@xml:id='pericope1']/tei:name[@n='1']"/></span>
                                <xsl:value-of select="./tei:l[@n='1']"/>
                                <span id="person"><xsl:value-of select="//tei:p[@xml:id='pericope1']/tei:name[@n='2']"/></span>
                                . <span id="pericope">&gt; </span>
                            </p>
                            </xsl:for-each> 
                            <xsl:for-each select="//tei:p[@xml:id='pericope2']">                           
                            <p>
                                <span id="pericope"> &lt;</span> 
                                <xsl:value-of select="./tei:l[@n='2']"/>
                                <span id="term"><xsl:value-of select="//tei:p[@xml:id='pericope2']/tei:term[@xml:id='TERM1']"/></span>
                                <xsl:value-of select="./tei:l[@n='3']"/>
                                <span id="term"><xsl:value-of select="//tei:p[@xml:id='pericope2']/tei:term[@xml:id='TDPV2']"/></span>
                                <i> <xsl:value-of select="./tei:l[@n='4']"/>  </i>
                                <span id="term"><xsl:value-of select="//tei:p[@xml:id='pericope2']/tei:term[@xml:id='TERM3']"/></span>
                                <xsl:value-of select="./tei:l[@n='5']"/>
                                <i> <xsl:value-of select="./tei:l[@n='6']"/></i>
                                <span id="term"><xsl:value-of select="//tei:p[@xml:id='pericope2']/tei:term[@xml:id='TERM4']"/></span>
                                <xsl:value-of select="./tei:l[@n='7']"/>
                                <span id="term"><xsl:value-of select="//tei:p[@xml:id='pericope2']/tei:term[@xml:id='TERM5']"/></span>
                                <xsl:value-of select="./tei:l[@n='8']"/>
                                <span id="term"><xsl:value-of select="//tei:p[@xml:id='pericope2']/tei:term[@xml:id='TERM6']"/></span>
                                ou <span id="term"><xsl:value-of select="//tei:p[@xml:id='pericope2']/tei:term[@xml:id='TERM7']"/></span>
                                <xsl:value-of select="./tei:l[@n='9']"/>
                                <span id="term"><xsl:value-of select="//tei:p[@xml:id='pericope2']/tei:term[@xml:id='TERM8']"/></span>
                                <xsl:value-of select="./tei:l[@n='10']"/>
                                <span id="term"><xsl:value-of select="//tei:p[@xml:id='pericope2']/tei:term[@xml:id='TERM9']"/></span>.
                                <span id="pericope">&gt; </span>
                            </p>
                            </xsl:for-each>  
                            <xsl:for-each select="//tei:p[@xml:id='pericope3']"> 
                            <p>
                                 <span id="pericope"> &lt;</span> 
                                L' <span id="org"><xsl:value-of select="//tei:p[@xml:id='pericope3']/tei:name"/></span>
                                <xsl:value-of select="./tei:l[@n='11']"/>
                                <span id="term"><xsl:value-of select="//tei:p[@xml:id='pericope3']/tei:term[@xml:id='TERM10']"/></span>
                                <xsl:value-of select="./tei:l[@n='12']"/>
                                <span id="org"><xsl:value-of select="//tei:p[@xml:id='pericope3']/tei:name[@n='2']"/></span>
                                <xsl:value-of select="./tei:l[@n='13']"/>
                                <span id="term"><xsl:value-of select="//tei:p[@xml:id='pericope3']/tei:term[@xml:id='TERM11']"/></span>.
                                <span id="pericope">&gt; </span>                
                                                 
                            
                                                       
                            
                            </p>
                            </xsl:for-each>
                            <xsl:for-each select="//tei:p[@xml:id='pericope4']"> 
                            <p>
                                <span id="pericope">&lt;</span>
                                <xsl:value-of select="./tei:l[@n='14']"/>
                                <span id="date"><xsl:value-of select="//tei:p[@xml:id='pericope4']/tei:date[@xml:id='date1']"/></span>
                                <xsl:value-of select="./tei:l[@n='15']"/>
                                <i><xsl:value-of select="./tei:l[@n='16']"/></i>
                                <xsl:value-of select="./tei:l[@n='17']"/>
                                <span id="term"><xsl:value-of select="//tei:p[@xml:id='pericope4']/tei:term[@xml:id='TERM12']"/></span>
                                <i>,<a href="pagina 13.png"> {f.13}</a></i>, ou aux
                                <span id="term"><xsl:value-of select="//tei:p[@xml:id='pericope4']/tei:term[@xml:id='TERM13']"/></span>
                                , ou aux
                                <span id="term"><xsl:value-of select="//tei:p[@xml:id='pericope4']/tei:term[@xml:id='TERM14']"/></span>
                                , ou aux
                                <span id="term"><xsl:value-of select="//tei:p[@xml:id='pericope4']/tei:term[@xml:id='TERM15']"/></span>
                                , etc.
                                <span id="pericope">&gt; </span>
                            
                            </p>
                            </xsl:for-each>
                            <xsl:for-each select="//tei:p[@xml:id='pericope5']">
                            <p>
                                <span id="pericope"> &lt;</span>
                                <xsl:value-of select="./tei:l[@n='18']"/>
                                <i><xsl:value-of select="./tei:l[@n='19']"/></i>
                                c’est que le nouveau
                                <span id="org"><xsl:value-of select="//tei:p[@xml:id='pericope5']/tei:name[@n='3']"/></span>
                                créé par le 
                                <span id="org"><xsl:value-of select="//tei:p[@xml:id='pericope5']/tei:name[@n='4']"/></span>
                                <xsl:value-of select="./tei:l[@n='20']"/>
                                <span id="person"><xsl:value-of select="//tei:p[@xml:id='pericope5']/tei:name[@n='5']"/></span>
                                <span id="pericope">&gt; </span>                               

                            </p>
                            </xsl:for-each> 
                            <xsl:for-each select="//tei:p[@xml:id='pericope6']">
                            <p>
                                <span id="pericope"> &lt;</span>  
                                <xsl:value-of select="./tei:l[@n='21']"/>   
                                <i><xsl:value-of select="./tei:l[@n='22']"/> </i> certain
                                <span id="term"><xsl:value-of select="//tei:p[@xml:id='pericope6']/tei:term[@xml:id='TERM16']"/></span>
                                <i><xsl:value-of select="./tei:l[@n='23']"/> </i> 
                                <xsl:value-of select="./tei:l[@n='24']"/>  
                                <span id="term"><xsl:value-of select="//tei:p[@xml:id='pericope6']/tei:term[@xml:id='TERM17']"/></span>
                                <xsl:value-of select="./tei:l[@n='25']"/>  
                                <i><xsl:value-of select="./tei:l[@n='26']"/> </i>
                                <xsl:value-of select="./tei:l[@n='27']"/>
                                <span id="pericope">&gt; </span>                              
                            
                            </p>
                            </xsl:for-each> 
                            <xsl:for-each select="//tei:p[@xml:id='pericope7']">
                            <p>
                                <span id="pericope"> &lt;</span> 
                                Comme
                                <span id="term"><xsl:value-of select="//tei:p[@xml:id='pericope7']/tei:term[@xml:id='TERM18']"/></span>
                                <xsl:value-of select="./tei:l[@n='28']"/>
                                <span id="pericope">&gt; </span>  


                            
                            
                            
                            
                            
                            </p>
                            </xsl:for-each>                              
                                                        
                        </div>

                        <div class="right">
                            <p><xsl:value-of select="//tei:p[@xml:id='Traduzione pericope 1']"/><span id="pericope">&gt; </span></p>
                            <p> <span id="pericope"> &lt;</span>  Il<xsl:value-of select="//tei:p[@xml:id='Traduzione pericope 2']"/><span id="pericope">&gt; </span></p>
                            <p> <span id="pericope"> &lt;</span><xsl:value-of select="//tei:p[@xml:id='Traduzione pericope 3']"/><span id="pericope">&gt; </span></p>
                            <p> <span id="pericope"> &lt;</span><xsl:value-of select="//tei:p[@xml:id='Traduzione pericope 4']"/><span id="pericope">&gt; </span></p>
                            <p> <span id="pericope"> &lt;</span><xsl:value-of select="//tei:p[@xml:id='Traduzione pericope 5']"/><span id="pericope">&gt; </span></p>
                            <p> <span id="pericope"> &lt;</span><xsl:value-of select="//tei:p[@xml:id='Traduzione pericope 6']"/><span id="pericope">&gt; </span></p>
                            <p> <span id="pericope"> &lt;</span><xsl:value-of select="//tei:p[@xml:id='Traduzione pericope 7']"/><span id="pericope">&gt; </span> </p>                   
                        
                        
                        
                        
                        </div>
                        <div class="footer">
                            <p id="note">>&#178; Scilicet Jospeh Wertheimer (Soultz, Alsazia, 22.05.1833 –Ginevra 27.04.1908). 
                        Fu il primo rabbino capo di Ginevra (1859-1908) e professore di filologia e linguistica all’Università
                         di Ginevra (1873-1906). Fonte: DSSonline <a href="https://hls-dhs-dss.ch/it/articles/014933/2013-07-03/">https://hls-dhs-dss.ch/it/articles/014933/2013-07-03/</a>
                            </p>
                        </div>
   
                    </body>      
        
        
                </html>
    </xsl:template>  



</xsl:stylesheet>