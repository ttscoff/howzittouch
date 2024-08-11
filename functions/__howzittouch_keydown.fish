function __howzittouch_keydown -a index
	if ! __howzittouch_has_buildnotes
		return 0
	end

	set -l tasks (__howzittouch_list_tasks)
	set -l cmd "howzit"

	if test -n "$howzittouch_command"
		set cmd "$howzittouch_command"
	end

	if test $index -eq 1
		commandline -r "$cmd"
		commandline -f execute
	else
		commandline -r "$cmd -r $tasks[$index]"
		commandline -f execute
	end
end
