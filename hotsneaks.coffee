window.hotsneaks = (body) ->
  _paper = Raphael(0,0,400,400)
  _paper.rect(0,0,400,400).attr('fill', 'white').attr("stroke-width", 0)
  ellipse = (options) ->
    _paper.ellipse(options['center-x'], options['center-y'], options['radius-x'], options['radius-y'])
  body({_paper: _paper, ellipse: ellipse})
  this
