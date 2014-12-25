canvas = document.getElementById("game")
context = canvas.getContext("2d")

update = ->
draw = ->

game_loop = ->
  update()
  draw()
  window.requestAnimationFrame(game_loop)

window.requestAnimationFrame(game_loop)