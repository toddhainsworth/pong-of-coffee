class @Ball
  Ball.WIDTH = 10
  Ball.HEIGHT = 10

  constructor: (x, y) ->
    this.x = x
    this.y = y
    this.vel_x = 5
    this.vel_y = 5

  draw: (context) ->
    context.fillRect(this.x, this.y, 10, 10)