
angular.module('myApp').controller("LoginController", ['$scope', '$http', '$rootScope', function ($scope, $http, $rootScope) {
    //var app = angular.module('loginapp', []);
    //alert('hi');
    //app.controller("LoginController", function ($scope, $http) {
    //$scope.btntext = "Login";
    $scope.login = function () {
        if ($scope.userController.Code == "" || $scope.userController.EmpPassword == "") {
            alert("enjoy with unknown password and code");
        }
        else {
            $scope.btntext = "please wait ....!";

            $http({
                method: 'POST',
                url: '/Login/userlogin',
                data: $scope.userController
            }).then(function (success) {
                $scope.btntext = 'Login';
                if (success.data == 1) {
                    window.location.href = '/Home/home'
                } else {
                    alert("enter the valid credintials");
                }
                $scope.userController = null;

            }, function (error) {
                alert('failed')
            });
        }
    }
}]);