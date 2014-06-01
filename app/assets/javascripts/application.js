// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//
    require(["esri/map"], function(Map) {
      var map, dialog;
      require([
        "esri/map", "esri/layers/FeatureLayer",
        "esri/symbols/SimpleFillSymbol", "esri/symbols/SimpleLineSymbol", 
        "esri/renderers/SimpleRenderer", "esri/graphic", "esri/lang",
        "esri/Color", "dojo/number", "dojo/dom-style", 
        "dijit/TooltipDialog", "dijit/popup", "dojo/domReady!", 'esri/symbols/PictureMarkerSymbol',
        'esri/symbols/PictureMarkerSymbol', 'esri/symbols/SimpleMarkerSymbol'
        ], function(Map, FeatureLayer,
          SimpleFillSymbol, SimpleLineSymbol,
          SimpleRenderer, Graphic, esriLang,
          Color, number, domStyle, 
          TooltipDialog, dijitPopup, SimpleMarkerSymbol,
          SimplePictureSymbol, PictureMarkerSymbol
          ) {

          map = new Map("mapDiv", {
            center: [-104.95282, 39.7223],
            zoom: 12,
            basemap: "gray"
          });

          map.on('load', function(){
            map.disablePan();
            map.disableMapNavigation();
          });

          var crime_scores = JSON.parse($.ajax({
            url:  'scores',
            dataType: "json", 
            async: false
          }).responseText);

          var featureLayer = new FeatureLayer("http://services2.arcgis.com/p0ZMctqs29zvLCpq/arcgis/rest/services/statistical_neighborhoods/FeatureServer/0", {
            mode: FeatureLayer.MODE_SNAPSHOT,
            outFields: ["*"]
          });

          featureLayer.setDefinitionExpression("");

          var symbol = new SimpleFillSymbol(
            SimpleFillSymbol.STYLE_SOLID, 
            new SimpleLineSymbol(
              SimpleLineSymbol.STYLE_SOLID, 
              new Color([225,106,99,0]),
              1
              ),
            new Color([225,106,99,0.20])
            );
          featureLayer.setRenderer(new SimpleRenderer(symbol));
          map.addLayer(featureLayer);

          map.infoWindow.resize(245,125);

          var highlightSymbol = new SimpleFillSymbol(
            SimpleFillSymbol.STYLE_SOLID, 
            new SimpleLineSymbol(
              SimpleLineSymbol.STYLE_SOLID, 
              new Color([255,106,99]), 1
              ), 
            new Color([256, 256, 256, 1])
            );

          var pic = new PictureMarkerSymbol("/assets/picture_market.png", 25, 25)

            //close the dialog when the mouse leaves the highlight graphic
            map.on("load", function(){
              map.graphics.enableMouseEvents();
            });

            featureLayer.on("mouse-over", function(evt){
              //var content = esriLang.substitute(evt.graphic.attributes,t);
              //var icon = new Graphic(evt.mapPoint, pic);
              //map.graphics.add(icon);
            });

            featureLayer.on("mouse-out", function(){
              map.graphics.clear();
            });

            featureLayer.on("mouse-down", function(evt){
              var t = "${NBHD_NAME}"
              var hood = esriLang.substitute(evt.graphic.attributes,t);
              var highlightGraphic = new Graphic(evt.graphic.geometry,highlightSymbol);
              map.graphics.add(highlightGraphic);
              var crime_score = crime_scores[hood.toLowerCase()]
              if(typeof(crime_score) === 'undefined'){
                crime_score = 67;
              }
              var crime_bar = crime_score * 3
              var content =  '<span class="n_name">'+ hood + '</span>'+
                            '<img src="/assets/tool_tip.png" class="tool_tip">'+
                            '<span class="lg">Accessibility</span>'+
                            '<span class="dg">Music &amp; Culture</span>'+
                            '<span class="lg lg2">Crime</span>'+
                            '<img src="/assets/table_overlay.png" class="table_overlay">'+
                            '<img src="/assets/n_icon.png" class="n_icon">'+
                            '<!-- table data -->'+
                            '<div class="table">'+
                            '<span class="bar value_col"><span class="bar_shadow"></span></span>'+
                            '<span class="bar value_mac"><span class="bar_shadow"></span></span>'+
                            '<span class="bar value_acc"><span class="bar_shadow"></span></span>'+
                            '</div>'+
                            '<span class="circle circle_col">89</span>'+
                            '<span class="circle circle_mac">78</span>'+
                            '<span class="circle circle_acc">'+ crime_score +'</span>'
                  $('.n_stats').css('left', (evt.pageX));
                  $('.n_stats').css('top', (evt.pageY));
                  $('.n_stats').html(content);
                  $('.value_col').css('width', (crime_bar + 'px'));
              });

            function closeDialog() {
              map.graphics.clear();
              dijitPopup.close(dialog);
            }
          });

    });
