-- @Project: FiveM Tools
-- @License: GNU General Public License v3.0

-- Desposit money in the bank.
function DespositMoney(emitter, amount)

  TriggerEvent("ft_gamemode:SvGetPlayerData", emitter, "data", function (data)
        
    local cash = data.cash - ( amount + 0.0 )
    local bank = data.bank + ( amount + 0.0 )

    TriggerEvent("ft_gamemode:SvSetPlayerData", emitter, { cash = cash, bank = bank })

  end)

end

RegisterServerEvent('ft_simplebank:SvDespositMoney')
AddEventHandler('ft_simplebank:SvDespositMoney', function(emitter, amount)

  DespositMoney(emitter, amount)

end)

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
