hotsneaks () ->
  doctor = [random(400), random(400)]
  daleks = [null,null,null,null]
  daleks = _.map(daleks, () -> [random(400), random(400)])

  keypress (key) ->
    case key
    when LEFT
      doctor[0] = doctor[0] - 20
      _.each(daleks, ((d) -> d[0] + 20 ))
    when RIGHT
      doctor[0] = doctor[0] + 20
    when UP
      doctor[1] = doctor[1] - 20
    when DOWN
      doctor[1] = doctor[1] + 20

    
