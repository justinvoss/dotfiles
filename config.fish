
# loves me some vim
set -x EDITOR vim

# handy shortcuts
function gs
  git status
end

function ss
  svn status
end

# that stylish prompt
function fish_prompt
  set_color green
  printf (hostname|cut -d . -f 1)
  set_color normal
  printf ':'
  set_color white
  printf (prompt_pwd)
  set_color normal
  printf ' $ '
end

