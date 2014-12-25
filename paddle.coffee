class @Paddle
  Paddle.WIDTH = 10
  Paddle.HEIGHT = 50

  constructor: (name, colour, x, y) ->
    this.name = name
    this.colour = colour
    this.x = x
    this.y = y

  draw: (context) ->
    context.fillStyle = this.colour
    context.fillRect(this.x, this.y, Paddle.WIDTH, Paddle.HEIGHT)