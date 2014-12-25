class @Paddle
  constructor: (name, colour) ->
    this.name = name
    this.colour = colour

  draw: (context) ->
    context.fillStyle = this.colour
    context.fillRect(20, 20, 20, 20)