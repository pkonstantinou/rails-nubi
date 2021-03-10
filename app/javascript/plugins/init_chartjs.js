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
            borderColor: ["transparent", "transparent"],
            data: [ctx.dataset.score, 100 - ctx.dataset.score],
          },
        ],
      },

      // Configuration options go here
      options: {
        legend: false,
        animation: {
          duration: 1500,
        },
      },
    });
  }
};

export { initChartjs };
