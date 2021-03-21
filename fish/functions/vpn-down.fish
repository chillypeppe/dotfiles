# Defined via `source`
function vpn-down --wraps='sudo wg-quick down mullvad-ch8' --description 'alias vpn-down=sudo wg-quick down mullvad-ch8'
  sudo wg-quick down mullvad-ch8 $argv; 
end
