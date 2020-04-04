//Documentation for package: https://www.amcharts.com/docs/v4/

//Set dark them for Chart race
am4core.useTheme(am4themes_dark);
am4core.useTheme(am4themes_animated);

//append chart to #bar-race
let chart = am4core.create("bar-race", am4charts.XYChart);

//load csv file
// chart.dataSource.url = "/jupyter files/non_pivot_states.csv";
// chart.dataSource.parser = new am4core.CSVParser();
// chart.dataSource.parser.options.useColumnNames = true;
// chart.dataSource.parser.options.reverse = true;

console.log(chart.dataSource);
//adds padding
chart.padding(40,40,40,40);
//Format numbers for the chart
chart.numberFormatter.bigNumberPrefixes = [
    {"number": 1e+3, "suffix": "K"},
    {"number": 1e+6, "suffix": "M"},
    {"number": 1e+9, "suffix": "B"}
];

//set label and label design
let chartLabel = chart.plotContainer.createChild(am4core.Label);
chartLabel.x = am4core.percent(97);
chartLabel.y = am4core.percent(95);
chartLabel.horizontalCenter = "right"; //x-axis
chartLabel.verticalCenter = "middle"; //y-axis
chartLabel.dx = -15;
chartLabel.fontSize = 30;

//Create play button
let playbutton = chart.plotContainer.createChild(am4core.PlayButton);
playbutton.x = am4core.percent(97);
playbutton.y = am4core.percent(95);
playbutton.dy = -2;
playbutton.verticalCenter = "middle";
//toggle play button
playbutton.events.on("toggled", function(event) {
    if (event.target.isActive) {
        play();
    }
    else {
        stop();
    }
});

let chartDuration = 500;

//sets the state categories
let cat_axis = chart.yAxes.push(new am4charts.CategoryAxis());
cat_axis.renderer.grid.template.location = 0;
cat_axis.dataFields.category = "state";
cat_axis.renderer.minGridDistance = 0.5;
cat_axis.renderer.inversed = true;
cat_axis.renderer.grid.template.disabled = true;

//sets the values used for the bar race
let axis_values = chart.xAxes.push(new am4charts.ValueAxis());
axis_values.min = 0;
axis_values.integersOnly = true;
axis_values.rangeChangeEasing = am4core.ease.linear;
axis_values.rangeChangeDuration = chartDuration;
axis_values.extraMax = 0.1;

//creates the series to output the data onto the chart
let chart_series = chart.series.push(new am4charts.ColumnSeries());
chart_series.dataFields.categoryY = "state";
chart_series.dataFields.valueX = "total";
chart_series.tooltipText = "{valueX.value}";
chart_series.columns.template.strokeOpacity = 0;
chart_series.columns.template.column.cornerRadiusBottomRight = 5;
chart_series.columns.template.column.cornerRadiusTopRight = 5;
chart_series.interpolationDuration = chartDuration;
chart_series.interpolationEasing = am4core.ease.linear;


let bullet_Label = chart_series.bullets.push(new am4charts.LabelBullet());
bullet_Label.label.horizontalCenter = "right";
bullet_Label.label.text = "{values.valuesX.workingValue.formatNumber('#.0as')}";
bullet_Label.label.textAlign = "end";
bullet_Label.label.dx = -10;

chart.zoomOutButton.disabled = true;

//adds colors to the chart
chart_series.columns.template.adapter.add("fill", function(fill, t) {
    return chart.colors.getIndex(t.dataItem.index);
});

let s_date = 20200304;


let interval;


function play() {
    interval = setInterval(function() {
        nextDay();
    }, chartDuration)
    nextDay();}

function stop() {
    if(interval) {
        clearInterval(interval);
    }
}

//Function to run the chart
function nextDay() {

    s_date++;
        
    if (s_date > chart.data.length) {
        s_date = 20200304;
    }        
    let newData = chart.data;
    let nan_items = 0;

    // console.log(newData);

    //adds data to the Chart Series
    for (let i = 0; i < chart.data.length; i++) {
        chart.data[i].total = newData[i].total;
        // console.log(newData);
        // chartLabel.text = chart.data[i].formatted_date;
        if (chart.data[i].total > 0) {
        nan_items++;
        }

    }

    if (s_date == 20200304) {
        chart_series.interpolationDuration = chartDuration / 2;
        axis_values.rangeChangeDuration = chartDuration / 2;
      }
      else {
        chart_series.interpolationDuration = chartDuration;
        axis_values.rangeChangeDuration = chartDuration;
      }
    
      chart.invalidateRawData();
      chartLabel.text = chart.data.date;
      cat_axis.zoom({ start: 0, end: nan_items / cat_axis.dataItems.length });

}

//Sorts the data
// cat_axis.sortBySeries = chart_series;

chart.dataSource.url = "/jupyter files/non_pivot_states.csv";
chart.dataSource.parser = new am4core.CSVParser();
chart.dataSource.parser.options.useColumnNames = true;
cat_axis.zoom({start: 0, end: 1 / chart.data.length});


//keeps the chart running
chart_series.events.on("inited", function() {
  setTimeout(function() {
    playbutton.isActive = true; // this starts interval
  }, 2000)
})

//makes the chart responsive to screen size
chart.responsive.enabled = true;
