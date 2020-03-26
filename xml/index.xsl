<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>The Woodbury Clay Co Project.</title>
        <meta name="author" content="C. R. Chinoy" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" type="text/css" href="css/index.css"/>
      </head>
      <body>
        <!--fix your SSI with an #include file="header.shtml" -->
        <div id="header">THE WOODBURY CLAY CO. PROJECT</div>
        <div id="menu"><a href="index.html">Home</a> | <a href="about.html">About the Project</a> | 
          <a href="background.html">Background</a> | <a href="carloadtable.html">List of Carloads</a></div>
        <hr/>
        <div id="content">
        <h1>List of Shipments</h1>
        <p>These are just a few test pieces of data to show that this works. The rest will go up once I fix some things.</p>
        <table class="center">
          <thead>
          <tr>
            <th>Date</th>
            <th>Car</th>
            <th>Class</th>
            <th>Shipper</th>
            <th>Consignee</th>
            <th>Freight</th>
            <th></th>
          </tr>
          </thead>
          <tbody>
          <xsl:for-each select="/company/bills/bill/carload">
            <xsl:sort select="date"/>
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
                <a>
                  <xsl:attribute name="href">
                    <xsl:text>./carloadtable/detail_</xsl:text>
                    <xsl:value-of select="parent::bill/@billid"/>
                    <xsl:text>.html</xsl:text>
                  </xsl:attribute>
                  Detail
                </a>
              </td>
            </tr>
          </xsl:for-each>
          </tbody>
        </table>
        </div>
      </body>
    </html>    
    
  </xsl:template>
</xsl:stylesheet>
