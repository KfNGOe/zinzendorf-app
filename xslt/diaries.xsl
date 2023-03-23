<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    version="2.0" exclude-result-prefixes="tei xsl xs">
    
    <xsl:output encoding="UTF-8" media-type="text/html" method="xhtml" version="1.0" indent="yes" omit-xml-declaration="yes"/>
    
    <xsl:import href="./partials/html_navbar.xsl"/>
    <xsl:import href="./partials/html_head.xsl"/>
    <xsl:import href="./partials/html_footer.xsl"/>     
    <xsl:import href="./diaries_toc.xsl"/>            
    
    <xsl:template match="/">
        
        <xsl:variable name="full_path">
            <xsl:value-of select="document-uri(/)"/>
        </xsl:variable>
        <xsl:variable name="doc_title">
            <xsl:value-of select="normalize-space(string-join(.//tei:title[@type='sub']//text()))"/>
        </xsl:variable>
            
        <xsl:call-template name="letter_page">
            <xsl:with-param name="doc_title" select="$doc_title"/>
        </xsl:call-template>
            <!-- 
            <xsl:result-document href="../html/diaries.html" method="html">
                <xsl:call-template name="letter_page"/>                    
            </xsl:result-document>
            -->
    </xsl:template>
    
    <xsl:template name="letter_page">
        
        <xsl:param name="doc_title"/>
        
        <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
        
        <html xmlns="http://www.w3.org/1999/xhtml">
            <xsl:call-template name="html_head">
                <xsl:with-param name="html_title" select="$doc_title"/>
            </xsl:call-template>
            
            <body id="briefe">
                
                <header>
                    <!-- headnav -->
                    <xsl:call-template name="nav_bar"/>
                </header>
                
                <main>
                    <!-- Page Title -->
                    <div class="container" id="pageTitle">
                        <div class="de">
                            <div class="row justify">
                                <div class="col-lg-3 pl-0 pr-5">
                                    <small>Bitte auf einen Verweis klicken.</small>
                                </div>
                                <div class="col-lg-9 pl-5 pr-0">
                                    <h1>Tagebücher</h1>
                                    <!-- <h2 class="submenutitle"> · Benutzung</h2> -->
                                </div>                            
                            </div>
                        </div>
                    
                        <div class="en" style="display: none">
                            <div class="row justify">
                                <div class="col-lg-3 pl-0 pr-5">
                                    <small>Please click on a reference.</small>
                                </div>
                                <div class="col-lg-9 pl-5 pr-0">
                                    <h1>Diaries</h1>
                                    <!-- <h2 class="submenutitle"> · Benutzung</h2> -->
                                </div>                            
                            </div>
                        </div>
                    </div>
                    
                    <!-- Page Content -->
                    <div class="container" id="pageContent">                        
                        <div class="row">
                            <div class="side-bar col-lg-3 left-column pl-0 pr-5">                                
                                <xsl:call-template name="toc_diaries"/>
                            </div>                                
                            <div class="texts col-lg-9 right-column pl-5 pr-0">
                                <div class="container" id="text">
                                    <div class="text" id="_1782_text" style="display: none">
                                        <div class="heading-texts">
                                            <div class="de">
                                               <h4>Tagebuch 1882</h4>                                               
                                            </div>
                                            <div class="en">
                                            </div>                                         
                                        </div>
                                        <div class="frame-texts" style="display: none">
                                            
                                        </div>                                        
                                    </div>
                                    <div class="text" id="_1783_text" style="display: none">
                                        <div class="heading-texts">
                                            <div class="de">
                                               <h4>Tagebuch 1883</h4>                                               
                                            </div>
                                            <div class="en">
                                            </div>                                         
                                        </div>
                                        <div class="frame-texts" style="display: none">
                                            
                                        </div>                                        
                                    </div>
                                    <div class="text" id="_1784_text" style="display: none">
                                        <div class="heading-texts">
                                            <div class="de">
                                               <h4>Tagebuch 1884</h4>                                               
                                            </div>
                                            <div class="en">
                                            </div>                                         
                                        </div>
                                        <div class="frame-texts" style="display: none">
                                            
                                        </div>                                        
                                    </div>
                                    <div class="text" id="_Januar-Juli_1785_text" style="display: none">
                                        <div class="heading-texts">
                                            <div class="de">
                                               <h4>Tagebuch 1785 Januar-Juli</h4>                                               
                                            </div>
                                            <div class="en">
                                            </div>                                         
                                        </div>
                                        <div class="frame-texts" style="display: none">
                                            
                                        </div>                                        
                                    </div>
                                    <div class="text" id="_August-Dezember_1785_text" style="display: none">
                                        <div class="heading-texts">
                                            <div class="de">
                                               <h4>Tagebuch 1785 August-Dezember</h4>                                               
                                            </div>
                                            <div class="en">
                                            </div>                                         
                                        </div>
                                        <div class="frame-texts" style="display: none">
                                            
                                        </div>                                        
                                    </div>
                                    <div class="text" id="_1786_text" style="display: none">
                                        <div class="heading-texts">
                                            <div class="de">
                                               <h4>Tagebuch 1786</h4>                                               
                                            </div>
                                            <div class="en">
                                            </div>                                         
                                        </div>
                                        <div class="frame-texts" style="display: none">
                                            
                                        </div>                                        
                                    </div>
                                    <div class="text" id="_Januar-September_1787_text" style="display: none">
                                        <div class="heading-texts">
                                            <div class="de">
                                               <h4>Tagebuch 1787 Januar-September</h4>                                               
                                            </div>
                                            <div class="en">
                                            </div>                                         
                                        </div>
                                        <div class="frame-texts" style="display: none">
                                            
                                        </div>                                        
                                    </div>
                                    <div class="text" id="_Oktober-Dezember_1787_text" style="display: none">
                                        <div class="heading-texts">
                                            <div class="de">
                                               <h4>Tagebuch 1787 Oktober-Dezember</h4>                                               
                                            </div>
                                            <div class="en">
                                            </div>                                         
                                        </div>
                                        <div class="frame-texts" style="display: none">
                                            
                                        </div>                                        
                                    </div>
                                    <div class="text" id="_1788_text" style="display: none">
                                        <div class="heading-texts">
                                            <div class="de">
                                               <h4>Tagebuch 1788</h4>                                               
                                            </div>
                                            <div class="en">
                                            </div>                                         
                                        </div>
                                        <div class="frame-texts" style="display: none">
                                            
                                        </div>                                        
                                    </div>
                                    <div class="text" id="_Januar-Juni_1789_text" style="display: none">
                                        <div class="heading-texts">
                                            <div class="de">
                                                <h4>Tagebuch 1789 Januar-Juni</h4>                                               
                                            </div>
                                            <div class="en">
                                            </div>                                         
                                        </div>
                                        <div class="frame-texts" style="display: none">
                                            
                                        </div>                                        
                                    </div>
                                    <div class="text" id="_Juli-Dezember_1789_text" style="display: none">
                                        <div class="heading-texts">
                                            <div class="de">
                                                <h4>Tagebuch 1789 Juli-Dezember</h4>                                               
                                            </div>
                                            <div class="en">
                                            </div>                                         
                                        </div>
                                        <div class="frame-texts" style="display: none">
                                            
                                        </div>                                        
                                    </div>                                    
                                    <div class="text" id="_Januar-April_1790_text" style="display: none">
                                        <div class="heading-texts">
                                            <div class="de">
                                                <h4>Tagebuch 1790 Januar-April</h4>                                               
                                            </div>
                                            <div class="en">
                                            </div>                                         
                                        </div>
                                        <div class="frame-texts" style="display: none">
                                            
                                        </div>                                        
                                    </div>
                                    <div class="text" id="_Mai-August_1790_text" style="display: none">
                                        <div class="heading-texts">
                                            <div class="de">
                                                <h4>Tagebuch 1790 Mai-August</h4>                                               
                                            </div>
                                            <div class="en">
                                            </div>                                         
                                        </div>
                                        <div class="frame-texts" style="display: none">
                                            
                                        </div>                                        
                                    </div>
                                    <div class="text" id="_September-Dezember_1790_text" style="display: none">
                                        <div class="heading-texts">
                                            <div class="de">
                                                <h4>Tagebuch 1790 September-Dezember</h4>                                               
                                            </div>
                                            <div class="en">
                                            </div>                                         
                                        </div>
                                        <div class="frame-texts" style="display: none">
                                            
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /Page Content -->                  
                </main>
                
                <footer class="footer mt-auto pt-5">
                    <xsl:call-template name="html_footer"/>
                </footer>
                
                <script src="js/language.js"/>
                <script src="js/diaries.js"/>
                <script src="js/frame.js"/>                                
            </body>

        </html>       

    </xsl:template>

</xsl:stylesheet>