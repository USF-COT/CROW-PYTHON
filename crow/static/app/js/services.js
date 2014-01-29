/*global angular */
/*jslint node: true  */

'use strict';

/* Services */


// Demonstrate how to register services
// In this case it is a simple value service.
var crowServices = angular.module('crowApp.services', ['ngResource'])
    .config(['$httpProvider', function($httpProvider){
        $httpProvider.defaults.headers.common["X-Requested-With"] = 'XMLHttpRequest';
    }]);

crowServices.factory('DataSources', ['$resource', '$q', '$http',
    function($resource, $q, $http){
        return $resource('/sources', {}, {
            query: {
                method: 'GET',
                params: {},
                isArray: true,
                interceptor: {
                    'response': function(response){
                        var layerPromises = [];

                        angular.forEach(response.data, function(value, key){
                            var promise = $http.jsonp(value.url + "/crow?callback=JSON_CALLBACK")
                                .success(function(data){
                                    angular.extend(response.data[key], data);
                                })
                                .error(function(data, status, headers){
                                    console.log("Error on JSONP request to: " + value.url + ",Data: " + data + ",Status: " + status + ",Headers: " + headers);
                                });
                            layerPromises.push(promise);
                        });

                        /* Hijack resource promise to point to array of $http promises */
                        /* controller must look at promise and not the empty resource returned */
                        response.resource.$promise = $q.all(layerPromises);

                        /* I suspect this return value does not matter */
                        return response || $q.when(response);
                    }
                }
            }
        });
    }
]);
