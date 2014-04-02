boutService = ($resource, $http, $log) ->
  getNextBout = (callback) ->
    $resource('/next_bout').get (response) ->
      callback response

  {
    getNextBout: getNextBout
  }

@slammo.factory 'Bout', ['$resource','$http', '$log', boutService]
