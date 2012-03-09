hotsneaks () ->
  doctor = [random(400), random(400)]
  daleks = [null,null,null,null]
  daleks = _.map(daleks, () -> [random(400), random(400)])

  keypress (key) ->
    case key
    when LEFT
      doctor[0] = doctor[0] - 20

