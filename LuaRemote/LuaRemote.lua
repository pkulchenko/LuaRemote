local SERVER_ADDRESS = "192.168.1.111"
local SERVER_PORT = "8171"

function Main()
  print("Welcome to Remote Lua!")
  print("Touch screen to start a new session")
  EventMonitor:OnTouchUp(OnTouchUp)
  EventMonitor:OnTouchDrag(OnTouchDrag)
end

function OnTouchDrag()
  if MAK_BACK == key or MAK_0 == key then
    maExit(0)
  end
end

function OnTouchUp()
  mobdebug.loop(SERVER_ADDRESS, SERVER_PORT)
  print("Completed session")
end

-- Start the program
Main()
