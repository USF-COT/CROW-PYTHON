/*global angular */
/*jslint node: true  */

'use strict';


// Declare app level module which depends on filters, and services
angular.module('crowApp', [
  'ngRoute',
  'ngResource',
  'crowApp.filters',
  'crowApp.services',
  'crowApp.directives',
  'crowApp.controllers'
]).
config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/', {templateUrl: 'partials/navigation.html', controller: 'MapCtrl'});
  $routeProvider.when('/view2', {templateUrl: 'partials/partial2.html', controller: 'MyCtrl2'});
  $routeProvider.otherwise({redirectTo: '/'});
}]);
