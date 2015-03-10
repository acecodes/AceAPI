(function() { 
    'use strict';

    /**
     * @ngdoc function
     * @name frontendApp.controller:AboutCtrl
     * @description
     * # AboutCtrl
     * Controller of the frontendApp
     */
    angular.module('frontEndApp')
      .controller('SampleCtrl', function ($scope, djResource) {
        var Animal = djResource('/api/animals/:animalId', {animalId:'@id'});
        var Person = djResource('/api/people/:peopleId', {peopleId:'@id'});
        $scope.animals = Animal.query();
        $scope.people = Person.query();

        $scope.testItems = [
          'A is for Antelope',
          'B is for Bison',
          'C is for Cougar'
        ];
      });
})();