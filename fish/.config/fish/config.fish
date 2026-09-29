function load_ssh_key_on_demand --on-variable PWD
    if string match -q "$HOME/repositories*" "$PWD"
        keychain --eval --quiet gitlab_id | source
        keychain --eval --quiet github_id | source
    end
end

if status is-interactive
	function fish_greeting
    		fastfetch
    		curl -4 -s --max-time 1.5 ifconfig.me > /tmp/public_ip &
	end

	load_ssh_key_on_demand
end

