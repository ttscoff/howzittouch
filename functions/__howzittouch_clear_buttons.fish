function __howzittouch_clear_buttons
	for idx in (seq 20)
		__howzittouch_osc_command (printf 'SetKeyLabel=%s=%s' F$idx F$idx)
		bind -e f$idx
	end
end
