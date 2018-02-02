
angular.module('myApp').controller("LoginController", ['$scope', '$http', '$rootScope', function ($scope, $http, $rootScope) {
    //var app = angular.module('loginapp', []);
    alert('hi');
    //app.controller("LoginController", function ($scope, $http) {
    $scope.btntext = "Login";
    $scope.login = function () {
        $scope.btntext = "please wait ....!";
        //$http({
        //    method: "post",
        //    URL: '/LoginController/userlogin',
        //    data: $scope.userController
        //}).success(function (d) {
        //    $scope.btntext = 'Login';
        //    if (d == 1) {
        //        window.location.href = '/HomeController/getEmployeeData'
        //    } else {
        //        alert(d);

        //    }
        //    $scope.userController = null;
        //}).error(function () {
        //    alert('failed')
        //}) $scope.UsersCollection = success.data[0];
        $http({
            method: 'POST',
            url: '/LoginController/userlogin',
            data: $scope.userController
        }).then(function (success) {
            $scope.btntext = 'Login';
            if (success == 1) {
                window.location.href = '/HomeController/getEmployeeData'
            } else {
                alert(success);
            }
            $scope.userController = null;

        }, function (error) {
            alert('failed')
        });
    }
}]);