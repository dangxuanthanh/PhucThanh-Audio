<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="san-pham mg-section">
            <div class="container">
                <h2 class="mg-title"><xsl:value-of select="/ZoneList/Title"></xsl:value-of></h2>
                <div class="zone-list">
                    <div class="row">
                       <xsl:apply-templates select="/ZoneList/Zone[IsActive='true']/Zone"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Zone">
         <div class="col-sm-6 col-lg-4 item">
            <div class="zone-item">
                <figure>
                    <div class="image">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </a>
                    </div>
                    <figcaption>
                        <h5>
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:value-of select="Title"></xsl:value-of>
                            </a>
                            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                        </h5>
                    </figcaption>
                </figure>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>