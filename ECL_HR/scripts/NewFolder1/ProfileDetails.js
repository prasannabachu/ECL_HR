angular.module('myApp').controller("ProfileController", ['$scope', '$http', '$rootScope', function ($scope, $http, $rootScope) {
    $scope.initMainView = function () {
        this.getCommunicationData();
        $scope.buttonVisuble = "true"
        this.getLanguageData();
this.getLanguageDropDown();
        this.getPersonalDetails();
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
    $scope.getPersonalDetails = function () {
        $http({
            method: 'GET',
            url: '/Profile/getPersonalDetails',
        }).then(function (success) {
            $scope.PersonalDetailsCollection = success.data[0];
            //$scope.PersonalDetailsCollection.Gender = 1;
        }, function (error) {

        });
    }
    $scope.SaveChanges = function (PersonalDetailsCollectionObj) {
        $scope.PersonalDetails = PersonalDetailsCollectionObj;
        $http({
            method: 'Post',
            url: '/Profile/savePersonalDetails',
            data: $scope.PersonalDetails
        }).then(function (success) {
         
          
            
        }, function (error) {

        });
        $('#personalModal').modal('hide')
        this.getPersonalDetails();
    }

    

}]);

