# Defined via `source`
function pi-down --wraps='sudo wg-quick down pi' --description 'alias pi-down=sudo wg-quick down pi'
  sudo wg-quick down pi $argv; 
end
