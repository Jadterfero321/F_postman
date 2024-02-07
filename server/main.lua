RegisterServerEvent("t_postman:giveBox")
AddEventHandler('t_postman:giveBox', function ()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    xPlayer.addInventoryItem(Config.addItemStock, 1)
    xPlayer.removeInventory(Config.rentCar)
end)



RegisterServerEvent("t_postman:done")
AddEventHandler('t_postman:done', function ()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local pay = math.random(Config.Pay1, Config.Pay2)
    local item = Config.addItemStock
    local test = xPlayer.getInventoryItem(item) 
    print("Penize")
    if test.count >= 1 then
        xPlayer.removeInventoryItem(Config.addItemStock, 1)
        xPlayer.addMoney(pay)

    else
        lib.notify({
            id = 'some_identifier',
            title = 'nemáš potrebné predmety',
            style = {
                backgroundColor = '#141517',
                color = '#C1C2C5',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'ban',
            iconColor = '#C53030'
        }) 
    end

    
end)