class Dashing.Status extends Dashing.Widget

  onData: (data) ->
    @setBackgroundClassBy data.health

  setBackgroundClassBy: (health) ->
    @removeBackgroundClass()

    $(@node).addClass "status-color-#{health}"

  removeBackgroundClass: ->
    classNames = $(@node).attr("class").split " "

    for className in classNames
      match = /status-color-(.*)/.exec className
      $(@node).removeClass match[0] if match