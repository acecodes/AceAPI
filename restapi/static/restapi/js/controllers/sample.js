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
      .controller('SampleCtrl', function ($scope) {
        $scope.testItems = [
          'A is for Antelope',
          'B is for Bison',
          'C is for Cougar'
        ];
      });
})();