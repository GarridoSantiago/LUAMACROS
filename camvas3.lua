lmc_assign_keyboard('CAMBAS');
lmc_print_devices();


--[[PRES AND HOLD SHIFT (en los parenticis que hay abajo con 3 números el primero
es la tecla correspondiente al modificador en el teclado principal
en este caso 16 es shift usar key id para identificar)]]
lmc_set_handler('CAMBAS', function(button,direction)

if (direction == 0) then return end
  if (button == 106) then lmc_send_input(16, 0, 0)

  end
end
)

lmc_set_handler('CAMBAS', function(button,direction)

if (direction == 1) then return end
  if (button == 106) then lmc_send_input(16, 0, 2)

  end
end
)
--END PRESS AND HOLD shift------------------------------------------------------

--[[PRES AND HOLD CTRL (en los parenticis que hay abajo con 3 números el primero
es la tecla correspondiente al modificador en el teclado principal
en este caso 17 es ctrl usar key id para identificar)]]
lmc_set_handler('CAMBAS', function(button,direction)

if (direction == 0) then return end
  if (button == 109) then lmc_send_input(17, 0, 0)

  end
end
)

lmc_set_handler('CAMBAS', function(button,direction)

if (direction == 1) then return end
  if (button == 109) then lmc_send_input(17, 0, 2)

  end
end
)

--END PRESS AND HOLD CTRL-------------------------------------------------------

--[[PRES AND HOLD ALT (en los parenticis que hay abajo con 3 números el primero
es la tecla correspondiente al modificador en el teclado principal
en este caso 18 es alt usar key id para identificar)]]
lmc_set_handler('CAMBAS', function(button,direction)

if (direction == 0) then return end
  if (button == 107) then lmc_send_input(18, 0, 0)

  end
end
)

lmc_set_handler('CAMBAS', function(button,direction)

if (direction == 1) then return end
  if (button == 107) then lmc_send_input(18, 0, 2)

  end
end
)
--END PRESS AND HOLD ALT --------------------------------------------------------------------------

lmc_set_handler('CAMBAS', function(button,direction)

-- LA SIGUENTE LINEA ESPECIFICA CUANDO SE MANDA LA ORDEN:
-- 1 : CUANDO SE SUELTA LA TECLA 0: CUANDO SE APRIETA
  if (direction == 0) then return end

--LOS SIGUIENTES COMANDOS ELIMINAN LA FUNCION DE LAS TECLAS QUE SE ASIGNARON COMO CTRL, ALT Y SHIFT
if (button == 106) then
  lmc_send_keys('{F24}', 50)
elseif (button == 107) then
  lmc_send_keys('{F24}', 50)
elseif (button == 109) then
  lmc_send_keys('{F24}', 50)
--------------------------------------------------------------------------------------------------------------------------

--[[ sintaxis para programar las teclas:
elseif (button == NUMTECLA) then   --EN ESTA LINEA SE CAMBIA "NUMTECLA" POR EL NÚMERO IDENTIFICADO CON keyID
  lmc_send_keys('COMANDO', 50)  -- EN ESTA SEGUNDA LINEA SE CAMBIA "COMANDO" POR LA TECLA O COMANDO DESEADO PARA LA TECLA

ESTO SE PUEDE REPETIR EL NÚMERO DE VECES NECESARIAS PARA UNA TECLA

SI QUIERES HACEr COMANDOS DE TECLAS COMO "CTRL+S" SE ESCRIBE ASI: '^s'
lo mismo con alt y shift
    CTRL: ^
    SHIFT: +
    ALT: %

PARA ASIGNAR TECLAS ESPECIALES SE UTILIZAN LAS LLAMADAS CON {} POR EJEMPLO: {BACKSPACE}, {F12}, {TAB}.

PARA VER OTRAS TECLAS VE LA LISTA DE AQUÍ : https://github.com/me2d13/luamacros/wiki/List-of-Keys

SI QUIERES MODIFICAR UN GRUPO DE CARACTERES COMO "CTRL+ABC" EL GRUPO SE PONE ENTRE PARENTESIS '^(ABC)'

SI DEJAS UNA TECLA SIN NINGUNA FUNCION ES MEjOR ASIGNARLE {F24} COMO EN LAS LINEAS DE ARRIBA


]]
----------------------------------------------------------------------------------------------------------------------------

elseif (button == 8) then
  lmc_send_keys('e', 50)

elseif (button == 12) then
  lmc_send_keys('z', 50)

elseif (button == 13) then
  lmc_send_keys('b', 50)

elseif (button == 33) then
  lmc_send_keys('^w', 50)

elseif (button == 34) then
  lmc_send_keys('n', 50)

elseif (button == 35) then
  lmc_send_keys('^m', 50)

elseif (button == 36) then
  lmc_send_keys('{F24}', 50)

elseif (button == 37) then
  lmc_send_keys('^{F12}', 50)

elseif (button == 38) then
  lmc_send_keys('f', 50)

elseif (button == 39) then
  lmc_send_keys('v', 50)

elseif (button == 40) then
  lmc_send_keys('%^h', 50)

elseif (button == 45) then
  lmc_send_keys('^+z', 50)

elseif (button == 46) then
  lmc_send_keys('s', 50)

elseif (button == 96) then
  lmc_send_keys('^z', 50)

elseif (button == 97) then
  lmc_send_keys('^{F10}', 50)

elseif (button == 98) then
  lmc_send_keys('r', 50)

elseif (button == 99) then
  lmc_send_keys('x', 50)

elseif (button == 100) then
  lmc_send_keys('^{F11}', 50)

elseif (button == 101) then
  lmc_send_keys('z', 50)

elseif (button == 102) then
  lmc_send_keys('^t', 50)

elseif (button == 103) then
  lmc_send_keys('^l', 50)

elseif (button == 104) then
  lmc_send_keys('{TAB}', 50)

elseif (button == 105) then
  lmc_send_keys('^d', 50)

elseif (button == 110) then
  lmc_send_keys('p', 50)

elseif (button == 111) then
  lmc_send_keys('m', 50)

-- A VECES CUANDO BOCK NUM ESTA ACTIVADO CADA TECLA NO SÓLO MANDA SU PROPIA ACCIÓN SI NO TAMBIEN UNA TAL TECLA 144
-- PARA EVITAR MALOS FUNCIONAMIENTOS LE ASIGNAREMOS A 144 F24
elseif (button == 144) then
  lmc_send_keys('{F24}', 50)

  end
end
)
