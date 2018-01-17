angular.module('myApp').controller("ProfileController", ['$scope', '$http', '$rootScope', function ($scope, $http, $rootScope) {
    $scope.initMainView = function () {
        this.getCommunicationData();
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
}]);