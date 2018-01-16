angular.module('myApp').controller("UserControll", ['$scope', '$http', '$rootScope', function ($scope, $http, $rootScope) {
      $scope.initMainView = function () {
         this.GetUserDetails();
     
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
    
}]);