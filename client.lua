addEvent("textTworzClient",true)
addEventHandler("textTworzClient",getRootElement(),function(textyzSerwera)
    tworzTexta = textyzSerwera
end)

addEventHandler("onClientRender",root, function()
    for id, v in pairs(tworzTexta) do 
        local x,y,z = getElementPosition(localPlayer)
          if getDistanceBetweenPoints3D(v[2], v[3], v[4], x,y,z) <= v[8] then 
            local screenx, screeny = getScreenFromWorldPosition(v[2], v[3], v[4]) 
            if screenx and screeny then 
              dxDrawText(v[1],screenx, screeny, screenx, screeny, v[7], v[5], v[6], "center", "center")
            end
        end
    end
end)
