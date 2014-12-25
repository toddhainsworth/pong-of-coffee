canvas = document.getElementById("game")
context = canvas.getContext("2d")
playerPaddle = new Paddle("Player", "#ACB3A7")

update = ->
draw = ->
  context.clearRect(0, 0, canvas.width, canvas.height)
  playerPaddle.draw(context)

main_loop = ->
  update()
  draw()
  window.requestAnimationFrame(main_loop)

window.requestAnimationFrame(main_loop)