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
            <link rel="icon" type="image/png" href="../images/wcc-32.png" sizes="32x32"/>
            <link rel="icon" type="image/png" href="../images/wcc-16.png" sizes="16x16"/>
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
              <div id="carcountdisplay">
                <h2>
                <img class="gif">
                  <xsl:attribute name="title">
                    <xsl:value-of select="imgrefs/imgref[@class = 'gif']/@alt"/>
                  </xsl:attribute>
                  <xsl:attribute name="alt">
                    <xsl:value-of select="imgrefs/imgref[@class = 'gif']/@alt"/>
                  </xsl:attribute>
                  <xsl:attribute name="src">
                    <xsl:value-of select="imgrefs/imgref[@class = 'gif']"/>
                  </xsl:attribute>
                </img>
                <xsl:text> </xsl:text>
                <xsl:value-of select="shipcount"/>
                <xsl:if test="shipcount > 1">
                  <xsl:text> Cars</xsl:text>
                </xsl:if>
                <xsl:if test="shipcount = 1">
                  <xsl:text> Car</xsl:text>
                </xsl:if>
              </h2></div>
              <div class="textcontent"><xsl:value-of select="desc" disable-output-escaping="yes"/></div>
              <xsl:if test="count(imgrefs/imgref[@class = 'display']) > 0">
                <xsl:for-each select="imgrefs/imgref[@class = 'display']">
                  <img class="display">
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
              <xsl:if test="count(reflist/ref) > 0">
                <hr/>
                <h4>References and Further Reading</h4>
                <div id="reflist">
                  <ol>
                    <xsl:for-each select="./reflist/ref">
                      <li>
                        <a>
                          <xsl:attribute name="href">
                            <xsl:value-of select="."/>
                          </xsl:attribute>
                          <xsl:attribute name="target">_blank</xsl:attribute>
                          <xsl:value-of select="."/>
                        </a>
                      </li>
                    </xsl:for-each>
                  </ol>
                </div>
              </xsl:if>
            </div>
            <xsl:comment>#include virtual="/footer.shtml"</xsl:comment>
          </body>
        </html>
      </xsl:result-document>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
