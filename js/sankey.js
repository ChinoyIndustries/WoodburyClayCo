google.charts.load('current', {'packages':['sankey']});
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
  var data = new google.visualization.DataTable();
  data.addColumn('string', 'From');
  data.addColumn('string', 'To');
  data.addColumn('number', 'Weight');
  data.addRows([
 ['144 Cars to and from Oreminea', 'PRR', 132 ],
 ['144 Cars to and from Oreminea', 'Foreign', 6],
 ['144 Cars to and from Oreminea', 'Unknown', 6],
 [ 'PRR', 'F30', 1 ],
 [ 'PRR', 'GLa/GLc', 7 ],
 [ 'PRR', 'GS/GSd', 3 ],
 [ 'PRR', 'XL', 51 ],
 [ 'PRR', 'X23', 9 ],
 [ 'PRR', 'X25', 12 ],
 [ 'PRR', 'X26', 13 ],
 [ 'PRR', 'X28a', 2 ],
 [ 'PRR', 'X29', 34 ],
 [ 'GLa/GLc', 'Outbound Fireclay', 3 ],
 [ 'GS/GSd', 'Outbound Fireclay', 3 ],
 [ 'XL', 'Outbound Fireclay', 48 ],
 [ 'X23', 'Outbound Fireclay', 9 ],
 [ 'X25', 'Outbound Fireclay', 10 ],
 [ 'X26', 'Outbound Fireclay', 12 ],
 [ 'X28a', 'Outbound Fireclay', 2 ],
 [ 'X29', 'Outbound Fireclay', 24 ],
 [ 'Outbound Fireclay', 'W.C.C.', 91 ],
 [ 'Outbound Fireclay', 'Thos. H. Sant & Sons Co.', 17 ],
 [ 'Outbound Fireclay', 'Other', 3 ],
 [ 'F30', 'Inbound Supplies', 1 ],
 [ 'GLa/GLc', 'Inbound Supplies', 4 ],
 [ 'XL', 'Inbound Supplies', 3 ],
 [ 'X25', 'Inbound Supplies', 2 ],
 [ 'X26', 'Inbound Supplies', 1 ],
 [ 'X29', 'Inbound Supplies', 10 ],
 [ 'Foreign', 'Inbound Supplies', 6 ],
 [ 'Unknown', 'Inbound Supplies', 6 ],
 [ 'W.C.C.', 'Refractories', 70 ],
 [ 'W.C.C.', 'Steel Mills', 19 ],
 [ 'W.C.C.', 'Other Clay Mining Cos.', 2 ],
 [ 'Thos. H. Sant & Sons Co.', 'Refractories', 1 ],
 [ 'Thos. H. Sant & Sons Co.', 'Porcelain Insulators', 12 ],
 [ 'Thos. H. Sant & Sons Co.', 'Pottery and Ceramics', 4 ],       
 [ 'Other', 'Steel Mills', 3 ],
 [ 'Inbound Supplies', 'Tools/Industrial Supply', 5 ],
 [ 'Inbound Supplies', 'Explosives', 1 ],
 [ 'Inbound Supplies', 'Wholesale Grocery/Dry Goods', 13 ],
 [ 'Inbound Supplies', 'Coal', 4 ],
 [ 'Inbound Supplies', 'Machinery/Railroad Equipment', 9 ],
 [ 'Inbound Supplies', 'Misc.', 1 ],
 [ 'Refractories', 'Harbison-Walker Co.', 57 ],
 [ 'Refractories', 'Other Refractories', 14 ]
  ]);

  // Sets chart options.
  var options = {
    width: 1000,
    height: 450
  };

  // Instantiates and draws our chart, passing in some options.
  var chart = new google.visualization.Sankey(document.getElementById('chart_div_sankey'));
  chart.draw(data, options);
}