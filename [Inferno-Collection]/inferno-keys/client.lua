-- Inferno Collection Keys Version 1.0 Alpha
--
-- Copyright (c) 2020, Christopher M, Inferno Collection. All rights reserved.
--
-- This project is licensed under the following:
-- Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to use, copy, modify, and merge the software, under the following conditions:
-- The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. THE SOFTWARE MAY NOT BE SOLD.
--

--
--		Nothing past this point needs to be edited, all the settings for the resource are found ABOVE this line.
--		Do not make changes below this line unless you know what you are doing!
--

local SpareKeys = {}

AddEventHandler("onClientResourceStart", function (ResourceName)
	if GetCurrentResourceName() == ResourceName then
        TriggerEvent("chat:addTemplate", "keys", "<img src='data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEASABIAAD//gAyUHJvY2Vzc2VkIEJ5IGVCYXkgd2l0aCBJbWFnZU1hZ2ljaywgejEuMS4wLiB8fEIx/9sAQwAGBAUGBQQGBgUGBwcGCAoQCgoJCQoUDg8MEBcUGBgXFBYWGh0lHxobIxwWFiAsICMmJykqKRkfLTAtKDAlKCko/9sAQwEHBwcKCAoTCgoTKBoWGigoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgo/8IAEQgAgACAAwEiAAIRAQMRAf/EABsAAQACAwEBAAAAAAAAAAAAAAAEBgECBQcD/8QAFwEBAQEBAAAAAAAAAAAAAAAAAAECA//aAAwDAQACEAMQAAAB9UAAAAAAAAxnQR/jTJm7Z8asx6P9OH1CSxm6AAAxDk1yZr9liVO3mQJ/Ist1w807kekyqxYIkC6AAj0G/wBImYvAj3Kdafp26vZJlcSVefa9R8V9ojo5xm6AA1g9DWTzrl+ncOPP4Xe4Nc/7bzrJvpdY+HO3371/qak1pvrQAGPl9SQuVY9JKfYOhsc+vXCLFPldGvZtunUTv2WHMSVtkNAAAAfGF09M5ovO9B5GbrYeL2tT6jWgAAAAMa7jTcP/xAAoEAABBAEDAgUFAAAAAAAAAAACAAEDBBEFEjATIBQhIzEyBhAVQFD/2gAIAQEAAQUC/hZwnkWSTHh2LPG74RmptRmsyzFg6Ni3CFecJxA+I3y9+U79nEGlUBd3cJz6tabqnUs9ZwLgPybUp3gqaDXGGpqVn8hbP1Wl9JUR6aeXc1G34gY3y3dL8fqF8lqmqDNFtFh+S3YEZhY9zkUdjw8ge/dJ7a9E7hW8h06Joq2qMASSk6FnaOA8t5ySRjt4DFXNNKF4LBCpXczcBNFXlYnwLaIOyzGYkhPPe7IgwrdCKy9qlZgbcyIsNp1E70kldqccMR+IhsbnE8Jnz3uGU4OynpV502j0sxxswkCkpdJdRpWjsHCo5NzCeeDDLa33MFZrDOj3ViAiiKtZGZAfIQZUke4Z6ZwLImqU/VAPjxu2UQYU9KKUq9ZoUHty4ZMP6X//xAAgEQABAwQCAwAAAAAAAAAAAAABAAIRAxAgMRIwEyFA/9oACAEDAQE/AfgOAxpU/IVUZwMZteW6RM+zaFrGFFtrXRPV/8QAHREAAQQCAwAAAAAAAAAAAAAAAAECETESMBAgQP/aAAgBAgEBPwH0udiNdl3uyq4nRBQi6IE0/wD/xAA3EAABAgMGAwQGCwAAAAAAAAABAAIDESESMDFBUWEEEyIyQlJxIzNQobHwBRA0U2JygaKywdH/2gAIAQEABj8C9h0+qt6SSABjNcr6PbTx94+SLInMPEaPNQuoiKzwn/UXQiaYg4hVupBDg+GkWDHRx32Cc/8AUk4uKicVxHbidXkrc5FCvLjjsuCsPaGR25ZHcXT3N9Y7ob5rnGnMFNmjBSH2WD+4rqzqCar0lEYj6FC3JhGDxiEQ+QjN7W41ueGZ+Fzk3hOBoXCTiaWAuSxrjTBonRWpgg5qyPkoNJE9FXAJkUdw+5bXEGOJkQ5tdLQp8TFx0QdMGJE6i4fBQnMAEV5rLMalSGKJBFn+SecqIMYJucZIN0pcbLmcJ1Mzh5jyTjDP5gU58Qze7TTRScZboNka97JBrMBqucWza34qbHTuaK0eiJ42qbm8xniaqFSy0Rl0w29p6y5Q7ytQYmNR85qThYf7iq3NF6WCDuKKsN52LkGsaGtGQVQCN1PhRT7s/wBKy4GY1xCsxZuh5EYhWmGY2vaKvS8YOVmOKOzyKtQDLUFSHS/wqt6WuE2nVWoE3sHdzCoUWv8AWN1vqK0QWv8AE1GRJn7C/8QAKhAAAQIFAgUFAAMAAAAAAAAAAQARITFBUWFxkTCBobHwECDB0fFAUOH/2gAIAQEAAT8h/oSiHojtCioD4ZohABzciZgnRoJA4ZOEgMko44KWPWn0g28jlxoj6NZtcKhw2BhDRFgmfESQES05YdWSnn0CFE4aQmALGv1lQ4wvVg/EO6h2JzSppngEk4vdUHR0JwIvEmeaCeYMBT6UQagkRgaLnBZtEMudpvkGuqjm7S04eXQY+TmRVAGsFLX5HBQLXYPLMEWsshFhTVMbdeTy2JvjA3V6igMf0mKJKorYIETRhesIwIZohD3C6DDIAzfspTdv/hNJKOiBgd3RczSMgp5HYPVBXMgqAWINcKVmFZDBHWAxIxuqZAi5KvBodpBD3EOmXBDnAgyKPBvx8wVHGOjfIvnuq03mACgNE7EHScDUVUMFqDzkjwEXZ1TTLUcncfIUEFZuNVXe9xEiRvtubzuijmL3siSsikcbXLPMAcDDVOEMiys5pkjwmxQNrKDQbED3hegE4rUdEM/KttlITEFgEwCDOBAOCigboTQQHgkL5F00chJxcYQggHqgJuATUWBMEQ6qpH7Uz53QYkt/5lE20I6rnqme11Q4gCAA04JFecj53QFdhp0/PJI9Ab1F3ijfiAIVGSUrP0Y7KNbaHNMDdA3GE1EAU/hf/9oADAMBAAIAAwAAABAAAAAAAABDAbsgAACcxUq4AADhttn6gADB6LFNMgADzYA2MOUAAAAAfa4AAAAACAD/xAAdEQEAAgICAwAAAAAAAAAAAAABABEQICEwMUFR/9oACAEDAQE/EOm1wP3Z4wx6PmcRl9aJcTuFcK5jcl+2lZeSCSjA3skPue+On//EABwRAAMAAgMBAAAAAAAAAAAAAAABESAwECExQf/aAAgBAgEBPxDT6TS1RYfSWkN4eDGl0CnQNnsuMIMd6C0PV//EACoQAAIBAwEHBAIDAAAAAAAAAAABESExUUEQMGFxgcHwIJGh4UDxULHR/9oACAEBAAE/EP4JetmiSnrKQzI2ojd7QoK4zMQUjOxQjEj0RJstBp/gNb6iwp+O9sadw2OvrGiQJovIGSI0k6p8LaJQMqvmDRew03nzh0BNhmXATkFoyZ4DGz059dVLWl88oiqMQyXyqlL04JX0OpXW9GAWybN3maolB6b9JfnqEj0J4mx6sj7jiI4VGJJQwFRixsBIqnDRE7twGqJLTlXpIbTL12uZwHWCLCRTPB++vY0898d8Ymu8XIdVuH44qyxyJ1GUfihkjKXuALGALKo9ADUXzuBOIs3cEIVNOmLW6nAE4wDlyCiKelq7PWjjm4TQXdMrmX4kglVM8VwChNLpO9rV7jzFXn2jQDqq0Cj6spy+tZPxDqttayuWQJ9KUcVw02CnuKWiPK+lDwdpiFcpTKcibduNUKh0t7HwDoQvT/Wyfypvhmyjr5gQ9B274WU9T2Uxl2nlDWQ9nujI/wAy2ORsbrMiCchMz7Fi3SBV4lxOq3bAD9Em54Yg0CfokkoXkLDECdkmkz7Z4hGXU3noYkK+WeHXmNoHe/suxSc7wuMXjfviJqQ43wwHNRuX4cwdD0V0ObetdCpGh8+5kAg01rSsG+fBdRY/wn//2Q==' height='16'> <b>{0}</b>: {1}")
    end
end)

RegisterCommand("claim", function()
    local PlayerPed = PlayerPedId()
    local Vehicle = GetVehiclePedIsUsing(PlayerPed)

    if Vehicle == 0 then Vehicle = VehicleInfront(PlayerPed) end

    if Vehicle ~= 0 and Vehicle then
        TriggerServerEvent("Keys:Server:ClaimVehicle", VehToNet(Vehicle))
    else
        NewNoti("~r~No vehicle found!", true)
    end
end)

RegisterNetEvent("Keys:Client:Claimed")
AddEventHandler("Keys:Client:Claimed", function(Success, NetVehicle, OwnerID)
    local VehicleName = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(NetToVeh(NetVehicle))))

    if VehicleName == "NULL" then VehicleName = "vehicle" end

    if Success then
        NewNoti("~g~You claimed the " .. VehicleName, false)
    else
        NewNoti("~r~The " .. VehicleName .. " is owned by " .. GetPlayerName(GetPlayerFromServerId(OwnerID)), true)
    end
end)

RegisterNetEvent("Keys:Client:UnlockVehicle")
AddEventHandler("Keys:Client:UnlockVehicle", function(Success, NetVehicle, Locked)
    local Vehicle = NetToVeh(NetVehicle)
    local VehicleName = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(Vehicle)))

    if VehicleName == "NULL" then VehicleName = "vehicle" end

    if Success then
        if Locked then
            SetVehicleDoorsLocked(Vehicle, 1)
            NewNoti("~g~You unlocked the " .. VehicleName, false)
        else
            SetVehicleDoorsLocked(Vehicle, 2)
            NewNoti("~g~You locked the " .. VehicleName, false)
        end
    else
        NewNoti("~r~You do not have the keys to this " .. VehicleName, true)
    end
end)

RegisterNetEvent("Keys:Client:OwnedVehicles")
AddEventHandler("Keys:Client:OwnedVehicles", function(OwnedVehicles)
    local VehicleCount = 0
    local Vehicles = {}
    for _, _ in pairs(OwnedVehicles) do VehicleCount = VehicleCount + 1 end

    if VehicleCount > 0 then
        for _, NetVehicle in ipairs(OwnedVehicles) do
            local VehicleName = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(NetToVeh(NetVehicle))))

            if VehicleName == "NULL" then VehicleName = "vehicle" end

            table.insert(Vehicles, {NetVehicle, VehicleName})
        end

        local MessageText = "You own " .. VehicleCount .. " Vehicles:\n"

        for _, Vehicle in ipairs(Vehicles) do
            local Plate = GetVehicleNumberPlateText(NetToVeh(Vehicle[1]))

            if Plate then
                MessageText = MessageText .. "\n[" .. Vehicle[1] .. "] " .. Vehicle[2] .. " (" .. Plate .. ")"
            else
                MessageText = MessageText .. "\n[" .. Vehicle[1] .. "] " .. Vehicle[2]
            end
        end

        TriggerEvent("chat:addMessage", {
            templateId = "keys",
            color = { 255, 171, 0},
            multiline = true,
            args = {"Keys", MessageText}
        })
    else
        NewNoti("~r~You do not own any vehicles!", true)
    end
end)

RegisterNetEvent("Keys:Client:SpareKey")
AddEventHandler("Keys:Client:SpareKey", function(NetVehicle)
    local Player = PlayerInfront(PlayerPedId())

    if Player then
        TriggerServerEvent("Keys:Server:SpareKey", GetPlayerServerId(NetworkGetPlayerIndexFromPed(Player)), NetVehicle)
    else
        NewNoti("~r~No nearby player found to give keys to!", true)
    end
end)

RegisterNetEvent("Keys:Client:KeysReceived")
AddEventHandler("Keys:Client:KeysReceived", function(NetVehicle, OwnerID)
    local VehicleName = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(NetToVeh(NetVehicle))))

    if VehicleName == "NULL" then VehicleName = "vehicle" end

    NewNoti("~g~" .. GetPlayerName(GetPlayerFromServerId(OwnerID)) .. " gave you a spare key to their " .. VehicleName, false)
end)

RegisterNetEvent("Keys:Client:Notification")
AddEventHandler("Keys:Client:Notification", function(Text, Flash) NewNoti(Text, Flash) end)

-- Draws notification on client's screen
function NewNoti(Text, Flash)
    -- Tell GTA that a string will be passed
    SetNotificationTextEntry("STRING")
    -- Pass text to notification
    AddTextComponentString(Text)
    -- Draw new notification on client's screen
    DrawNotification(Flash, true)
end

function VehicleInfront(PlayerPed)
    local PlayerCoords = GetEntityCoords(PlayerPed, false)
    local OffSet = GetOffsetFromEntityInWorldCoords(PlayerPed, 0.0, 10.0, 0.0)
    local RayCast = StartShapeTestRay(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, OffSet.x, OffSet.y, OffSet.z, 10, PlayerPed, 0)
    local _, _, RayCoords, _, RayEntity = GetRaycastResult(RayCast)

    if Vdist(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, RayCoords.x, RayCoords.y, RayCoords.z) < 3 then
        if IsEntityAVehicle(RayEntity) then
            return RayEntity
        else
            return false
        end
    else
        return false
    end
end

function PlayerInfront(PlayerPed)
    local PlayerCoords = GetEntityCoords(PlayerPed, false)
    local OffSet = GetOffsetFromEntityInWorldCoords(PlayerPed, 0.0, 10.0, 0.0)
    local RayCast = StartShapeTestRay(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, OffSet.x, OffSet.y, OffSet.z, 10, PlayerPed, 0)
    local _, _, RayCoords, _, RayEntity = GetRaycastResult(RayCast)

    if Vdist(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, RayCoords.x, RayCoords.y, RayCoords.z) < 3 then
        if IsPedAPlayer(RayEntity) then
            return RayEntity
        else
            return false
        end
    else
        return false
    end
end

-- Resource Master Loop
Citizen.CreateThread(function()
	while true do
        Citizen.Wait(0)

        if IsControlPressed(0, 21) and IsControlJustPressed(0, 182) then
            local PlayerPed = PlayerPedId()
            local Vehicle = GetVehiclePedIsUsing(PlayerPed)

            if Vehicle == 0 then Vehicle = VehicleInfront(PlayerPed) end

            if Vehicle and Vehicle ~= 0 then
                TriggerServerEvent("Keys:Server:UnlockVehicle", VehToNet(Vehicle))
            end
        end

    end
end)