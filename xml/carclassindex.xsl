<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>The Woodbury Clay Co Project.</title>
        <meta name="author" content="C. R. Chinoy"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" type="text/css" href="css/index.css"/>
        <script src="js/carclassindex.js"></script>
      </head>
      <body>
        <xsl:comment>#include file="header.shtml"</xsl:comment>
        <div id="content">
          <h1>Freight Cars by Class</h1>
          <p>By the early 1930s, the Pennsylvania Railroad rostered several dozen different classes
            of boxcars, hoppers, gondolas and other freight equipment. Despite the ongoing
            Depression, the 1930s saw a substantial shift in the equipment rosters of many
            railroads, including the PRR. Large quantities of older wood-sheathed or
            composite-bodied rolling stock from before WWI finally reached retirement age, and new
            all-steel equipment designs rapidly proliferated, becoming more popular and, for the
            first time more standardized in the years that would lead up to WWII. Our snapshot of
            cars that served one particular company illustrates the variety of the PRR's
            transitional boxcar designs of this era, etc etc etc. write more garbage here later.</p>
          <form>
            <input type="radio" value="all" name="railroad" id="railroadAll" checked="checked"/> <label for="railroadAll">View All</label>
            <input type="radio" value="PRR" name="railroad" id="railroadPRR"/> <label for="railroadPRR">View PRR Cars</label>
            <input type="radio" value="foreign" name="railroad" id="railroadForeign"/> <label for="railroadForeign">View Foreign Cars</label>
          </form>
          <table id="classtable" class="center">
            <thead>
              <tr>
                <th>Railroad</th>
                <th>Class</th>
                <th>Type</th>
                <th>No. Featured</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="//freightcars/class">
                <xsl:sort select="road"/>
                <xsl:sort select="classname"/>
                <tr>
                  <xsl:attribute name="class">
                    <xsl:value-of select="road"/>
                  </xsl:attribute>
                  <td>
                    <xsl:value-of select="road"/>
                  </td>
                  <td>
                    <a>
                      <xsl:attribute name="href">
                        <xsl:text>./freightcars/</xsl:text>
                        <xsl:value-of select="pagename"/>
                        <xsl:text>.html</xsl:text>
                      </xsl:attribute>
                      <xsl:value-of select="classname"/>
                    </a>
                  </td>
                  <td>
                    <xsl:value-of select="cartype"/>
                  </td>
                  <td>
                    [n]
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
