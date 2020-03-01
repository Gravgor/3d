local id = 1
local dtext = {}


function create3DText(player, scale, font, color, distance,...)
    if not (color) then 
        color = tocolor(255, 255, 255)
    end
    if not (scale) then 
        scale = 1
    end 
    if not (font) then 
        font = "default"
    end 
    if not (distance) then 
        distance = 10
    end
    local text = table.concat({ ... }, " ")
     if text and #text > 0 then 
              local x,y,z = getElementPosition(player)
              id = id + 1
               dtext[id] = {text,x,y,z,scale,font,color,distance}
               dTextTworzClient()
            end 
        end



            function dTextTworzClient()
                triggerClientEvent(getRootElement(),"textTworzClient",getRootElement(),dtext)
            end

                    

        
            


    


    
