
angular.module('myApp').controller("LogoutController", ['$scope', '$http', '$rootScope', function ($scope, $http, $rootScope) {

    $scope.LogoutRequest = function () {
        $http({
            method: 'POST',
            url: '/Login/LogOff'
        }).then(function (success) {
            window.location.href = '/Login/Login'
            alert('Successfully Logged Off');
        }, function (error) {
            alert('failed')
        });
    }

}]);