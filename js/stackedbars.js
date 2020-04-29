google.charts.load('current', {packages: ['corechart']});
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
var data = google.visualization.arrayToDataTable([
        ['Year', 'XL', 'X23', 'X25', 'X26', 'X28a', 'X29', { role: 'annotation' } ],
        ['1931', 13, 2, 2, 7, 0, 4, ''],
        ['1933', 35, 7, 7, 5, 0, 20, ''],
        ['1937', 1, 0, 2, 1, 2, 10, '']
]);

var options_fullStacked = {
  title: 'PRR Boxcar Fleet Representation by Class by Year',
  isStacked: 'percent',
  height: 400,
  width: 600,
  legend: {position: 'top', maxLines: 3},
  vAxis: {
    minValue: 0,
    ticks: [0, .25, .5, .75, 1]
  }
};

 var chart_fullStacked = new google.visualization.ColumnChart(
    document.getElementById('chart_div_stacked'));
chart_fullStacked.draw(data, options_fullStacked);
}