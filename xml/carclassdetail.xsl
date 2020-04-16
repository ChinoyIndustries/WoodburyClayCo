<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <xsl:for-each select="//class">
      <xsl:result-document href="{pagename}.html">
        <html>
          <head>
            <title>The Woodbury Clay Co Project.</title>
            <meta name="author" content="C. R. Chinoy"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <link rel="stylesheet" type="text/css" href="../css/index.css"/>
          </head>
          <body>
            <xsl:comment>#include virtual="/header.shtml"</xsl:comment>
            <div id="content">
              <h1><xsl:value-of select="road"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="classname"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="cartype"/>
              </h1>
              <h2><xsl:value-of select="shipcount"/>
                <xsl:if test="shipcount > 1">
                  <xsl:text> Cars</xsl:text>
                </xsl:if>
                <xsl:if test="shipcount = 1">
                  <xsl:text> Car</xsl:text>
                </xsl:if>
              </h2>
              <p><xsl:value-of select="desc" disable-output-escaping="yes"/></p>
              <xsl:if test="count(imgrefs/imgref) > 0">
                <xsl:for-each select="imgrefs/imgref">
                  <img width="1000" class="billimg">
                  <xsl:attribute name="src">
                    <xsl:value-of select="self::imgref"/>
                  </xsl:attribute>
                  <xsl:attribute name="alt">
                    <xsl:value-of select="self::imgref/@alt"/>
                  </xsl:attribute>
                  <xsl:attribute name="title">
                    <xsl:value-of select="self::imgref/@alt"/>
                  </xsl:attribute>
                  </img>
                </xsl:for-each>
              </xsl:if>
            </div>
            <xsl:comment>#include virtual="/footer.shtml"</xsl:comment>
          </body>
        </html>
      </xsl:result-document>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
