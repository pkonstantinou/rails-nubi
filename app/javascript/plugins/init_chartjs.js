import Chart from "chart.js";

const initChartjs = () => {
  var ctx = document.querySelector("#myChart");

  if (ctx) {
    var chart = new Chart(ctx, {
      // The type of chart we want to create
      type: "doughnut",

      // The data for our dataset
      data: {
        labels: ["Completed", "Remaining"],
        datasets: [
          {
            backgroundColor: ["#7acab0", "#e3e2f0"],
            borderColor: ["#7acab0", "#e3e2f0"],
            data: [90, 10],
            weight: 1,
          },
        ],
      },

      // Configuration options go here
      options: {
        legend: false,
      },
    });
  }
};

export { initChartjs };
