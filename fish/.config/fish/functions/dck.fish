function dck --description 'Manager docker services'
	if test (count $argv) -eq 0
		echo "Error: No actions"
		echo "Use: dck [on|off|status]"
	end

	switch "$argv"
		case "on"
			sudo systemctl start docker.service containerd.service
			echo "Docker started!"
		case "off"
			sudo systemctl stop docker.service containerd.service
			echo "Docker stopped!"
		case "status"
			sudo systemctl status docker.service containerd.service
	end
end
