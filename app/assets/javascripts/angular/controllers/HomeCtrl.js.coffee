# app/assets/javascripts/angular/controllers/HomeCtrl.js.coffee

homeCtrl = ($scope, Bout) ->
  Bout.getNextBout (nextBout) ->
    $scope.nextBout = nextBout

@slammo.controller 'HomeCtrl', ['$scope', 'Bout', homeCtrl]
