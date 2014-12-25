canvas = document.getElementById("game")
context = canvas.getContext("2d")
playerPaddle = new Paddle("Player", "#ACB3A7", 10, canvas.height / 2 - Paddle.HEIGHT)
keys = []

update = ->
    if keys[38] # up
      if playerPaddle.y >= 0
        playerPaddle.y -= 3
    else if keys[40] # down
      if playerPaddle.y <= (canvas.height - Paddle.HEIGHT)
        playerPaddle.y += 3

draw = ->
  context.clearRect(0, 0, canvas.width, canvas.height)
  playerPaddle.draw(context)

main_loop = ->
  update()
  draw()
  window.requestAnimationFrame(main_loop)

add_event_listeners = ->
  document.body.addEventListener('keydown', (e) ->
    keys[e.keyCode] = true
  )

  document.body.addEventListener('keyup', (e) ->
    keys[e.keyCode] = false
  )

add_event_listeners()
window.requestAnimationFrame(main_loop)