-- @Project: FiveM Tools
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
