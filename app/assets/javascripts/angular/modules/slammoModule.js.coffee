#app/assets/javascripts/main.js.coffee

@slammo = angular.module('slammo', [])

#default route
@slammo.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    when('/', {
      templateUrl: '/templates/home.html',
      controller: 'HomeCtrl'
    }).
    otherwise({redirectTo: '/'})
  ])
