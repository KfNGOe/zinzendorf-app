<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    version="2.0" exclude-result-prefixes="tei xsl xs">
    <xsl:output encoding="UTF-8" media-type="text/html" method="xhtml" version="1.0" indent="yes" omit-xml-declaration="yes"/>
    <xsl:import href="./partials/html_navbar.xsl"/>
    <xsl:import href="./partials/html_head.xsl"/>
    <!-- 
    <xsl:import href="./partials/html_footer.xsl"/>
    -->
    <xsl:template match="/">
        <xsl:variable name="doc_title">
            <xsl:value-of select="normalize-space(string-join(.//tei:title[@type='sub']//text()))"/>
        </xsl:variable>
        
        <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
        <html xmlns="http://www.w3.org/1999/xhtml">
            <xsl:call-template name="html_head">
                <xsl:with-param name="html_title" select="$doc_title"></xsl:with-param>
            </xsl:call-template>
            
            <body id="start">
                
                <header>
                    <xsl:call-template name="nav_bar"/>
                </header>
                
                <main>
                    <!-- Page Title -->
                    <div class="container" id="pageTitle">                        
                        <div class="row justify">
                            <div class="col-lg-3 pl-0 pr-5">
                                <!--&nbsp;  -->
                            </div>
                            <div class="col-lg-9 pl-5 pr-0">
                                <h1>
                                    <span class="de">Impressum</span>
                                    <span class="en" style="display: none">Imprint</span>
                                </h1>
                                <!-- <h2 class="submenutitle"> · Benutzung</h2> -->
                            </div>                            
                        </div>                        
                    </div>
                    
                    <!-- Page Content -->
                    <div class="container" id="pageContent">
                        <div class="row">
                            <div class="side-bar col-lg-3 left-column pl-0 pr-5">
                                
                            </div>
                            <div class="texts col-lg-9 right-column pl-5 pr-0">
                                <div class="de">
                                    <h2>Impressum und Datenschutz</h2>
                                
                                    <p>Offenlegung gem. § 25 Mediengesetz</p>
                                    
                                    <p>
                                        Kommission für Neuere Geschichte Österreichs
                                        <br/>
                                        Leopold-Franzens Universität Innsbruck
                                        <br/>
                                        Institut für Geschichtswissenschaften und Europäische Ethnologie
                                        <br/>
                                        Innrain 52
                                        <br/>
                                        A-6020 Innsbruck
                                        <br/>
                                        Österreich
                                    </p>
                                    
                                    <p>
                                        Für den Inhalt verantwortlich:
                                        <br/>
                                        Univ. Prof. em. Dr. Grete Walter-Klingenstein (<a href="mailto:grete.walter-klingenstein@uni-graz.at">grete.walter-klingenstein(at)uni-graz.at</a>)
                                    </p>

                                    <p>
                                        Technische Umsetzung:
                                        <br/>
                                        Peter Andorfer
                                        Richard Hörmann                                        
                                    </p>
                                    
                                    <p>
                                        Design der Website:<br/>
                                        Richard Hörmann
                                        Birgit Raitmayr, <a href="https://www.pixlerei.at" target="_blank">pixlerei.at</a>    
                                    </p> 
                                    
                                    <h2>Hinweise/Haftungsausschluss</h2>
                                    
                                    <p>Die bereitgestellten Informationen auf dieser Website wurden sorgfältig geprüft und werden regelmäßig aktualisiert. Für die Richtigkeit, Aktualität, Vollständigkeit und Verfügbarkeit der Informationen wird jedoch keine Haftung übernommen. Insbesondere können aus der Verwendung der abgerufenen Informationen keinerlei Ansprüche abgeleitet werden.</p>
                                    <p>Links zu anderen Websites wurden sorgfältig ausgewählt. Auf deren Inhalte hat die Kommission für Neuere Geschichte Österreichs keinen Einfluss und kann daher für diese keine Haftung übernehmen. Wir distanzieren uns ausdrücklich von allen Inhalten dieser verlinkten Seiten, da die Kommission für Neuere Geschichte Österreichs auf deren Inhalt keinerlei Einfluss haben und sich diese Inhalte nicht zu eigen machen. Falls in dieser Datenbank und Website auf Seiten verwiesen wird, deren Inhalt Anlass zur Beanstandung gibt, bitten wir um Mitteilung.</p>
                                </div>
                                <div class="en"></div>
                            </div>
                        </div>
                    </div>
                    <!-- /Page Content -->                  
                </main>                
                 
                <footer class="footer-imprint mt-auto pt-5">
                    <div class="container de">
                        <div class="footer-logo"></div>                        
                    </div>                    
                    <div class="container en"></div>                    
                </footer>
                
                <script src="js/language.js"/>
                <script src="js/imprint.js"/>                
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>
