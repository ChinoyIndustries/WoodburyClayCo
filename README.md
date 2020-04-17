# WoodburyClayCo
DH project, spring 2020--freight receipts of the Woodbury Clay Co., 1925-1937

So you can see what all is going on around here in the absence of project partners discussing what to do, here's the master plan:
- To build:
  - QGIS map embedded as leaflet? showing locations of all origins/destinations of shipments
    ~~Toggleable outbound shipments, inbound shipments or both~~ done
    - Hover over each point to see total no. of carloads sent there: make this field visible in tooltip!
    ~~Click each point to open company profile~~ done
    - Include the 1923 system map somewhere.
  - Table of Carloads
    ~~Toggleable outbound shipments, inbound shipments or both~~ done
    - Sort by date, car, class, shipper, consignee: suck it up and use jquery
  - Bill pages
    ~~- These should not be for individual carloads, these should be for individual bills, i.e., there shouldn&#39;t be duplicate pages for each carload on one bill that all display the same bill. Add a layer of tags in carloadtable.xml for bills and read bills instead of carloads in the XSL~~ done
    - Move portrait-format images to the righthand side?
    - Add navigation buttons to previous and next bills. 4/17
  - Show All Bills gallery page, still need to figure out. 4/17
  - ~~Index of companies--separate xml--THE GEODATA FOR THE MAP GOES IN HERE~~ done
    ~~add to this table a count of shipments for each company. 4/14~~ done
  - ~~Company profile pages--separate xsl~~ done
    - include section of carloadtable for said company on each company page. 4/17
  - ~~Table of car classes--separate xml~~ done
      ~~add to this table a count of cars that appear for each class. 4/14~~ done
  - ~~Car class pages--separate xsl~~ done
    ~~- Each car class page should contain a link to the table of carloads, sorted by class, scrolled down to that class~~ not doing that, why did I think that was important?
    - include section of carloadtable for said company on each company page. 4/17
    - ~~External links to prr.railfan.net~~ done
    

- Static top-level pages I have to write
  - Background page: Background of the clay industry, the Woodbury Clay Co., and the PRR in that region.
    - Include C.T.1000 scans: 1898 (130) and 1945 (162-164)
  - About this project page, 2 sections:
    - About the documents, where I found them and how I digitized them, C. T. 1000 lookups (link to whoever has digital C. T. 1000&#39;s), and what this site is for and about the DH program
    - Technical side: explain encoding method and automatic generation of pages from xml, ~~link to Guthub~~ done
  ~~Index of PRR Form numbers~~ done
  - others as applicable

- Misc tasks to do:
  - ~~Dump the rest of the data into carloadtable.xml~~ done
  - ~~Gather coordinate data once index of companies exists, find where the Woodbury Clay Co was actually located~~ done
  - Draw gifs for freight car classes
    ~~- Already have stand-in thumbnails in \images, use these for now~~ not doing that
  - ~~Fix SSI header, make SSI footer (credit and license)~~
  - Shrink bill images so they load faster (imagemagick)
  - Pick a better font, seriously
  - Fix CSS abominations
  
- Future Development Ideas
  - Model This Industry
    - Available models of the various boxcars and other cars. Main car class index page is where you can use SVG: graph boxcar classes by percentage by year, this will hopefully show the decline of XL boxcars which were being phased out in these years, as well as the proportions in which the different classes should be represented on a layout
    - More in-depth information on the power shovel and the plymouth locomotive--this is where you want that Plymouth illustration to go. Email AIM for permission to use Plymouth catalog illustration
      - [Image](https://americanindustrialmining.com/plymouth-locomotive-works)
      - [Contact Page](https://americanindustrialmining.com/contact)
  - Do something with the demurrage agreement
