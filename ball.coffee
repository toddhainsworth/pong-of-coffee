class @Ball
  constructor: (x, y) ->
    this.x = x
    this.y = y
    this.vel_x = 5
    this.vel_y = 5

    this.width = 10
    this.height = 10

  draw: (context) ->
    context.fillRect(this.x, this.y, 10, 10)