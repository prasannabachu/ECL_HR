angular.module('myApp').controller("ProfileController", ['$scope', '$http', '$rootScope', function ($scope, $http, $rootScope) {
    $scope.initMainView = function () {
        this.getCommunicationData();
        $scope.buttonVisuble = "true"
        this.getLanguageData();
    };

    $scope.getCommunicationData = function () {

        $http({
            method: 'GET',
            url: '/Profile/getCommunicationDetails'
        }).then(function (success) {
            $scope.ProfileCollection = success.data[0];
        }, function (error) {

        });
    };
    $scope.getLanguageData = function () {
        $http({
            method: 'GET',
            url:'/Profile/getLanguageDetails'
        }).then(function (success) {
            $scope.LanguageCollection = success.data;
        }, function (error) {

        });
    }

   
    $scope.hideClick = function () {
        $scope.formvisuble = "true";
        $scope.buttonVisuble = "false";

    }
}]);