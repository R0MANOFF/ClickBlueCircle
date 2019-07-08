
function love.conf( t )
	t.identity = nil
	t.version = "11.2"
	t.console = false -- abre ou esconde o console junto ao jogo
	t.externalstorage = false
	t.gammacorrect = false

	t.window.title = "Blue circle" -- titulo da janela

	t.window.icon = nil -- para mudar o icon da aplica��o

	t.window.width = 1280 -- largura da janela

	t.window.height = 720 -- altura da janela

	t.window.bordeless = true -- fara com que a janela n tenha borda se for true

	t.window.resizable = false -- redimensionmento da janela

	t.window.minwidth = 1 -- tamanho minimo da janela se resisible for true

	t.window.minheight = 1 -- tamanho minh=imo para altura d ajnela

	t.window.fullscreen = false -- modo tela cheia de true

	t.window.fullscreentype = "desktop"

	t.window.vaync = true -- para o app ter sincroiza��o vertical

	t.window.msaa = 0 -- qtd dde amostras para o anticerrilhamento

	t.window.display = 1 -- quanto houver mais de um monitor no jogo defina qual sera usado

	t.window.highdpi = false

	t.window.y = nil

	t.window.x = nil
--[[
	t.modules.audio = true -- ativa ou desativas os recursos de audio
	t.modules.event = true -- habilita os eventos como tecla pressiionada, click moouse, etc
	t.modules.graphics  = true -- habilita renderiza��o de qualquer grafico na tela do software
	t.modules.image = true -- habilita adi�ao de imagem no programa
	t.modules.joystick = true -- pode-se usar um controle que esteja plugado ao computador
	t.modules.keyboard = true -- pode usar o teclado no app
	t.modules.math = true -- usar matematica
	t.modules.mouse = true
	t.modules.physics = true
	t.modules.sound = true -- apenas habilita decodifica��o de arquivos de som
	t.modules.system = true
	t.modules.timer = true
	t.modules.touch = true
	t.modules.video = true
	t.modules.window = true
	t.modules.thread = true -- habilita processos paralelos em multiprocessadores
	--]]
end




