_hotsneaks = {
  prepareFunctionBody: ((fn) ->
    `'(' + fn.toString().replace(/\s+$/, '') + ')()'`
  ),
  withThis: ((callback) ->
    body = this.prepareFunctionBody(callback)
    that = this
    `function() { return eval('with(that) { ' + body + ' } '); };`
  ),
  run: ((definition) ->
    _hotsneaks._paper = Raphael(0,0,400,400)
    _hotsneaks._paper.rect(0,0,400,400).attr('fill', 'white').attr("stroke-width", 0)
    _hotsneaks.withThis(definition)();
  ),
  ellipse: ((options) ->
    _hotsneaks._paper.ellipse(options['center-x'], options['center-y'], options['radius-x'], options['radius-y'])
  ),
  image: ((url) ->
    _hotsneaks._paper.image(url, 0, 0, 400, 400)
  ),
  text: ((string, options) ->
    _hotsneaks._paper.text(options['left'], options['top'], string)
  )
 #bake: ((callback) ->
 #  callback.call(this);
 #),
}
window.hotsneaks = _hotsneaks.run
