set -g __howzittouch_script "howzit"

function __howzittouch_list_tasks
	set -l stat (stat -f "%m" {B,b}uild*.{txt,md})

	if test "$stat" != "$__howzittouch_mtime"
		set -g __howzittouch_mtime $stat
		set -g __howzittouch_packages (howzit -T ^/dev/null)
		set -p __howzittouch_packages (howzit --title-only ^/dev/null)":"
	end

	printf "%s\n" $__howzittouch_packages
end
