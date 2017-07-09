-- @Date:   2017-07-01T12:38:45+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-07-06T22:42:30+02:00
-- @License: GNU General Public License v3.0

-- Withdraw money from the bank.
function WithdrawBankMoney(emitter, amount)

  TriggerEvent("ft_gamemode:SvGetPlayerData", emitter, "data", function (data)

    local cash = data.cash + ( amount + 0.0 )
    local bank = data.bank - ( amount + 0.0 )

    TriggerEvent("ft_gamemode:SvSetPlayerData", emitter, { cash = cash, bank = bank })

  end)

end

RegisterServerEvent('ft_simplebank:SvWithdrawBankMoney')
AddEventHandler('ft_simplebank:SvWithdrawBankMoney', function(emitter, amount)

  WithdrawBankMoney(emitter, amount)

end)

-- Transfer bank to an other player bank
function TransferBankMoney(emitter, receiver, amount)

  AddBankMoney(receiver, amount)
  RemoveBankMoney(emitter, amount)
    
end

RegisterServerEvent('ft_simplebank:SvTransferBankMoney')
AddEventHandler('ft_simplebank:SvTransferBankMoney', function(emitter, receiver, amount)

  TransferBankMoney(emitter, receiver, amount)

end)

-- Add money in the bank.
function AddBankMoney(emitter, amount)

  TriggerEvent("ft_gamemode:SvGetPlayerData", emitter, "data", function (data)
  
    local bank = data.bank + ( amount + 0.0 )

    TriggerEvent("ft_gamemode:SvSetPlayerData", emitter, { bank = bank })
    
  end)

end

RegisterServerEvent('ft_simplebank:SvAddBankMoney')
AddEventHandler('ft_simplebank:SvAddBankMoney', function(emitter, amount)

  AddBankMoney(emitter, amount)

end)

-- Remove money in the bank.
function RemoveBankMoney(emitter, amount)

  TriggerEvent("ft_gamemode:SvGetPlayerData", emitter, "data", function (data)
  
    local bank = data.bank - ( amount + 0.0 )

    TriggerEvent("ft_gamemode:SvSetPlayerData", emitter, { bank = bank })
    
  end)

end

RegisterServerEvent('ft_simplebank:SvRemoveBankMoney')
AddEventHandler('ft_simplebank:SvRemoveBankMoney', function(emitter, amount)

  RemoveBankMoney(emitter, amount)

end)
