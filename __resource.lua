-- @Project: FiveM Tools
-- @License: GNU General Public License v3.0
-- @Author: CanadienFr

resource_manifest_version "77731fab-63ca-442c-a67b-abc70f28dfa5"

dependencies {
  "ft_players",
  "ft_cash"
}

server_scripts {
  "sv_events.lua",
  "sv_functions.lua"
}

server_exports {
  "DespositBank",
  "WithdrawBank",
  "AddBank",
  "RemoveBank",
  "TransferBank"
}

