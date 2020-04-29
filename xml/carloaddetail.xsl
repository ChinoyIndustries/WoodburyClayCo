<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <xsl:for-each select="//bills/bill">
      <xsl:result-document href="bill_{@billid}.html">
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
              <h1>Bill No. <xsl:value-of select="string(number(@billid))"/></h1>
              <div id="leftarrowcontainer">
                <xsl:if test="linkprevious != ''">
                  <a>
                    <xsl:attribute name="href">
                    <xsl:value-of select="linkprevious"/>
                    </xsl:attribute>
                    <img src="..\images\nav-arrow.svg" id="leftarrow"/>
                  </a>
                </xsl:if>
              </div>
              <div id="rightarrowcontainer">
                <xsl:if test="linknext != ''">
                  <a>
                    <xsl:attribute name="href">
                    <xsl:value-of select="linknext"/>
                    </xsl:attribute>
                    <img src="..\images\nav-arrow.svg" id="rightarrow"/>
                  </a>
                </xsl:if>
              </div>
              <table id="billdetailtable">
                <thead>
                  <tr>
                    <th>Date</th>
                    <th>Car</th>
                    <th>Class</th>
                    <th>Shipper</th>
                    <th>Consignee</th>
                    <th>Lading</th>
                    <th>Details</th>
                  </tr>
                </thead>
                <tbody>
                  <xsl:for-each select="carload">
                    <tr>
                      <xsl:attribute name="class">
                        <xsl:value-of select="parent::bill/@kind"/>
                      </xsl:attribute>
                      <td>
                        <xsl:value-of select="date"/>
                      </td>
                      <td>
                        <xsl:value-of select="car" disable-output-escaping="yes"/>
                      </td>
                      <td>
                        <xsl:value-of select="class"/>
                      </td>
                      <td>
                        <xsl:value-of select="shipper"/>
                      </td>
                      <td>
                        <xsl:value-of select="consignee"/>
                      </td>
                      <td>
                        <xsl:value-of select="freight"/>
                      </td>
                      <td>
                        <xsl:value-of select="desc" disable-output-escaping="yes"/>
                      </td>
                    </tr>
                  </xsl:for-each>
                </tbody>
              </table>
              <xsl:for-each select="imgref">
                <img width="1000" alt="Freight Bill" title="Freight Bill" class="billimg">
                  <xsl:attribute name="src">
                    <xsl:value-of select="self::imgref"/>
                  </xsl:attribute>
                </img>
              </xsl:for-each>
            </div>
            <xsl:comment>#include virtual="/footer.shtml"</xsl:comment>
          </body>
        </html>
      </xsl:result-document>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
