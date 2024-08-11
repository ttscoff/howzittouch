function __howzittouch_has_buildnotes
	set notes {B,b}uild*.{txt,md}
	if count $notes >/dev/null
		return 0
	else
		return 1
	end
end
