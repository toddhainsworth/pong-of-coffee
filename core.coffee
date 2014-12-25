canvas = document.getElementById("game")
context = canvas.getContext("2d")
player_paddle = new Paddle("Player", "#2B7DB3", 10, canvas.height / 2 - (Paddle.HEIGHT / 2))
cpu_paddle = new Paddle("CPU", "#ACB3A7", canvas.width - 10 - Paddle.WIDTH, canvas.height / 2 - (Paddle.HEIGHT / 2))
ball = new Ball(canvas.width / 2, canvas.height / 2)
keys = []

update = ->
  if keys[38] # up
    if player_paddle.y >= 0
      player_paddle.y -= 3
  else if keys[40] # down
    if player_paddle.y <= (canvas.height - player_paddle.height)
      player_paddle.y += 3

  if ball.x < 0 || ball.x > (canvas.width - ball.width)
    ball.vel_x *= -1

  if ball.y < 0 || ball.y > (canvas.height - ball.height)
    ball.vel_y *= -1

  ball.x += ball.vel_x
  ball.y += ball.vel_y

  if (cpu_paddle.y = ball.y) > (canvas.height - cpu_paddle.height)
    cpu_paddle.y = (canvas.height - cpu_paddle.height)

  if Helpers.hits(ball, player_paddle) || Helpers.hits(ball, cpu_paddle)
    ball.vel_x *= -1

draw = ->
  context.clearRect(0, 0, canvas.width, canvas.height)
  player_paddle.draw(context)
  cpu_paddle.draw(context)
  ball.draw(context)

main_loop = ->
  update()
  draw()
  window.requestAnimationFrame(main_loop)

add_event_listeners = ->
  document.body.addEventListener('keydown', (e) -> keys[e.keyCode] = true)
  document.body.addEventListener('keyup', (e) -> keys[e.keyCode] = false)

add_event_listeners()
window.requestAnimationFrame(main_loop)