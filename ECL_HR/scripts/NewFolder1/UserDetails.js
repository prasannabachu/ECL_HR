angular.module('myApp').controller("UserControll", ['$scope', '$http', '$rootScope', function ($scope, $http, $rootScope) {
      $scope.initMainView = function () {
          this.GetUserDetails();
          $scope.UsersCollection;
     
    };

    
    $scope.GetUserDetails = function () {
        
        $http({
                   method: 'GET',
                    url: '/Home/getEmployeeData'
                }).then(function (success){
                   $scope.UsersCollection = success.data[0];
                },function (error){

                });
      };

    $scope.SendEmailforUser = function () {
        $http({
            method: 'GET',
            url: '/Home/SendEmail'
        }).then(function (success) {
            alert("Email has been succesfully Send");
        }, function (error) {
            alert("Email Failed To Send");
        });
    };
    
}]);