describe "hotsneaks", () ->
  afterEach () ->
    $('svg').remove()
  it "should create a canvas", () ->
    window.hotsneaks () ->
      window.p = _paper
    expect(window.p).toBeDefined()

  describe "ellipse", () ->
    it "should create an ellipse", () ->
      window.hotsneaks () ->
        ellipse 'center-x': 10, 'center-y': 20, 'radius-x': 30, 'radius-y': 40
      ellipse = $('svg ellipse')
      expect(ellipse.attr('cx')).toEqual('10')
      expect(ellipse.attr('cy')).toEqual('20')
      expect(ellipse.attr('rx')).toEqual('30')
      expect(ellipse.attr('ry')).toEqual('40')
