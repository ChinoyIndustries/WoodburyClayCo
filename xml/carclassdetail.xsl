<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <xsl:for-each select="//class">
      <xsl:result-document href="detail_{@classid}.html">
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
              <h1>Class Detail</h1>
              <table class="center">
                <thead>
                  <tr>
                    <th>Railroad</th>
                    <th>Class</th>
                    <th>Type</th>
                    <th>Description</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <xsl:value-of select="road"/>
                    </td>
                    <td>
                      <xsl:value-of select="classname"/>
                    </td>
                    <td>
                      <xsl:value-of select="cartype"/>
                    </td>
                    <td>
                      <xsl:value-of select="desc" disable-output-escaping="yes"/>
                    </td>
                  </tr>
                </tbody>
              </table>

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
            </div>
            <xsl:comment>#include virtual="/footer.shtml"</xsl:comment>
          </body>
        </html>
      </xsl:result-document>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
