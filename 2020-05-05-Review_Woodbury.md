## Woodbury Clay Project Review

* Site publication: <http://woodbury.newtfire.org>
* GitHub: <https://github.com/ChinoyIndustries/WoodburyClayCo>
* Developer: Connor Chinoy
* Date of Evaluation: 2020-05-03
* Evaluated by:  @BMT45 @ebeshero


### General  
We find this project pretty impressive! You tackled a challenge to make very scarce information easily accessible and searchable, so you have created a significant new data resource for scholars and enthusiasts. Since the source data is limited to rare documents and falls under a niche subject, it's hard for the every-day history enthusiast to find the information on their own, but you were able to provide the website visitor who is interested in old time railroad industrial work a place to expand their knowledge on the subject. Congratulations on this launch!  

We especially like that you added a glossary of old railroad terms for people who do not know as much as you do on the topic. This helps the user's experience greatly and makes this an educational resource. Each of your tables on the list of shipments graphs are easy to view and read allowing to see the date, the car , class , from. to. and the lading which is what these cars were carrying. We also like the JS that gives the user the option to shift between outbound and inbound shipments.

### Research questions

The research questions along with your method were very well documented on your site introduction and easy to understand (and we expect this will be useful for your capstone work in history next year). You are not only presenting an archive of historic photo facsimiles but investigating the business and customers involved in the clay-mining industry centered in Oreminea, and you clearly delineate the scope of your study in time and space. This was especially well written as you indicate this will illuminate details of material exchange significant to daily life of those relying on the clay mining industry. The project site elaborates by sharing infographics about these areas, though these pages sometimes provide placeholder text instead of discussion of the findings.


### Technologies
   
   
#### QGIS

The Leaflet map functions well interactively, and we're pleased to be able to quickly see and dereference the range of connected companies on it. Your explanation of the markers is clear and easy to follow on that page, and it's complemented by a more extensive discussion of your mapping methods on the “About the Project” page. We’re confident you'll figure out how to get the Leaflet output to represent the size of your map markers with some consultation: there seems to have been some promising activity on GitHub's qgis2leaflet plugin here: https://github.com/tomchadwin/qgis2web/issues/687
In the meantime, you could *also* produce a complementary static map of your own with the PNG output that shows this sizing, and perhaps displays abbreviated labels. 

It might make sense to develop for your Leaflet map a timeline animation showing which of these were most active during particular time-spans: You have the data, so this would just be a matter of reading up on the QGIS / Leaflet documentation to implement it. Something easier to implement would be to add a bit more data to the tooltips: your descriptions you're pointing to on the HTML page are short enough that you might as well include them fully on the map. 

You may already be aware of this, but historic railroad data is available for use in QGIS and you should probably be exploring that to see what kinds of data it can add about things like distances traveled, for example, population data for nearby communities, economic data. This is probably a good next step for your continued application of QGIS on the project. Also, you almost certainly do not need to be worrying about copyright issues for georeferencing that 1923 map of railway data that you linked. Here's one (of many) places to start for finding relevant data sets: https://guides.library.duke.edu/gisdata/gisdata_historical Now that you’ve begun orienting yourself to QGIS, we hope you'll continue experimenting with GIS databases as you develop this project. One of the interesting things you're likely to be doing is *connecting* the data you've compiled in your XML database with other historical databases, and that may lead to some interesting findings. 
 
#### SVG
You have relied on image-graphing libraries to generate your Sankey flow diagram and stacked bar plots. We realize the Sankey flow diagram wouldn't be easy to draw on your own with XQuery (or XSLT) , but you could achieve more control over the data display by looking for other implementations such as d3.js, or to see if anyone has developed a plugin for QGIS-Leaflet integration of flow information, like this one: http://bl.ocks.org/yellowcap/03cd4a6c72f661377f7e 

The graph libraries are convenient for when they do things you can’t do yourself without extensive mathematical skilling up, but they also lock you in to canned display features. You could have a little more control over the stacked histogram displays, for example, if you were able to sort the data (that would make it easier to read), and of course you can manage that with XQuery “order by” statement or the XPath sort()function, depending on how you're working. But you can also do more with SVG plots that you create yourself, as in, JS that shows and hides data in the gigantic HTML tables on click of a `<g>` element in the SVG. It is *easy* to use a library but it is not optimal when you have a lot of data to present and the visualization is just made of rectangles and lines (and not arcs and geometrically complicated paths like that Sankey diagram). 

It would be helpful to provide some discussion of the most significant findings we can see about change over time or space. We currently see placeholder text only.The JavaScript to focus on specific portions of the HTML table is helpful, but that table really could be correlated with the SVG, so we again encourage you to integrate the graphs with the table on these pages, making your own SVG so you can do write your own JavaScript to do that. 

#### GitHub
The GitHub repo was well-managed, and gave you a clean way to update your website with version control without changing the directory structure. What is missing are your XQuery files, stored in the NewtFire eXist-db. We strongly encourage you to back up those XQuery files on this GitHub repo, especially since NewtFire may undergo some upgrades (quite likely this summer), and you want to keep your own copies of your query files. Save those with a `.xql` or `.xquery` file extension and download them (or copy and paste them into oXygen, save with `.xql` or `.xquery` for storage). You  may want to migrate those some day as part of the project data.  

###  “UX”: User Experience and Site Interface 
The website is easy to navigate with the navbar containing every subject that can be explored using the website. 

Tables are not always easy to view comprehensively on the site, and we recommend you take some time to compress some of the column widths to make these a little more easy to skim. But that also leads to a point that you may want to continue working on: What about a search form that invites the user to key in a few letters of a name and retrieve the record(s) they wish to see by hiding the others? You could implement this dynamically with the current pages just with JavaScript, and we have a nice simple example in Prof. Triplette's Lope de Vega project on Newtfire here: http://lope.newtfire.org/peopleList.html (That project did not have a very extensive set of records, but yours does, so your project will probably benefit from implementing this.) 

A more extensive and powerful search interface can be implemented with XQuery and PHP on an HTML form: The user enters a string in a form box which is picked up by PHP. PHP then quietly carries that query string to eXist-dB (not exposing the XML database address to the public). eXist-dB then runs an XQuery script and retrieves results formatted in HTML to be returned on that page. It's a little bit of advanced scripting that I (@ebeshero) can work on with you if you like. We have it up and running on a few other newtfire projects, and there is a tutorial on how to implement it on Obdurodon here that @djbpitt wrote up with @ebeshero : https://dh.obdurodon.org/php-xquery.xhtml 

### Closing Comments
Overall, we are very impressed what you were able to accomplish over the semester. You have launched a significant digital site for archiving and investigating the information about Woodbury Clay and depression era Pennsylvania History. 
 
We wonder if you might want to try producing some network graphs in conjunction with that Sankey diagram. Do you have data about exchanges between companies, for example, or about which rail lines were deployed the most for particular connections? Woodbury Clay might be the center of any such network, but that might help to visualize relationships of company nodes, as distinct from seeing the material flowing through the system.  

We especially appreciated the detailed and well-written “About” page documenting your methods so far, and hope to see that same attention to curating the project and discussing the data develop in the discussions of shipping, customers, and freight cars elsewhere on the site. Keep in touch as you are developing this, particularly if you would like to implement some more advanced search interface features on the site discussed above. For the moment, we hope you are pleased with a project well launched! 
