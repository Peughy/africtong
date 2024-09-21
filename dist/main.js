const ctx = document.getElementById('myChart');
const ctd = document.getElementById('myChartB');


  new Chart(ctx, {
    type: 'bar',
    data: {
      labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
      datasets: [{
        label: '# of Votes',
        data: [12, 19, 3, 5, 2, 3],
        borderWidth: 2,
        backgroundColor: '#FFFF00',
      }]
    },
    options: {
      responsive: true,
      plugins: {
        subtitle: {
            display: true,
            text: 'Custom Chart Subtitle'
        }
    }
    }
  });

  const data = {
    labels: [
      'Red',
      'Green',
      'Yellow',
      'Grey',
      'Blue'
    ],
    datasets: [{
      label: 'My First Dataset',
      data: [11, 16, 7, 3, 14],
      backgroundColor: [
        'rgb(255, 99, 132)',
        'rgb(75, 192, 192)',
        'rgb(255, 205, 86)',
        'rgb(201, 203, 207)',
        'rgb(54, 162, 235)'
      ]
    }]
  };

  const config = {
    type: 'polarArea',
    data: data,
    options: {
      responsive: true
    }
  };

  new Chart(ctd, config)