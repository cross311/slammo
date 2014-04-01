#app/assets/javascripts/main.js.coffee

@slammo = angular.module('slammo', ['ngRoute', 'ngResource', 'ngSanitize'])

#default route
@slammo.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    when('/', {
      templateUrl: '/templates/home.html',
      controller: 'HomeCtrl'
    }).
    when('/draft', {
      templateUrl: '/templates/draft.html',
      controller: 'DraftCtrl'
    }).
    otherwise({redirectTo: '/'})
  ])
