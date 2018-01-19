angular.module('myApp').controller("ProfileController", ['$scope', '$http', '$rootScope', function ($scope, $http, $rootScope) {
    $scope.initMainView = function () {
        this.getCommunicationData();
        $scope.buttonVisuble = "true"
        this.getLanguageData();
        this.getLanguageDropDown();
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
    $scope.getLanguageDropDown = function () {
        $http({
            method: 'GET',
            url: '/Profile/getLanguageDropdownDetails'
        }).then(function (success) {
            $scope.languageDropdownCollection = success.data;
        }, function (error) {

        });
    }
   
    $scope.hideClick = function () {
        $scope.formvisuble = "true";
        $scope.buttonVisuble = "false";

    }
    $('.btn-toggle').click(function () {
        $(this).find('.btn').toggleClass('active');  
    if ($(this).find('.btn-primary').size() > 0) {
        $(this).find('.btn').toggleClass('btn-primary');
        }
    });
}]);