<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <xsl:for-each select="//company">
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
              <h1>
                <xsl:value-of select="name"/>
              </h1>
              <p>
                <xsl:value-of select="desc"/>
              </p>
              <xsl:for-each select="./plant">
                <hr/>
                <h2>
                  <xsl:value-of select="plantname"/>
                </h2>
                <h3>
                  <i>
                    <xsl:value-of select="city"/>
                  </i>
                </h3>
                <p>
                  <xsl:value-of select="desc"/>
                </p>
              </xsl:for-each>
              <hr/>
              <h4>References and Further Reading</h4>
              <p>
                <i>(Raw URL's, because spoiler alert: I haven't decided how to display these
                  yet! Holy crap, this is a CSS failure. Please fix this immediately.)</i>
              </p>
              <xsl:if test="reflist != ''">
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
              </xsl:if>
              <!-- imgref-for-when-you-need-it
                <xsl:if test="imgref != ''">
                <img width="1000" class="billimg">
                  <xsl:attribute name="src">
                    <xsl:value-of select="imgref"/>
                  </xsl:attribute>
                  <xsl:attribute name="alt">
                    <xsl:value-of select="imgref/@alt"/>
                  </xsl:attribute>
                  <xsl:attribute name="title">
                    <xsl:value-of select="imgref/@alt"/>
                  </xsl:attribute>
                </img>
              </xsl:if>
              -->
            </div>
            <xsl:comment>#include virtual="/footer.shtml"</xsl:comment>
          </body>
        </html>
      </xsl:result-document>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
