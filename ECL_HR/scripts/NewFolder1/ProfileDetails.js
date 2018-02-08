angular.module('myApp').controller("ProfileController", ['$scope', '$http', '$rootScope', function ($scope, $http, $rootScope) {
    $scope.initMainView = function () {

        jQuery.noConflict();
        $('#statusMsg').hide();
        $scope.buttonVisuble = "true"

        this.getPresentAddressData();
        this.getPermanentAddressData();
        this.getLanguageData();
        this.getLanguageDropDown();
        this.getPersonalDetails();

        this.getCountry();
        this.getStates();        
        this.getPermanentStates();
        this.familyDetailsGridData();
    };

    $scope.getPresentAddressData = function () {

        $http({
            method: 'GET',
            url: '/Profile/getCommunicationDetails',
            params: { Type: 'PR' }
        }).then(function (success) {
            $scope.ProfileCollection = success.data[0];
        }, function (error) {

        });
    };

    $scope.getPermanentAddressData = function () {
        $http({
            method: 'GET',
            url: '/Profile/getCommunicationDetails',
            params:{ Type:'PE' }
        }).then(function (success) {
            $scope.PermanentCollection = success.data[0];
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
        $scope.PersonalDetailsCollection = [];
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
    $scope.saveFamilyDetails = function (familydatas) {
        $scope.familyDetails = familydatas;
        $http({
            method: 'post',
            url: '/profile/saveFamilyDetailsTables',
            data: $scope.familyDetails,
            
        }).then(function (success) {



        }, function (error) {
        });
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
    $scope.familyDetailsGridData = function () {
        $http({
            method: 'GET',
            url: '/Profile/getFamilyGridDetails',

        }).then(function (success) {
            $scope.familyDetailsGridCollection = success.data


        }, function (error) {

        });
    }
    $scope.familygridDoubleClick = function (gridData) {
        $('#exampleModal').modal('show');
        $scope.family_click_data = gridData;
    }


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
    }

    $scope.getPermanentStates = function () {

        $http({
            method: 'GET',
            url: '/Profile/getDropDownListValues',
            //data: _data
            params: { param: 'state' }
        }).then(function (success) {
            $scope.permanentSateCollection = success.data;
        }, function (error) {

        });
    };
    $scope.savePermanaentAddressDetails = function (PermanaentCollectionObj) {
        $scope.PermanentCollection = PermanaentCollectionObj;
        $http({
            method: 'POST',
            url: '/Profile/saveCommunicationDetails',
            data: $scope.PermanentCollection,
            params: { Type: 'PE' }

        }).then(function (success) {
            $scope.statusMessage = 'Details Saved Successfully';
            $('#statusMsg').show();
            setTimeout(function () { $('#statusMsg').hide(); }, 2000);
            $('#permanentModal').modal('hide')
            
        }, function (error) {

        });
        this.getPermanentAddressData();
    };

    $scope.savePresentAddressDetails = function (PresentCollectionObj) {
       
        $scope.ProfileCollection = PresentCollectionObj;
       
        $http({
            method: 'POST',
            url: '/Profile/saveCommunicationDetails',
            data: $scope.ProfileCollection,
            params: { Type: 'PR' }

        }).then(function (success) {
            $scope.statusMessage = 'Details Saved Successfully';
            $('#statusMsg').show();
            setTimeout(function () { $('#statusMsg').hide(); }, 2000);
            $('#commModal').modal('hide');

        }, function (error) {

        });
        this.getPresentAddressData();
    };

    $scope.GetSelectedStates = function (selectedItem) {

        $scope.sateCollection=
        $http({
            method: 'GET',
            url: '/Profile/getStatesforselectedCountry',
            params: { selectedvalue: selectedItem }
        }).then(function (success) {
            $scope.sateCollection = success.data;
        }, function (error) {

        });
    };

    $scope.GetPermanentSelectedStates = function (selectedItem) {

        $scope.sateCollection =
        $http({
            method: 'GET',
            url: '/Profile/getStatesforselectedCountry',
            params: { selectedvalue: selectedItem }
        }).then(function (success) {
            $scope.permanentSateCollection = success.data;
        }, function (error) {

        });
    };
}]);




