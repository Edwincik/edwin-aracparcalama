QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent("edwin-vehicleshredding:giveitem")
AddEventHandler("edwin-vehicleshredding:giveitem", function(class)
    local src = source
        local xPlayer = QBCore.Functions.GetPlayer(src)
        if xPlayer then
            local normalrim = math.random(2, 4)
            local qualityrims = math.random(2, 4)
            local doors = math.random(1,2)
            local speaker = math.random(2,4)

            if math.random(0, 100) < 40 then 
                xPlayer.Functions.AddItem('splaka', 1)
            end

            if math.random(0, 100) > 50 then
                xPlayer.Functions.AddItem('belt', 1)
            end

            xPlayer.Functions.AddItem('battery', 1)


            xPlayer.Functions.AddItem('speaker', speaker)
            xPlayer.Functions.AddItem('doors', doors)
        
            if not class == 8 and not class == 4 then
                xPlayer.Functions.AddItem('airbag', 1)
            end

            if class == 7 or class == 6 then
                xPlayer.Functions.AddItem('highradio', 1)
                xPlayer.Functions.AddItem('highrim', qualityrims)
            else
                xPlayer.Functions.AddItem('lowradio', 1)
                xPlayer.Functions.AddItem('stockrim', normalrim)
        end
    end
end)


RegisterNetEvent('edwin-vehicleshredding:server:sellItems', function(itemName, itemAmount, itemPrice)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local totalPrice = (tonumber(itemAmount) * itemPrice)
    if Player.Functions.RemoveItem(itemName, tonumber(itemAmount)) then
        if Config.BankMoney then
            Player.Functions.AddMoney('bank', totalPrice)
        else
            Player.Functions.AddMoney('cash', totalPrice)
        end
        TriggerClientEvent('QBCore:Notify', src, Lang:t('success.sold', { value = tonumber(itemAmount), value2 = QBCore.Shared.Items[itemName].label, value3 = totalPrice }),'success')
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[itemName], 'remove')
    else
        TriggerClientEvent('QBCore:Notify', src, Lang:t('error.no_items'), 'error')
    end
    TriggerClientEvent('edwin-vehicleshredding:client:openMenu', src)
end)


QBCore.Functions.CreateCallback('edwin-vehicleshredding:server:getInv', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    local inventory = Player.PlayerData.items
    return cb(inventory)
end)
