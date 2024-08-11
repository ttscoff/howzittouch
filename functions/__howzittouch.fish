function __howzittouch
  __howzittouch_clear_buttons

  if ! __howzittouch_has_buildnotes
    return 0
  end

  set -l tasks (__howzittouch_list_tasks)
  set key 1

  if test (count $tasks) = 0
    if test "$__howzittouch_wd_has_tasks" = 1
      __howzittouch_osc_command 'PopKeyLabels=howzit-scripts'
    end

    set __howzittouch_wd_has_tasks 0
  end

  if test "$__howzittouch_wd_has_tasks" = 0
    __howzittouch_osc_command 'PopKeyLabels=howzit-scripts'
    __howzittouch_osc_command 'PushKeyLabels=howzit-scripts'
  end

  set __howzittouch_wd_has_tasks 1

  for task in $tasks
    __howzittouch_osc_command (printf 'SetKeyLabel=%s=%s' F$key $task)

    set key (math $key + 1)

    if test $key -gt 20
      break
    end
  end
end
