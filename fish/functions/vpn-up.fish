# Defined via `source`
function vpn-up --wraps='sudo wg-quick up mullvad-ch8' --description 'alias vpn-up=sudo wg-quick up mullvad-ch8'
  sudo wg-quick up mullvad-ch8 $argv; 
end
