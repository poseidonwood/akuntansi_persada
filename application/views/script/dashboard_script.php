 <script type="text/javascript">
     $(function() {

         /* ChartJS
          * -------
          * Here we will create a few charts using ChartJS
          */

         //--------------
         //- AREA CHART -
         //--------------

         // Get context with jQuery - using jQuery's .get() method.
         var areaChartCanvas = $("#areaChart").get(0).getContext("2d");

         // This will get the first returned node in the jQuery collection.
         var areaChart = new Chart(areaChartCanvas);

         var areaChartOptions = {
             //Boolean - If we should show the scale at all
             showScale: true,
             //Boolean - Whether grid lines are shown across the chart
             scaleShowGridLines: false,
             //String - Colour of the grid lines
             scaleGridLineColor: "rgba(0,0,0,.05)",
             //Number - Width of the grid lines
             scaleGridLineWidth: 1,
             //Boolean - Whether to show horizontal lines (except X axis)
             scaleShowHorizontalLines: true,
             //Boolean - Whether to show vertical lines (except Y axis)
             scaleShowVerticalLines: true,
             //Boolean - Whether the line is curved between points
             bezierCurve: true,
             //Number - Tension of the bezier curve between points
             bezierCurveTension: 0.3,
             //Boolean - Whether to show a dot for each point
             pointDot: false,
             //Number - Radius of each point dot in pixels
             pointDotRadius: 4,
             //Number - Pixel width of point dot stroke
             pointDotStrokeWidth: 1,
             //Number - amount extra to add to the radius to cater for hit detection outside the drawn point
             pointHitDetectionRadius: 20,
             //Boolean - Whether to show a stroke for datasets
             datasetStroke: true,
             //Number - Pixel width of dataset stroke
             datasetStrokeWidth: 2,
             //Boolean - Whether to fill the dataset with a color
             datasetFill: true,
             //String - A legend template
             legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].lineColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>",
             //Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
             maintainAspectRatio: true,
             //Boolean - whether to make the chart responsive to window resizing
             responsive: true
         };

         var areaChartDataSales = {
             labels: ["Jan", "Feb", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "Sep", "Okt", "Nov", "Des"],
             datasets: [{
                     label: "Income Bulan Ini",
                     fillColor: "rgba(210, 214, 222, 1)",
                     strokeColor: "rgba(210, 214, 222, 1)",
                     pointColor: "rgba(210, 214, 222, 1)",
                     pointStrokeColor: "#c1c7d1",
                     pointHighlightFill: "#fff",
                     pointHighlightStroke: "rgba(220,220,220,1)",
                     data: <?php
                            $januari = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-01-01'), date('2020-01-31'));
                            $februari = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-02-01'), date('2020-02-31'));
                            $maret = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-03-01'), date('2020-03-31'));
                            $april = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-04-01'), date('2020-04-31'));
                            $mei = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-05-01'), date('2020-05-31'));
                            $juni = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-06-01'), date('2020-06-31'));
                            $juli = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-07-01'), date('2020-07-31'));
                            $agustus = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-08-01'), date('2020-08-31'));
                            $september = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-09-01'), date('2020-09-31'));
                            $oktober = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-10-01'), date('2020-10-31'));
                            $november = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-11-01'), date('2020-11-31'));
                            $desember = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-12-01'), date('2020-12-31'));
                            echo "['$januari','$februari','$maret','$april','$mei','$juni','$juli','$agustus','$september','$oktober','$november','$desember']"; ?>
                 }, {
                     label: "Expense Bulan Ini",
                     fillColor: "rgba(60,141,188,0.9)",
                     strokeColor: "rgba(60,141,188,0.8)",
                     pointColor: "#3b8bba",
                     pointStrokeColor: "rgba(60,141,188,1)",
                     pointHighlightFill: "#fff",
                     pointHighlightStroke: "rgba(60,141,188,1)",
                     data: <?php
                            $januari = $this->Crud_model->count_sum_expense('mp_expense', date('2020-01-01'), date('2020-01-31'));
                            $februari = $this->Crud_model->count_sum_expense('mp_expense', date('2020-02-01'), date('2020-02-31'));
                            $maret = $this->Crud_model->count_sum_expense('mp_expense', date('2020-03-01'), date('2020-03-31'));
                            $april = $this->Crud_model->count_sum_expense('mp_expense', date('2020-04-01'), date('2020-04-31'));
                            $mei = $this->Crud_model->count_sum_expense('mp_expense', date('2020-05-01'), date('2020-05-31'));
                            $juni = $this->Crud_model->count_sum_expense('mp_expense', date('2020-06-01'), date('2020-06-31'));
                            $juli = $this->Crud_model->count_sum_expense('mp_expense', date('2020-07-01'), date('2020-07-31'));
                            $agustus = $this->Crud_model->count_sum_expense('mp_expense', date('2020-08-01'), date('2020-08-31'));
                            $september = $this->Crud_model->count_sum_expense('mp_expense', date('2020-09-01'), date('2020-09-31'));
                            $oktober = $this->Crud_model->count_sum_expense('mp_expense', date('2020-10-01'), date('2020-10-31'));
                            $november = $this->Crud_model->count_sum_expense('mp_expense', date('2020-11-01'), date('2020-11-31'));
                            $desember = $this->Crud_model->count_sum_expense('mp_expense', date('2020-12-01'), date('2020-12-31'));
                            echo "['$januari','$februari','$maret','$april','$mei','$juni','$juli','$agustus','$september','$oktober','$november','$desember']"; ?>
                 }

             ]
         };

         var lineChartDataProfit = {
             labels: ["Jan", "Feb", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "Sep", "Okt", "Nov", "Des"],
             datasets: [{
                 label: "Profit Bulan Ini",
                 fillColor: "rgba(210, 214, 222, 1)",
                 strokeColor: "rgba(210, 214, 222, 1)",
                 pointColor: "rgba(210, 214, 222, 1)",
                 pointStrokeColor: "#c1c7d1",
                 pointHighlightFill: "#fff",
                 pointHighlightStroke: "rgba(220,220,220,1)",
                 data: <?php
                        //income
                        $income_januari = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-01-01'), date('2020-01-31'));
                        $income_februari = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-02-01'), date('2020-02-31'));
                        $income_maret = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-03-01'), date('2020-03-31'));
                        $income_april = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-04-01'), date('2020-04-31'));
                        $income_mei = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-05-01'), date('2020-05-31'));
                        $income_juni = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-06-01'), date('2020-06-31'));
                        $income_juli = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-07-01'), date('2020-07-31'));
                        $income_agustus = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-08-01'), date('2020-08-31'));
                        $income_september = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-09-01'), date('2020-09-31'));
                        $income_oktober = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-10-01'), date('2020-10-31'));
                        $income_november = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-11-01'), date('2020-11-31'));
                        $income_desember = $this->Crud_model->count_sum_sales('mp_customer_payments', date('2020-12-01'), date('2020-12-31'));

                        //expense
                        $expense_januari = $this->Crud_model->count_sum_expense('mp_expense', date('2020-01-01'), date('2020-01-31'));
                        $expense_februari = $this->Crud_model->count_sum_expense('mp_expense', date('2020-02-01'), date('2020-02-31'));
                        $expense_maret = $this->Crud_model->count_sum_expense('mp_expense', date('2020-03-01'), date('2020-03-31'));
                        $expense_april = $this->Crud_model->count_sum_expense('mp_expense', date('2020-04-01'), date('2020-04-31'));
                        $expense_mei = $this->Crud_model->count_sum_expense('mp_expense', date('2020-05-01'), date('2020-05-31'));
                        $expense_juni = $this->Crud_model->count_sum_expense('mp_expense', date('2020-06-01'), date('2020-06-31'));
                        $expense_juli = $this->Crud_model->count_sum_expense('mp_expense', date('2020-07-01'), date('2020-07-31'));
                        $expense_agustus = $this->Crud_model->count_sum_expense('mp_expense', date('2020-08-01'), date('2020-08-31'));
                        $expense_september = $this->Crud_model->count_sum_expense('mp_expense', date('2020-09-01'), date('2020-09-31'));
                        $expense_oktober = $this->Crud_model->count_sum_expense('mp_expense', date('2020-10-01'), date('2020-10-31'));
                        $expense_november = $this->Crud_model->count_sum_expense('mp_expense', date('2020-11-01'), date('2020-11-31'));
                        $expense_desember = $this->Crud_model->count_sum_expense('mp_expense', date('2020-12-01'), date('2020-12-31'));
                        //profit
                        $januari = $income_januari - $expense_januari;
                        $februari = $income_februari - $expense_februari;
                        $maret = $income_maret - $expense_maret;
                        $april = $income_april - $expense_april;
                        $mei = $income_mei - $expense_mei;
                        $juni = $income_juni - $expense_juni;
                        $juli = $income_juli - $expense_juli;
                        $agustus = $income_agustus - $expense_agustus;
                        $september = $income_september - $expense_september;
                        $oktober = $income_oktober - $expense_oktober;
                        $november = $income_november - $expense_november;
                        $desember = $income_desember - $expense_desember;
                        echo "['$januari','$februari','$maret','$april','$mei','$juni','$juli','$agustus','$september','$oktober','$november','$desember']"; ?>
             }]
         };

         //Create the area chart sales
         areaChart.Line(areaChartDataSales, areaChartOptions);

         //-------------
         //- LINE CHART -
         //--------------
         var lineChartCanvas = $("#lineChart").get(0).getContext("2d");

         var lineChart = new Chart(lineChartCanvas);

         var lineChartOptions = areaChartOptions;

         lineChartOptions.datasetFill = false;

         lineChart.Line(lineChartDataProfit, lineChartOptions);

     });
 </script>