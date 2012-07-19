
# loves me some vim
set -x EDITOR vim

# handy shortcuts
function gs
  git status
end

function ss
  svn status
end

function parse_git_branch
  set ref (git symbolic-ref HEAD 2> /dev/null)
  if [ $ref ]
    printf " ("
    printf (echo $ref | sed 's/refs\/heads\///g')
    printf ")"
  end
end

# that stylish prompt
function fish_prompt
  set_color green
  printf (hostname|cut -d . -f 1)
  set_color normal
  printf ':'
  set_color white
  printf (prompt_pwd)
  set_color blue
  parse_git_branch
  set_color normal
  printf ' $ '
end

