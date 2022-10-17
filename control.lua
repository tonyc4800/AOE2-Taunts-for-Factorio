--control.lua

-- Play taunt based on user input
script.on_event(defines.events.on_console_chat, function(event)    
  local userInput = event.message  
  if (isInTauntlist(userInput)) then   
    game.play_sound({path = userInput})
  end    
end)

-- Check if x exist in the tauntlist
function isInTauntlist(x)   
  if (isNum(x)) then
    local num = tonumber(x)
    return isInt(num) and isInRange(num)
  end  
end

-- Check if x is a number
function isNum(x)
  local num = tonumber(x)
  return num ~= nil
end

-- Check if x is integer
function isInt(x)   
  return math.floor(x) == x
end

-- Check if number is a value from 1 - 42
function isInRange(x)
  return 1 <= x and x <= 42
end 