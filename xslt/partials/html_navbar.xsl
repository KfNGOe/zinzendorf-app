<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xsl tei xs" version="2.0">
    <xsl:template match="/" name="nav_bar">
        
        <div class="container" id="headnav">
            <div class="row">
                 <div class="titelgrafik" style="align-items: baseline; display: flex; flex:0 0 auto; width: 50%;">
                    <a href="https://oesterreichische-geschichte.at/" target="_blank" style="flex: 0 0 25%;display: flex; max-width: 50%!important; justify-content: center;">
                        <img style=" max-width: 100% !important;max-height: 100% !important;margin: 0;" src="dist/assets/images/mockup/logo-kommission-neuere-geschichte-oesterreichs.svg" title="Kommission für neue Geschichte Österreichs" alt="Kommission für neue Geschichte Österreichs"
                        />
                    </a>
                    <hr />
                    <a href="./" style="flex: 0 0 50%;display: flex; justify-content: center;">
                        <img style=" max-width: 100% !important;max-height: 100% !important;margin: 0;" src="dist/assets/images/mockup/schriftzug_de.png" title="Edition der Tagebücher Karl Grafen Zinzendorfs" />
                    </a>
                    <hr />
                </div>
                <div class="col-lg-6 pr-0" id="titelmenu">
                    <div class="col-lg-12 langmenu">
                        <!-- <a class="active" href="#0" lang="de">DE</a> / <a href="#0" lang="en">EN</a> -->
                    </div>
                    <nav class="navbar navbar-expand-lg navbar-light bg-light static-top flex-column ml-5">
                        <div class="container">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarResponsive">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="index.html">                                            
                                            <span class="de">Start</span>
                                            <span class="en"></span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="diaries.html">                                            
                                            <span class="de">Tagebücher</span>
                                            <span class="en"></span>
                                        </a>
                                    </li>
                                     
                                    <li class="nav-item">
                                        <a class="nav-link" href="search.html">                                            
                                            <span class="de"></span>
                                            <span class="en"></span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="register.html">                                            
                                            <span class="de"></span>
                                            <span class="en"></span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="map.html">                                            
                                            <span class="de"></span>
                                            <span class="en"></span>
                                        </a>
                                    </li>                                    
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        
    </xsl:template>
</xsl:stylesheet>