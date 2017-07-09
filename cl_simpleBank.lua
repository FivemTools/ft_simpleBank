-- @Date:   2017-07-01T12:38:38+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-07-06T19:18:17+02:00
-- @License: GNU General Public License v3.0

function GetBankMoney()

  return exports.ft_gamemode:GetPlayerData("bank")

end

RegisterNetEvent("ft_simplebank:ClGetBank")
AddEventHandler("ft_simplebank:ClGetBank", function(callback)
  Citizen.CreateThread(function()

    local bank = GetBankMoney()
    callback(bank)

  end)
end)
