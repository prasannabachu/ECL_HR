angular.module('myApp').controller("ProfileController", ['$scope', '$http', '$rootScope', function ($scope, $http, $rootScope) {
    $scope.initMainView = function () {

        jQuery.noConflict();
        $('#statusMsg').hide();
        $scope.buttonVisuble = "true"

        this.getCommunicationData();
        this.getLanguageData();
        this.getLanguageDropDown();
        this.getPersonalDetails();

        this.getCountry();
        this.getStates();
        
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
        $('#commModal').modal('hide')
        this.getPersonalDetails();
    }

    
    $scope.getCountry = function () {
        $http({
            method: 'GET',
            url: '/Profile/getDropDownListValues',
            params: { param: 'country' }
        }).then(function (success) {
            $scope.countiresCollection = success.data;
        },function(error){

        });
    };

    $scope.getStates = function () {
        
        $http({
            method: 'GET',
            url: '/Profile/getDropDownListValues',
            //data: _data
            params: { param: 'state' }
        }).then(function (success) {
            $scope.sateCollection = success.data;
        }, function (error) {

        });
    };

    $scope.saveCommunicationDetails = function (communicationCollectionObj) {
        $scope.ProfileCollection = communicationCollectionObj;
        $http({
            method: 'POST',
            url: '/Profile/saveCommunicationDetails',
            data: $scope.ProfileCollection

        }).then(function (success) {
            $scope.statusMessage = 'Details Saved Successfully';

            $('#commModal').modal('hide');
            $('#statusMsg').show();

            setTimeout(function () { $('#statusMsg').hide(); }, 2000);
            
            this.getCommunicationData();
        }, function (error) {

        });
    };

}]);




