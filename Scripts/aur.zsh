paru -Sl | awk '{print $2($4=="" ? "" : " *")}' | sk --multi --preview 'paru -Si {1}' --reverse | xargs -ro paru -S --needed --skipreview
