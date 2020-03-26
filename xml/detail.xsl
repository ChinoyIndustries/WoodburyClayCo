<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="2.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <xsl:for-each select="/company/bills/bill">
      <xsl:result-document href="detail_{@billid}.html">
        <html>
        <head>
          <title>The Woodbury Clay Co Project.</title>
          <meta name="author" content="C. R. Chinoy" />
          <meta name="viewport" content="width=device-width, initial-scale=1.0" />
          <link rel="stylesheet" type="text/css" href="../css/index.css"/>
      </head>
      <body>
        <xsl:comment>#include file="..\header.shtml"</xsl:comment>
        <div id="content">
            <h1>Bill Detail</h1>
        <table class="center">
          <thead>
          <tr>
            <th>Date</th>
            <th>Car</th>
            <th>Class</th>
            <th>Shipper</th>
            <th>Consignee</th>
            <th>Freight</th>
            <th>Details</th>
          </tr>
          </thead>
          <tbody>
            <xsl:for-each select="carload">
              <tr>
            <td>
              <xsl:value-of select="date"/>
            </td>
            <td>
              <xsl:value-of select="car/road"/>
              <xsl:text> </xsl:text>
              <xsl:value-of select="car/carnum"/>
            </td>
            <td>
              <xsl:value-of select="car/class"/>
            </td>
            <td>
              <xsl:value-of select="shipper"/>
            </td>
            <td>
              <xsl:value-of select="consignee"/>
            </td>
            <td>
              <xsl:value-of select="lading"/>
            </td>
            <td>
              <xsl:value-of select="desc" disable-output-escaping="yes"/>
            </td>
          </tr>
            </xsl:for-each>
          </tbody>
        </table>
          
        <img width="1000" alt="Freight Bill" title="Freight Bill" class="billimg">
          <xsl:attribute name="src">
            <xsl:value-of select="imgref"/>
          </xsl:attribute>
        </img>
        </div>
        <xsl:comment>#include file="..\footer.shtml"</xsl:comment>
      </body>
    </html>    
    </xsl:result-document>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
