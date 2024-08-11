set -gx __howzittouch_wd_has_tasks 0

function __howzittouch_pwd -v PWD
	if test "$TERM_PROGRAM" = "iTerm.app"
		__howzittouch
	end
end

# if test "$TERM_PROGRAM" = "iTerm.app"
# 	__howzittouch
# end
