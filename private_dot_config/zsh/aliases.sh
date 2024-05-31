# Aliases

alias ll="ls -lah"

if [[ $DANIEL15_ENV == "work-devserver" ]]; then
# Aliases - work devservers
  alias hgdf='hg diff --color=always | diff-so-fancy | less -FR'
  alias hgrs='hg pull && hg rebase --dest remote/stable --source'
  alias hgrh='hg rebase --dest . --source'
  alias hgus='hg pull && hg update remote/stable'

  alias jfsd='jf submit --draft'
  alias jfssd='jf submit --stack --draft'

  # Basic fastmod to rename a symbol based on BigGrep results
  function fastmod-rename() {
    fastmod "\b$1\b" "$2" `tbgs -sl "$1"`
  }
fi
