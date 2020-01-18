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

local Vehicles = {}
local Keys = {}

RegisterCommand("vehicles", function(source)
    local OwnedVehicles = {}

    for NetVehicle, Vehicle in pairs(Vehicles) do
        if Vehicle.Owner == source then
            table.insert(OwnedVehicles, NetVehicle)
        end
    end

    TriggerClientEvent("Keys:Client:OwnedVehicles", source, OwnedVehicles)
end)

RegisterCommand("givesparekey", function(source, Args)
    if not Args[1] then
        TriggerClientEvent("Keys:Client:Notification", source, "~g~Type '/givesparekey [Vehicle ID]'. If you don't know the vehicle ID, type '/vehicles'.", false)
    else
        local ID = tonumber(Args[1])

        if ID then
            for NetVehicle, Vehicle in pairs(Vehicles) do
                if NetVehicle == ID then
                    if Vehicle.Owner == source then
                        TriggerClientEvent("Keys:Client:SpareKey", source, NetVehicle)
                    else
                        TriggerClientEvent("Keys:Client:Notification", source, "~r~You do not own that vehicle. If you don't know the vehicle ID, type '/vehicles'.", true)
                    end
                    return
                end
            end

            TriggerClientEvent("Keys:Client:Notification", source, "~r~A vehicle with that ID could not be found. If you don't know the vehicle ID, type '/vehicles'.", true)
        else
            TriggerClientEvent("Keys:Client:Notification", source, "~r~Provided ID is not valid. If you don't know the vehicle ID, type '/vehicles'.", true)
        end
    end
end)

RegisterServerEvent("Keys:Server:ClaimVehicle")
AddEventHandler("Keys:Server:ClaimVehicle", function(Vehicle)
    if not Vehicles[Vehicle] then
        Vehicles[Vehicle] = {}
        Vehicles[Vehicle].Owner = source
        Vehicles[Vehicle].Locked = false

        if not Keys[source] then Keys[source] = {} end
        Keys[source][Vehicle] = true

        TriggerClientEvent("Keys:Client:Claimed", source, true, Vehicle)
    else
        TriggerClientEvent("Keys:Client:Claimed", source, false, Vehicle, Vehicles[Vehicle].Owner)
    end
end)

RegisterServerEvent("Keys:Server:UnlockVehicle")
AddEventHandler("Keys:Server:UnlockVehicle", function(Vehicle)
    if Vehicles[Vehicle] then
        if Keys[source][Vehicle] then
            TriggerClientEvent("Keys:Client:UnlockVehicle", source, true, Vehicle, Vehicles[Vehicle].Locked)
            Vehicles[Vehicle].Locked = not Vehicles[Vehicle].Locked
        else
            TriggerClientEvent("Keys:Client:UnlockVehicle", source, false, Vehicle)
        end
    else
        TriggerClientEvent("Keys:Client:UnlockVehicle", source, false, Vehicle)
    end
end)

RegisterServerEvent("Keys:Server:SpareKey")
AddEventHandler("Keys:Server:SpareKey", function(Player, Vehicle)
    if Vehicles[Vehicle] then
        if not Keys[Player] then Keys[Player] = {} end
        Keys[Player][Vehicle] = true

        TriggerClientEvent("Keys:Client:KeysReceived", Player, Vehicle, Vehicles[Vehicle].Owner)
    end
end)