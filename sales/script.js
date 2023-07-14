// Chart configuration
var chartConfig = {
    type: 'line',
    data: {
      labels: ['January', 'February', 'March', 'April', 'May', 'June'],
      datasets: []
    },
    options: {
      responsive: true,
      maintainAspectRatio: false,
      legend: {
        display: true
      },
      scales: {
        x: {
          display: true
        },
        y: {
          display: true
        }
      }
    }
  };
  
  // Initialize chart
  var salesChart = new Chart(document.getElementById("sales-chart"), chartConfig);
  
  // Update chart based on selected product
  function updateChart() {
    var productSelect = document.getElementById("product-select");
    var selectedProduct = productSelect.value;
    
    // Clear existing datasets
    salesChart.data.datasets = [];
    
    // Add new dataset based on selected product
    if (selectedProduct === "indibiz") {
      salesChart.data.datasets.push({
        label: 'IndiBiz',
        data: [100, 150, 120, 180, 200, 160],
        borderColor: 'blue',
        fill: false
      });
    } else if (selectedProduct === "pijar") {
      salesChart.data.datasets.push({
        label: 'PIJAR',
        data: [80, 120, 100, 150, 130, 110],
        borderColor: 'green',
        fill: false
      });
    } else if (selectedProduct === "mysooltan") {
      salesChart.data.datasets.push({
        label: 'MySooltan',
        data: [90, 130, 110, 160, 140, 120],
        borderColor: 'orange',
        fill: false
      });
    }
    
    // Update chart
    salesChart.update();
  
    console.log("Selected Product:", selectedProduct);
  }
  
  // Show personality details based on selected option
  function showPersonality() {
    var personalitySelect = document.getElementById("personality-select");
    var selectedPersonality = personalitySelect.value;
  
    var personalityDetails = document.getElementById("personality-details");
    
    // Clear existing details
    personalityDetails.innerHTML = "";
    
    // Add details based on selected personality
    if (selectedPersonality === "personality1") {
      personalityDetails.innerHTML = "Personality 1 details";
    } else if (selectedPersonality === "personality2") {
      personalityDetails.innerHTML = "Personality 2 details";
    } else if (selectedPersonality === "personality3") {
      personalityDetails.innerHTML = "Personality 3 details";
    }
  
    console.log("Selected Personality:", selectedPersonality);
  }
  