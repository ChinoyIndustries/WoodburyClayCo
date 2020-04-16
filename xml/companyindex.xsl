<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>The Woodbury Clay Co Project.</title>
        <meta name="author" content="C. R. Chinoy"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" type="text/css" href="css/index.css"/>
        <script src="js/companyindex.js"></script>
      </head>
      <body>
        <xsl:comment>#include file="header.shtml"</xsl:comment>
        <div id="content">
          <h1>Shippers and Customers</h1>
          <p>Describe the list of companies that appear in the collection here.</p>
          <form>
            <input type="radio" value="all" name="company" id="companyAll" checked="checked"/> <label for="companyAll">View All Companies</label>
            <input type="radio" value="shipper" name="company" id="companyShipper"/> <label for="companyShipper">View Shippers to W.C.C.</label>
            <input type="radio" value="customer" name="company" id="companyCustomer"/> <label for="companyCustomer">View Customers of W.C.C.</label>
          </form>
          <table id="companytable" class="center">
            <thead>
              <tr>
                <th>Industry</th>
                <th>Company</th>
                <th>Location</th>
                <th>No. of Shipments To/From</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="//companies/company/plants/plant">
                <xsl:sort select="parent::plants/parent::company/name"/>
                <xsl:sort select="plantname"/>
                <xsl:if test="@plantid != '00'">
                  <tr>
                  <xsl:attribute name="class">
                    <xsl:value-of select="parent::plants/parent::company/@kind"/>
                  </xsl:attribute>
                  <td>
                    <xsl:value-of select="parent::plants/parent::company/industry"/>
                  </td>
                  <td>
                    <a>
                      <xsl:attribute name="href">
                        <xsl:text>./companies/</xsl:text>
                        <xsl:value-of select="parent::plants/parent::company/pagename"/>
                        <xsl:text>.html</xsl:text>
                      </xsl:attribute>
                      <xsl:value-of select="parent::plants/parent::company/name"/>
                    </a>
                    <xsl:if test="plantname != ''">
                      <xsl:text>, </xsl:text>
                      <xsl:value-of select="plantname"/>
                    </xsl:if>
                  </td>
                  <td>
                    <xsl:value-of select="city"/>
                  </td>
                  <td>
                    <xsl:value-of select="shipcount"/>
                  </td>
                </tr>
              </xsl:if>
              </xsl:for-each>
            </tbody>
          </table>
        </div>
        <xsl:comment>#include file="footer.shtml"</xsl:comment>
      </body>
    </html>

  </xsl:template>
</xsl:stylesheet>
