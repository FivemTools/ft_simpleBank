-- @Project: FiveM Tools
-- @License: GNU General Public License v3.0
-- @Author: CanadienFr

RegisterServerEvent('ft_simplebank:SvDespositMoney')
AddEventHandler('ft_simplebank:SvDespositMoney', function(amount)
  DespositMoney(source, amount)
end)

RegisterServerEvent('ft_simplebank:WithdrawBankMoney')
AddEventHandler('ft_simplebank:WithdrawBankMoney', function(amount)
  WithdrawBankMoney(source, amount)
end)

RegisterServerEvent('ft_simplebank:TransferBankMoney')
AddEventHandler('ft_simplebank:TransferBankMoney', function(targetid, amount)
  TransferBankMoney(source, targetid, amount)
end)

RegisterServerEvent('ft_simplebank:AddBankMoney')
AddEventHandler('ft_simplebank:AddBankMoney', function(amount)
  AddBankMoney(source, amount)
end)

RegisterServerEvent('ft_simplebank:RemoveBankMoney')
AddEventHandler('ft_simplebank:RemoveBankMoney', function(amount)
  RemoveBankMoney(source, amount)
end)