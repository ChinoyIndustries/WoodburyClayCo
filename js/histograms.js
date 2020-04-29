google.charts.load("current", {packages:["corechart"]});
  google.charts.setOnLoadCallback(drawChart_DISTANCE);
  google.charts.setOnLoadCallback(drawChart_CARLOADS);
  google.charts.setOnLoadCallback(drawChart_WEIGHTED);

function drawChart_DISTANCE() {
var data_DISTANCE = google.visualization.arrayToDataTable([
    ['Company', 'Distance'],
    ['Bittner, Hunsicker & Co. (Allentown, PA)', 192.68],
    ['Fate-Root-Heath Co. (Plymouth Locomotive Works) (Plymouth, OH)', 308.48],
    ['Comly-Flanigan & Co. (Philadelphia, PA)', 217.33],
    ['Lippincott & Co. (Altoona, PA)', 12.76],
    ['Reeves, Parvin & Co. (Philadelphia, PA)', 241.36],
    ['Dean Coal Co. Fruhlinger Colliery No. 1 (Dean, PA)', 19.84],
    ['Dean Coal Co. Unknown (Coalport, PA)', 31.29],
    ['Western Wheeled Scraper Co. (Aurora, IL)', 700.44],
    ['Penna. Coal & Coke Co. Penna. Coll. No. 10 (Ehrenfeld, PA)', 36.91],
    ['Butler Bros. Co. (Jersey City, NJ)', 292.25],
    ['Atlas Powder Co. (Horrell, PA)', 4.19],
    ['Daniel Miller Co. (Baltimore, MD)', 137.93],
    ['Gorman-Rupp Co. (Mansfield, OH)', 297.23],
    ['Penn General Supply Co. (Pittsburgh, PA)', 121.43],
    ['Thew Shovel Co./Universal Crane Co. (Lorain, OH)', 279.54],
    ['American Fork & Hoe Co. Skelton Shovel Works (Dunkirk, NY)', 161.63],
    ['Frick-Reid Supply Corp. (Pittsburgh, PA)', 121.33],
    ['M.B.& A.H. Christy (Trenton, NJ)', 241.36],
    ['Burton-Dixie Corp. (Brooklyn, NY)', 295.93],
    ['Mishawaka Rubber & Woolen Mfg. Co. (Mishawaka, IN)', 555.99],
    ['Brown Shoe Co. (St. Louis, MO)', 836.25],
    ['A. M. Byers Co. (Economy, PA (Ambridge))', 137.67],
    ['Bethlehem Steel Co. Lackawanna Plant (Lackawanna, NY)', 171.06],
    ['Bethlehem Steel Co. Sparrows Point Plant (Sparrows Point, MD)', 146.83],
    ['Bowers Pottery Co. (Mannington, WV)', 156.60],
    ['Canadian Porcelain Co. (Hamilton, Ontario )', 227.71],
    ['Carnegie-Illinois Steel Co. Mingo Works (Carnegie Steel) (Mingo Junction, OH )', 163.11],
    ['Carnegie-Illinois Steel Co. Edgar Thompson Works (Carnegie Steel) (Bessemer, PA )', 111.21],
    ['Carnegie-Illinois Steel Co. South Works (Illinois Steel) (South Chicago, IL)', 649.10],
    ['General Refractories Co. Sproul (Sproul, PA )', 17.47],
    ['General Refractories Co. Joliet (Joliet, IL )', 685.37],
    ['Harbison-Walker Refractory Co. East Chicago (East Chicago, IL )', 642.73],
    ['Harbison-Walker Refractory Co. Ensley (Ensley, AL )', 767.61],
    ['Harbison-Walker Refractory Co. No. 8 Works (Woodland, PA (Mineral Spring))', 41.30],
    ['Harbison-Walker Refractory Co. Mount Union (Mount Union, PA)', 24.98],
    ['Harbison-Walker Refractory Co. Retort Works (Retort, PA)', 28.36],
    ['Harbison-Walker Refractory Co. Lower Works (Woodland, PA)', 41.67],
    ['Harbison-Walker Refractory Co. Barrett Works (Woodland, PA (Barrett))', 42.47],
    ['Lapp Insulator Co. (Le Roy, NY)', 178.13],
    ['Locke Insulator Co. (Baltimore, MD)', 138.17],
    ['McFeely Brick Co. (Latrobe, PA)', 77.79],
    ['National Tube Co. Lorain Works (Lorain, OH)', 277.34],
    ['North American Refractory Co. (Mount Union, PA)', 25.99],
    ['Smith & Stone, Ltd. (Georgetown, Ontario)', 253.20],
    ['Taylor, Smith & Taylor (Chester, WV)', 160.47],
    ['United Clay Mines Corp. (Trenton, NJ)', 240.76],
    ['Victor Insulators, Inc. (Victor, NY)', 186.98],
    ['Wheeling Steel Corp. Benwood Works (Benwood, WV)', 174.30],
    ['Youngstown Sheet & Tube Co. Campbell Works Converting Mills (Youngstown, OH)', 169.22]
  ]);

var options_DISTANCE = {
  title: 'Customers/Suppliers by Distance from Oreminea',
  legend: { position: 'none' },
  colors: ['#752b1b'],
  histogram: {
    bucketSize: 100,
    maxNumBuckets: 8,
    minValue: 0,
    maxValue: 900
  },
  hAxis: { title: 'Miles' }, 
  vAxis: { title: 'Count' } 
};

var chart = new google.visualization.Histogram(document.getElementById('chart_div_miles'));
chart.draw(data_DISTANCE, options_DISTANCE);
}

function drawChart_CARLOADS() {
var data_CARLOADS = google.visualization.arrayToDataTable([
    ['Company', 'Carloads'],
    ['Bittner, Hunsicker & Co. (Allentown, PA, 1 car)', 1],
    ['Fate-Root-Heath Co. (Plymouth Locomotive Works) (Plymouth, OH, 1 car)', 1],
    ['Comly-Flanigan & Co. (Philadelphia, PA, 1 car)', 1],
    ['Lippincott & Co. (Altoona, PA, 1 car)', 1],
    ['Reeves, Parvin & Co. (Philadelphia, PA, 1 car)', 1],
    ['Dean Coal Co. Fruhlinger Colliery No. 1 (Dean, PA, 2 cars)', 2],
    ['Dean Coal Co. Unknown (Coalport, PA, 1 car)', 1],
    ['Western Wheeled Scraper Co. (Aurora, IL, 1 car)', 1],
    ['Penna. Coal & Coke Co. Penna. Coll. No. 10 (Ehrenfeld, PA, 1 car)', 1],
    ['Butler Bros. Co. (Jersey City, NJ, 3 cars)', 3],
    ['Atlas Powder Co. (Horrell, PA, 1 car)', 1],
    ['Daniel Miller Co. (Baltimore, MD, 2 cars)', 2],
    ['Gorman-Rupp Co. (Mansfield, OH, 2 cars)', 2],
    ['Penn General Supply Co. (Pittsburgh, PA, 2 cars)', 2],
    ['Thew Shovel Co./Universal Crane Co. (Lorain, OH, 5 cars)', 5],
    ['American Fork & Hoe Co. Skelton Shovel Works (Dunkirk, NY, 1 car)', 1],
    ['Frick-Reid Supply Corp. (Pittsburgh, PA, 2 cars)', 2],
    ['M.B.& A.H. Christy (Trenton, NJ, 1 car)', 1],
    ['Burton-Dixie Corp. (Brooklyn, NY, 1 car)', 1],
    ['Mishawaka Rubber & Woolen Mfg. Co. (Mishawaka, IN, 1 car)', 1],
    ['Brown Shoe Co. (St. Louis, MO, 2 cars)', 2],
    ['A. M. Byers Co. (Economy, PA (Ambridge), 1 car)', 1],
    ['Bethlehem Steel Co. Lackawanna Plant (Lackawanna, NY, 2 cars)', 2],
    ['Bethlehem Steel Co. Sparrows Point Plant (Sparrows Point, MD, 4 cars)', 4],
    ['Bowers Pottery Co. (Mannington, WV, 2 cars)', 2],
    ['Canadian Porcelain Co. (Hamilton, Ontario , 1 car)', 1],
    ['Carnegie-Illinois Steel Co. Mingo Works (Carnegie Steel) (Mingo Junction, OH , 5 cars)', 5],
    ['Carnegie-Illinois Steel Co. Edgar Thompson Works (Carnegie Steel) (Bessemer, PA , 2 cars)', 2],
    ['Carnegie-Illinois Steel Co. South Works (Illinois Steel) (South Chicago, IL, 1 car)', 1],
    ['General Refractories Co. Sproul (Sproul, PA , 3 cars)', 3],
    ['General Refractories Co. Joliet (Joliet, IL , 2 cars)', 2],
    ['Harbison-Walker Refractory Co. East Chicago (East Chicago, IL , 1 car)', 1],
    ['Harbison-Walker Refractory Co. Ensley (Ensley, AL , 1 car)', 1],
    ['Harbison-Walker Refractory Co. No. 8 Works (Woodland, PA (Mineral Spring), 10 cars)', 10],
    ['Harbison-Walker Refractory Co. Mount Union (Mount Union, PA, 8 cars)', 8],
    ['Harbison-Walker Refractory Co. Retort Works (Retort, PA, 19 cars)', 19],
    ['Harbison-Walker Refractory Co. Lower Works (Woodland, PA, 4 cars)', 4],
    ['Harbison-Walker Refractory Co. Barrett Works (Woodland, PA (Barrett), 14 cars)', 14],
    ['Lapp Insulator Co. (Le Roy, NY, 1 car)', 1],
    ['Locke Insulator Co. (Baltimore, MD, 7 cars)', 7],
    ['McFeely Brick Co. (Latrobe, PA, 2 cars)', 2],
    ['National Tube Co. Lorain Works (Lorain, OH, 3 cars)', 3],
    ['North American Refractory Co. (Mount Union, PA, 7 cars)', 7],
    ['Smith & Stone, Ltd. (Georgetown, Ontario, 2 cars)', 2],
    ['Taylor, Smith & Taylor (Chester, WV, 2 cars)', 2],
    ['United Clay Mines Corp. (Trenton, NJ, 1 car)', 1],
    ['Victor Insulators, Inc. (Victor, NY, 1 car)', 1],
    ['Wheeling Steel Corp. Benwood Works (Benwood, WV, 1 car)', 1],
    ['Youngstown Sheet & Tube Co. Campbell Works Converting Mills (Youngstown, OH, 3 cars)', 3]
  ]);

var options_CARLOADS = {
  title: 'Customers/Suppliers by No. of Carloads',
  legend: { position: 'none' },
  colors: ['#752b1b'],
  histogram: {
    bucketSize: 2,
    maxNumBuckets: 10,
    minValue: 1,
    maxValue: 20
  },
  hAxis: { title: 'Cars Shipped' }, 
  vAxis: { title: 'Count' } 
};

var chart = new google.visualization.Histogram(document.getElementById('chart_div_cars'));
chart.draw(data_CARLOADS, options_CARLOADS);
}

function drawChart_WEIGHTED() {
var data_WEIGHTED = google.visualization.arrayToDataTable([
    ['Company', 'Total Car-Miles'],
    ['Bittner, Hunsicker & Co. (Allentown, PA, 1 car)', 192.68],
    ['Fate-Root-Heath Co. (Plymouth Locomotive Works) (Plymouth, OH, 1 car)', 308.48],
    ['Comly-Flanigan & Co. (Philadelphia, PA, 1 car)', 217.33],
    ['Lippincott & Co. (Altoona, PA, 1 car)', 12.76],
    ['Reeves, Parvin & Co. (Philadelphia, PA, 1 car)', 241.36],
    ['Dean Coal Co. Fruhlinger Colliery No. 1 (Dean, PA, 2 cars)', 39.68],
    ['Dean Coal Co. Unknown (Coalport, PA, 1 car)', 31.29],
    ['Western Wheeled Scraper Co. (Aurora, IL, 1 car)', 700.44],
    ['Penna. Coal & Coke Co. Penna. Coll. No. 10 (Ehrenfeld, PA, 1 car)', 36.91],
    ['Butler Bros. Co. (Jersey City, NJ, 3 cars)', 876.77],
    ['Atlas Powder Co. (Horrell, PA, 1 car)', 4.19],
    ['Daniel Miller Co. (Baltimore, MD, 2 cars)', 275.87],
    ['Gorman-Rupp Co. (Mansfield, OH, 2 cars)', 594.47],
    ['Penn General Supply Co. (Pittsburgh, PA, 2 cars)', 242.86],
    ['Thew Shovel Co./Universal Crane Co. (Lorain, OH, 5 cars)', 1397.71],
    ['American Fork & Hoe Co. Skelton Shovel Works (Dunkirk, NY, 1 car)', 161.63],
    ['Frick-Reid Supply Corp. (Pittsburgh, PA, 2 cars)', 242.67],
    ['M.B.& A.H. Christy (Trenton, NJ, 1 car)', 241.36],
    ['Burton-Dixie Corp. (Brooklyn, NY, 1 car)', 295.93],
    ['Mishawaka Rubber & Woolen Mfg. Co. (Mishawaka, IN, 1 car)', 555.99],
    ['Brown Shoe Co. (St. Louis, MO, 2 cars)', 1672.50],
    ['A. M. Byers Co. (Economy, PA (Ambridge), 1 car)', 137.67],
    ['Bethlehem Steel Co. Lackawanna Plant (Lackawanna, NY, 2 cars)', 342.13],
    ['Bethlehem Steel Co. Sparrows Point Plant (Sparrows Point, MD, 4 cars)', 587.34],
    ['Bowers Pottery Co. (Mannington, WV, 2 cars)', 313.20],
    ['Canadian Porcelain Co. (Hamilton, Ontario , 1 car)', 227.71],
    ['Carnegie-Illinois Steel Co. Mingo Works (Carnegie Steel) (Mingo Junction, OH , 5 cars)', 815.59],
    ['Carnegie-Illinois Steel Co. Edgar Thompson Works (Carnegie Steel) (Bessemer, PA , 2 cars)', 222.42],
    ['Carnegie-Illinois Steel Co. South Works (Illinois Steel) (South Chicago, IL, 1 car)', 649.10],
    ['General Refractories Co. Sproul (Sproul, PA , 3 cars)', 52.41],
    ['General Refractories Co. Joliet (Joliet, IL , 2 cars)', 1370.75],
    ['Harbison-Walker Refractory Co. East Chicago (East Chicago, IL , 1 car)', 642.73],
    ['Harbison-Walker Refractory Co. Ensley (Ensley, AL , 1 car)', 767.61],
    ['Harbison-Walker Refractory Co. No. 8 Works (Woodland, PA (Mineral Spring), 10 cars)', 413.09],
    ['Harbison-Walker Refractory Co. Mount Union (Mount Union, PA, 8 cars)', 199.87],
    ['Harbison-Walker Refractory Co. Retort Works (Retort, PA, 19 cars)', 539.01],
    ['Harbison-Walker Refractory Co. Lower Works (Woodland, PA, 4 cars)', 166.71],
    ['Harbison-Walker Refractory Co. Barrett Works (Woodland, PA (Barrett), 14 cars)', 594.71],
    ['Lapp Insulator Co. (Le Roy, NY, 1 car)', 178.13],
    ['Locke Insulator Co. (Baltimore, MD, 7 cars)', 967.25],
    ['McFeely Brick Co. (Latrobe, PA, 2 cars)', 155.58],
    ['National Tube Co. Lorain Works (Lorain, OH, 3 cars)', 832.02],
    ['North American Refractory Co. (Mount Union, PA, 7 cars)', 181.93],
    ['Smith & Stone, Ltd. (Georgetown, Ontario, 2 cars)', 506.40],
    ['Taylor, Smith & Taylor (Chester, WV, 2 cars)', 320.94],
    ['United Clay Mines Corp. (Trenton, NJ, 1 car)', 240.76],
    ['Victor Insulators, Inc. (Victor, NY, 1 car)', 186.98],
    ['Wheeling Steel Corp. Benwood Works (Benwood, WV, 1 car)', 174.30],
    ['Youngstown Sheet & Tube Co. (Youngstown, OH, 3 cars)', 507.68]
  ]);

var options_WEIGHTED = {
  title: 'Customers/Suppliers by Total Car-Miles',
  legend: { position: 'none' },
  colors: ['#752b1b'],
  histogram: {
    bucketSize: 125,
    maxNumBuckets: 14,
    minValue: 1,
    maxValue: 1600
  },
  hAxis: {
    ticks: [1, 200, 400, 600, 800, 1000, 1200, 1400, 1600]
  },
  hAxis: { title: 'Car-Miles' }, 
  vAxis: { title: 'Count' } 
};

var chart = new google.visualization.Histogram(document.getElementById('chart_div_car-miles'));
chart.draw(data_WEIGHTED, options_WEIGHTED);
}