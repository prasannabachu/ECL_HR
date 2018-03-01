
var app = angular.module('App', ['ngRoute', 'chart.js']);

app.controller("MixedChartCtrl",
  function ($scope, $http) {
      $scope.colors = ['#45b7cd', '#ff6384', '#ff8e72'];
      var request = {
          method: 'GET',
          url: '/Leave/GetLeaveDetails',
          dataType: 'json',
          contentType: "application/json"
      };

      $scope.arrData = new Array;
      $scope.arrLabels = new Array;

      // MAKE REQUEST USING $http SERVICE.
      $http(request)
          .then(function (jsonData) {

              // LOOP THROUGH DATA IN THE JSON FILE.
              angular.forEach(jsonData.data, function (item) {
                  $scope.arrData.push(item.Leaves);
                  $scope.arrLabels.push(item.month_name);
              });

              $scope.data = new Array;
              $scope.labels = new Array;

              // UPDATE SCOPE PROPERTIES “data” and “label” FOR DATA.
              $scope.data.push($scope.arrData.slice(0));

              for (var i = 0; i < $scope.arrLabels.length; i++) {
                  $scope.labels.push($scope.arrLabels[i]);
              }
          })
          , (function (error) {

          });

      //$scope.labels = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
      //$scope.data = [
      //  [65, -59, 80, 81, -56, 55, -40],
      //  [28, 48, -40, 19, 86, 27, 90]
      //];
      $scope.datasetOverride = [
        {
            label: "Bar chart",
            borderWidth: 1,
            type: 'bar'
        },
        {
            label: "Line chart",
            borderWidth: 3,
            hoverBackgroundColor: "rgba(255,99,132,0.4)",
            hoverBorderColor: "rgba(255,99,132,1)",
            type: 'line'
        }
      ];
  });

app.controller("RadarCtrl", function ($scope) {
    $scope.labels = ["Eating", "Drinking", "Sleeping", "Designing", "Coding", "Cycling", "Running"];

    $scope.data = [
      [65, 59, 90, 81, 56, 55, 40],
      [28, 48, 40, 19, 96, 27, 100]
    ];

});

app.controller("DoughnutCtrl", function ($scope) {
    $scope.labels = ["Download Sales", "In-Store Sales", "Mail-Order Sales"];
    $scope.data = [300, 500, 100];
});
