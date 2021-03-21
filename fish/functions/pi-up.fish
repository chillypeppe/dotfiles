# Defined via `source`
function pi-up --wraps='sudo wg-quick up pi' --description 'alias pi-up=sudo wg-quick up pi'
  sudo wg-quick up pi $argv; 
end
