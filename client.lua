local nightvision = false

function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Wait(5)
    end
end

RegisterNetEvent('qb-nightvision:togsu')
AddEventHandler('qb-nightvision:togsu', function()
    local clothing = true
    local player = PlayerPedId()
    if nightvision == false then
        nightvision = true
        if clothing == true then
            loadAnimDict("mp_masks@standard_car@ds@")
			TaskPlayAnim(player, "mp_masks@standard_car@ds@", "put_on_mask", 2.0, 2.0, 800, 51, 0, false, false, false)
			SetPedComponentVariation(player, 1, 132, 0, 0)
			Citizen.Wait(1000)
			TriggerServerEvent("InteractSound_SV:PlayOnSource", "nightvision", 0.25)
			SetNightvision(true)
        end
    elseif nightvision == true then
        if clothing == true then
            loadAnimDict("mp_masks@standard_car@ds@")
			TaskPlayAnim(player, "mp_masks@standard_car@ds@", "put_on_mask", 2.0, 2.0, 800, 51, 0, false, false, false)
			SetPedComponentVariation(player, 1, 0, 0, 0)
			Citizen.Wait(1000)
			SetNightvision(false)
			nightvision = false
        end
    end
end)

