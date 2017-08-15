-- @Project: FiveM Tools
-- @License: GNU General Public License v3.0
-- @Author: CanadienFr

-- Desposit money in the bank.
function DespositBank(playerid, amount)

  local data = exports.ft_players:GetPlayerFormSource(playerid)
  
  local cash = data.cash - ( amount )
  local bank = data.bank + ( amount )
  
  data:Set("cash", cash)
  data:Set("bank", bank)

end

-- Withdraw money from the bank.
function WithdrawBank(playerid, amount)

  local data = exports.ft_players:GetPlayerFormSource(playerid)

  local cash = data.cash + ( amount )
  local bank = data.bank - ( amount )
  
  data:Set("cash", cash)
  data:Set("bank", bank)
  
end

-- Add money in the bank.
function AddBank(playerid, amount)

  local data = exports.ft_players:GetPlayerFormSource(playerid)
  
  local bank = data.bank + ( amount )
  data:Set("bank", bank)
    
end

-- Remove money in the bank.
function RemoveBank(playerid, amount)

  local data = exports.ft_players:GetPlayerFormSource(playerid)
  
  local bank = data.bank + ( amount )
  data:Set("bank", bank)

end

-- Transfer bank to an other player bank
function TransferBank(playerid, targetid, amount)
  
  RemoveBank(playerid, amount)
  AddBank(targetid, amount)
    
end
