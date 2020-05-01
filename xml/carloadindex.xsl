<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>The Woodbury Clay Co Project.</title>
        <meta name="author" content="C. R. Chinoy"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" type="text/css" href="css/index.css"/>
        <script src="js/carloadtable.js"/>
        <script src="https://www.gstatic.com/charts/loader.js"/>
        <script src="js/sankey.js"/>
        <link rel="icon" type="image/png" href="images/wcc-32.png" sizes="32x32"/>
        <link rel="icon" type="image/png" href="images/wcc-16.png" sizes="16x16"/>
      </head>
      <body>
        <xsl:comment>#include file="header.shtml"</xsl:comment>
        <div id="content">
          <h1>List of Shipments</h1>
          <div class="textcontent">
            <p> Below is the full breakdown of the 144 freight cars recorded arriving at or
              departing from Oreminea in our sample of freight bills that survived. Being located in
              the heart of PRR territory, just off the original main line from Harrisburg to
              Pittsburgh, the overwhelming majority of traffic to and from the Woodbury Clay Co.
              traveled in <a href="http://railroad.newtfire.local/glossary.html">home road</a> cars,
              with only a handful of foreign cars passing through to deliver cargo that originated
              outside the PRR system. Even some shipments from foreign roads, though, were
              transloaded from foreign cars into PRR cars at Pittsburgh or Altoona before arriving
              in Oreminea. Nine different varieties of PRR freight car, mostly boxcars, were seen at
              Oreminea. Outbound fire clay traveled almost entirely in boxcars, although a handful
              of hoppers and gondolas were occasionally delivered to the W.C.C. for clay
              loading.</p>
            <p>33 inbound shipments of supplies and equipment for the W.C.C. are recorded, with the
              remaining 111 carloads being outbound loads of clay. Of these, 17 were ordered by the
                <a href="companies/thomas-sant.html">Thomas H. Sant &amp; Sons Co.</a>, a brokerage
              firm who marketed high-grade white clays from various mines around the eastern U.S. to
              customers in the porcelain and ceramic industries. The
              W.C.C. itself mainly shipped to customers in the refractory brick and steel
              industries. (Steel mills often manufactures their own refractory shapes for their
              furnaces on-site, and several of the refractory plants to which the W.C.C. shipper
              were directly adjacent to major steel mills.) Inbound supplies to Oreminea included
              various supplies and machinery for the W.C.C. clay mines themselves, including <a
                href="carloadtable/bill_032.html">a new mining shovel</a> and <a
                href="carloadtable/bill_002.html">a narrow-gauge diesel locomotive</a>, as well as
              heating coal and a variety of dry goods, foodstuffs, clothing and other essentials to
              supply the miners and townspeople of Oreminea.</p>
          </div>
          <div id="chart_div_sankey"/>
          <div class="textcontent">
            <p>Below are all 144 carloads recorded from the Woodbury Clay Co. in order. Click on a
              car to view the bills and receipts associated with it. Some inbound freight bills have
              one or more PRR or Railway Express receipts pinned to them, so make sure to scroll all
              the way down on each bill you view!</p>
          </div>
          <div id="carloadtable_form">
            <form>
              <input type="radio" value="all" name="railroad" id="shipmentsAll" checked="checked"/>
              <label for="shipmentsAll">View All Shipments</label>
              <input type="radio" value="PRR" name="railroad" id="shipmentsOut"/>
              <label for="shipmentsOut">View Outbound Shipments</label>
              <input type="radio" value="foreign" name="railroad" id="shipmentsIn"/>
              <label for="shipmentsIn">View Inbound Shipments</label>
            </form>
          </div>
          <table id="carloadtable" border="0">
            <thead>
              <tr>
                <th>Date</th>
                <th colspan="2">Car</th>
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
                    <xsl:if test="class != ''">
                      <a>
                        <xsl:attribute name="href">
                          <xsl:text>./carloadtable/bill_</xsl:text>
                          <xsl:value-of select="parent::bill/@billid"/>
                          <xsl:text>.html</xsl:text>
                        </xsl:attribute>
                        <img class="gif">
                          <xsl:attribute name="title">
                            <xsl:value-of select="gifref/@alt"/>
                          </xsl:attribute>
                          <xsl:attribute name="alt">
                            <xsl:value-of select="gifref/@alt"/>
                          </xsl:attribute>
                          <xsl:attribute name="src">
                            <xsl:value-of select="gifref"/>
                          </xsl:attribute>
                        </img>
                      </a>
                    </xsl:if>
                  </td>
                  <td>
                    <a>
                      <xsl:attribute name="href">
                        <xsl:text>./carloadtable/bill_</xsl:text>
                        <xsl:value-of select="parent::bill/@billid"/>
                        <xsl:text>.html</xsl:text>
                      </xsl:attribute>
                      <xsl:value-of select="car" disable-output-escaping="yes"/>
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
