<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>The Woodbury Clay Co Project.</title>
        <meta name="author" content="C. R. Chinoy" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" type="text/css" href="css/index.css"/>
        <script src="js/carloadtable.js"></script>
      </head>
      <body>
        <xsl:comment>#include file="header.shtml"</xsl:comment>
        <div id="content">
        <h1>List of Shipments</h1>
          <p>If this table displays correctly, please celebrate.</p>
          <p>Click on a car to view the freight bills and receipts for that shipment!</p>
          <form>
            <input type="radio" value="all" name="railroad" id="shipmentsAll" checked="checked"/> <label for="shipmentsAll">View All Shipments</label>
            <input type="radio" value="PRR" name="railroad" id="shipmentsOut"/> <label for="shipmentsOut">View Outbound Shipments</label>
            <input type="radio" value="foreign" name="railroad" id="shipmentsIn"/> <label for="shipmentsIn">View Inbound Shipments</label>
          </form>
        <table class="center" id="carloadtable">
          <thead>
          <tr>
            <th>Date</th>
            <th>Car</th>
            <th>Class</th>
            <th>From</th>
            <th>To</th>
            <th>Lading</th>
          </tr>
          </thead>
          <tbody>
          <xsl:for-each select="//carload">
            <xsl:sort select="date"/>
            <tr>
              <xsl:attribute name="class">
                <xsl:value-of select="parent::bill/@kind"/>
              </xsl:attribute>
              <td>
                <xsl:value-of select="date"/>
              </td>
              <td>
                <a>
                  <xsl:attribute name="href">
                    <xsl:text>./carloadtable/bill_</xsl:text>
                    <xsl:value-of select="parent::bill/@billid"/>
                    <xsl:text>.html</xsl:text>
                  </xsl:attribute>
                  <xsl:value-of select="car" disable-output-escaping='yes'/>
                </a>
              </td>
              <td>
                <a>
                  <xsl:attribute name="href">
                    <xsl:text>./freightcars/</xsl:text>
                    <xsl:value-of select="classLink"/>
                  </xsl:attribute>
                  <xsl:value-of select="class"/>
                </a>
              </td>
              <td>
                <a>
                  <xsl:if test="shipper != 'Woodbury Clay Co.'">
                    <xsl:attribute name="href">
                    <xsl:text>./companies/</xsl:text>
                    <xsl:value-of select="shipLink"/>
                  </xsl:attribute>
                  <xsl:value-of select="shipper"/>
                  </xsl:if>
                  <xsl:if test="shipper = 'Woodbury Clay Co.'">
                    <xsl:text>Woodbury Clay Co.</xsl:text>
                  </xsl:if>
                </a>
              </td>
              <td>
                <a>
                  <xsl:if test="consignee != 'Woodbury Clay Co.'">
                    <xsl:attribute name="href">
                      <xsl:text>./companies/</xsl:text>
                      <xsl:value-of select="consLink"/>
                    </xsl:attribute>
                    <xsl:value-of select="consignee"/>
                  </xsl:if>
                  <xsl:if test="consignee = 'Woodbury Clay Co.'">
                    <xsl:text>Woodbury Clay Co.</xsl:text>
                  </xsl:if>
                </a>
              </td>
              <td>
                <xsl:value-of select="freight"/>
              </td>
            </tr>
          </xsl:for-each>
          </tbody>
        </table>
        </div>
        <xsl:comment>#include file="footer.shtml"</xsl:comment>
      </body>
    </html>   
  </xsl:template>
</xsl:stylesheet>
