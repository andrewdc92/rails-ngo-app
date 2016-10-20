// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require foundation
//= require highcharts/highcharts
//= require highcharts/highcharts-more
//= require highcharts/highstock
//= require chartkick
//= require turbolinks
//= require_tree .


$(document).foundation();

$(function(){ $(document).foundation();
  $('#myModal').foundation('reveal', 'open');
  $('#modal').foundation('reveal', 'close');
 });

// google.charts.load('upcoming', {'packages':['geomap']});
//     google.charts.setOnLoadCallback(drawMap);
//
//       function drawMap() {
//         var data = google.visualization.arrayToDataTable([
//           ['City', 'Popularity']
//         ]);
//
//         var options = {};
//         options['region'] = 'Haiti';
//         options['colors'] = [0xFF8747];
//         options['dataMode'] = 'markers';
//
//         var container = document.getElementById('map_canvas');
//         var geomap = new google.visualization.GeoMap(container);
//         geomap.draw(data, options);
//       };
