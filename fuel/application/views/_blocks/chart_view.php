
            

            <!-- <h2>Sales Data Chart</h2>
    <canvas id="salesChart" width="400" height="200" style="padding-bottom:0px;"></canvas>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            fetch("<?php echo base_url('chart/get_chart_data'); ?>")
            .then(response => response.json())
            .then(data => {
                var ctx = document.getElementById('salesChart').getContext('2d');
                var myChart = new Chart(ctx, {
                    type: 'bar', // Change to 'line', 'pie', etc.
                    data: {
                        labels: data.labels,
                        datasets: [{
                            label: 'Sales Data',
                            data: data.sales,
                            backgroundColor: 'rgba(54, 162, 235, 0.5)',
                            borderColor: 'rgba(54, 162, 235, 1)',
                            borderWidth: 1
                        }]
                    },
                    options: {
                        scales: {
                            y: { beginAtZero: true }
                        }
                    }
                });
            });
        });
    </script> -->

