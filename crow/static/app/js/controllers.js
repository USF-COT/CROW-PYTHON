/*global angular */
/*jslint node: true  */

'use strict';


/* Controllers */

angular.module('crowApp.controllers', []).
  controller('MapCtrl', ['$scope', 'DataSources', function($scope, DataSources) {
    /* HACK: Could not find elegant way to make resource promise depend on */
    /* array of promises.  Must use then callback to load data once it is returned */
    DataSources.query().$promise.then(function(result){
        $scope.sources = result.data;
    });
  }]);
