
local music = nil

function love.load()
	
		button = {
			x = 400,
			y = 200,
			size = 100,
			w1 = 1,
			w2 = 1,
			}

			pontuacao = 0
			timer = 30
			start = 1

			--- som
			--music = love.audio.newSource( "ESPIRITODELUTA.mp3", "stream")
			--music:setLooping(true)
			effect = love.audio.newSource( "bloop.mp3", "stream")
			GameOver = love.audio.newSource( "GO.mp3", "stream")

			---- background
			wallpaper = love.graphics.newImage("fundo.jpg")
			


			--- quadrado
			a1 = {
				x = 500,
				y = 500,
				lado = 200,
				w1 = 1,
				w2 = 1,
				}
			---


			------Circulo2
			a2 = {
				x = 900,
				y = 100,
				size = 100,
				w1 = 1,
				w2 = 1,
			}
			-----------------

			-----Circulo 3
			a3 = {
				x = 100,
				y = 900,
				size = 100,
				w1 = 1,
				w2 = 1,
			}
			-------------

			-----Quadrado 2
			a4 = {
				x = 300,
				y = 300,
				lado = 200,
				w1 = 1,
				w2 = 1,
			}
			---------------

		perder = false
			imagemPerdeu = love.graphics.newImage( "game over.png" ) -- vai printar essa imagem na tela
				dimensoes = love.graphics.newQuad(0, 0, 1280, 720, imagemPerdeu:getWidth(), imagemPerdeu:getHeight())


				font = love.graphics.newFont(40)
				PequenaFonte = love.graphics.newFont( 20 )
	end

	function love.update(dt)

	local altura = love.graphics.getHeight()
	local largura = love.graphics.getWidth()
		
		  if start == 2 then
			if timer > 0 then
			  timer = timer - dt
			end
        
			if timer < 0 then
			  timer = 0
			  start = 1
			  pontuacao = 0
			end
		  end
		
		------ circulo
			if button.x + 1 >= 100 and button.x -1 <= (largura - 100) then -- aqui a condi��o de movimento
				button.x = button.x - 650 * dt * button.w1

				if button.x < 100 then
					button.x = 100
					button.w1 = button.w1 * (-1)
				end
				if button.x > (largura - 100) then
					button.x = (largura - 100)
					button.w1 = button.w1 * (-1)
				end
			end
			if button.y + 1 >= 20 and button.y -1 <= (altura - 20) then -- aqui a condi��o de movimento
				button.y = button.y - 650 * dt * button.w2

				if button.y < 20 then
					button.y = 20
					button.w2 = button.w2 * (-1)
				end
				if button.y > (altura - 20) then
					button.y = (altura - 20)
					button.w2 = button.w2 * (-1)
				end
			end
		--------------

			-------- quadrado
			if a1.x + 1 >= 100 and a1.x -1 <= (largura - 100) then -- aqui a condi��o de movimento
				a1.x = a1.x - 500 * dt * a1.w1

				if a1.x < 100 then
					a1.x = 100
					a1.w1 = a1.w1 * (-1)
				end
				if a1.x > (largura - 100) then
					a1.x = (largura - 100)
					a1.w1 = a1.w1 * (-1)
				end
			end
			if a1.y + 1 >= 20 and a1.y -1 <= (altura - 20) then -- aqui a condi��o de movimento
				a1.y = a1.y - 500 * dt * a1.w2

				if a1.y < 20 then
					a1.y = 20
					a1.w2 = a1.w2 * (-1)
				end
				if a1.y > (altura - 20) then
					a1.y = (altura - 20)
					a1.w2 = a1.w2 * (-1)
				end
			end
			-----------------

			---------CirculoAmarelo
			if a2.x + 1 >= 100 and a2.x -1 <= (largura - 100) then -- aqui a condi��o de movimento
				a2.x = a2.x - 500 * dt * a2.w1

				if a2.x < 100 then
					a2.x = 100
					a2.w1 = a2.w1 * (-1)
				end
				if a2.x > (largura - 100) then
					a2.x = (largura - 100)
					a2.w1 = a2.w1 * (-1)
				end
			end
			if a2.y + 1 >= 20 and a2.y -1 <= (altura - 20) then -- aqui a condi��o de movimento
				a2.y = a2.y - 1200 * dt * a2.w2

				if a2.y < 20 then
					a2.y = 20
					a2.w2 = a2.w2 * (-1)
				end
				if a2.y > (altura - 20) then
					a2.y = (altura - 20)
					a2.w2 = a2.w2 * (-1)
				end
			end
			------------

			---------circulo Rosa
			if a3.x + 1 >= 100 and a3.x -1 <= (largura - 100) then -- aqui a condi��o de movimento
				a3.x = a3.x - 500 * dt * a3.w1

				if a3.x < 100 then
					a3.x = 100
					a3.w1 = a3.w1 * (-1)
				end
				if a3.x > (largura - 100) then
					a3.x = (largura - 100)
					a3.w1 = a3.w1 * (-1)
				end
			end
			if a3.y + 1 >= 20 and a3.y -1 <= (altura - 20) then -- aqui a condi��o de movimento
				a3.y = a3.y - 200 * dt * a3.w2

				if a3.y < 20 then
					a3.y = 20
					a3.w2 = a3.w2 * (-1)
				end
				if a3.y > (altura - 20) then
					a3.y = (altura - 20)
					a3.w2 = a3.w2 * (-1)
				end
			end

			--------- quadrado Amarelo
			if a4.x + 1 >= 100 and a4.x -1 <= (largura - 100) then -- aqui a condi��o de movimento
				a4.x = a4.x - 500 * dt * a4.w1

				if a4.x < 100 then
					a4.x = 100
					a4.w1 = a4.w1 * (-1)
				end
				if a4.x > (largura - 100) then
					a4.x = (largura - 100)
					a4.w1 = a4.w1 * (-1)
				end
			end
			if a4.y + 1 >= 20 and a4.y -1 <= (altura - 20) then -- aqui a condi��o de movimento
				a4.y = a4.y - 500 * dt * a4.w2

				if a4.y < 20 then
					a4.y = 20
					a4.w2 = a4.w2 * (-1)
				end
				if a4.y > (altura - 20) then
					a4.y = (altura - 20)
					a4.w2 = a4.w2 * (-1)
				end
			end


	end

	function love.draw()

	love.graphics.draw(wallpaper, 0, 0)

		if start == 2 then
				love.graphics.setColor(0, 0, 0.4)
				love.graphics.circle("fill", button.x, button.y, button.size)

				love.graphics.setColor( 0, 0, 0.4 )
				love.graphics.rectangle( "fill", a1.x, a1.y, a1.lado, a1.lado)

				love.graphics.setColor(0.8, 0.7, 0)
				love.graphics.circle( "fill",a2.x, a2.y, a2.size)

				love.graphics.setColor(115, 0, 255)
				love.graphics.circle( "fill", a3.x, a3.y, a3.size)

				love.graphics.setColor(0, 0, 0.4)
				love.graphics.rectangle( "fill", a4.x, a4.y, a4.lado, a4.lado)
			end

					love.graphics.setColor(0,0,0)
					love.graphics.setFont(font)
					love.graphics.print("Pontos: " .. pontuacao)
					love.graphics.print("Tempo: " .. math.ceil(timer), 250, 0)

						if start == 1 then
							love.graphics.printf("Click anywhere to begin!", 1, love.graphics.getHeight() / 2 - 10, love.graphics.getWidth(), "center")

							love.graphics.setFont( PequenaFonte )
							love.graphics.printf("(Only in the blue circle)", 1, love.graphics.getHeight() / 2 + 40, love.graphics.getWidth(), "center")

						end

						pontuacaofinal = pontuacao

						love.graphics.setColor(1, 1, 1)

								if perder then
									love.graphics.draw( imagemPerdeu, dimensoes, 0, 0 )
									love.graphics.setFont (PequenaFonte)
									pontuacaofinal = pontuacao
									love.graphics.print("Você fez " .. pontuacaofinal .. " pontos",560, 450, 0, 1, 1, 1, 1 )
								end

						love.graphics.setColor(0, 0, 0)

						
								--[[
						if timer <= 0 then
						 --	love.graphics.printf("Você fez: ".. pontuacaofinal .. " pontos", 1, love.graphics.getHeight()/2 + 70, love.graphics.getWidth(), "center" )
							love.audio.stop(music)
						end
							--]]

						love.graphics.setColor(1, 1, 1)
						love.graphics.setFont(font)


	end

	function love.mousepressed(x, y, btn, istouch, presses)

		  if btn == 1 and start == 2 then
				if distance(button.x, button.y, love.mouse.getX(), love.mouse.getY()) < button.size then
				  pontuacao = pontuacao + 1
				  love.audio.play(effect)


				------ circulo Azul
				button.x = math.random(button.size, love.graphics.getWidth() - button.size)
				button.y = math.random(button.size, love.graphics.getHeight() - button.size)

				------ quadrado1
				a1.x = math.random(a1.lado, love.graphics.getWidth() - a1.lado)
				a1.y = math.random(a1.lado, love.graphics.getHeight() - a1.lado)

				------ Circulo2
				a2.x = math.random(a2.size, love.graphics.getWidth() - a2.size)
				a2.y = math.random(a2.size, love.graphics.getHeight() - a2.size)

				------ circulo3
				a3.x = math.random(a3.size, love.graphics.getWidth() - a3.size)
				a3.y = math.random(a3.size, love.graphics.getHeight() - a3.size)

				------ quadrado2
				a4.x = math.random(a4.lado, love.graphics.getWidth() - a4.lado)
				a4.y = math.random(a4.lado, love.graphics.getHeight() - a4.lado)


				elseif distance( a1.x, a1.y, love.mouse.getX(), love.mouse.getY() ) < a1.lado or
							distance( a2.x, a2.y, love.mouse.getX(), love.mouse.getY() ) < a2.size or
								distance( a3.x, a3.y, love.mouse.getX(), love.mouse.getY() ) < a3.size or
									distance( a4.x, a4.y, love.mouse.getX(), love.mouse.getY() ) < a4.lado then
					perder = true
					--love.audio.stop(music)
					love.audio.play(GameOver)
					
					
				end

		  end

		  
			  if start == 1 then
				start = 2
				timer = 30
				--love.audio.play(music)
			  end
	end


function distance(x1, y1, x2, y2)

	return math.sqrt((y2 - y1)^2 + (x2 - x1)^2)

end




