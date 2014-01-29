/*global angular */
/*jslint node: true  */

'use strict';

/* Filters */

angular.module('crowApp.filters', []).
  filter('interpolate', ['version', function(version) {
    return function(text) {
      return String(text).replace(/\%VERSION\%/mg, version);
    };
  }]);
