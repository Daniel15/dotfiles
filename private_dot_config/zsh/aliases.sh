# Aliases

alias ll="ls -lah"

if [[ $DANIEL15_ENV == "work-devserver" ]]; then
# Aliases - work devservers
  # hg diff, fancy
  alias hgdf='hg diff --color=always | diff-so-fancy | less -FR'
  # hg rebase another commit here
  alias hgrh='hg rebase --dest . --source'
  # hg update to stable
  alias hgus='hg pull && hg update remote/stable'

  # jf submit as draft
  alias jfsd='jf submit --draft'
  # jf submit stack as a draft
  alias jfssd='jf submit --stack --draft'

  # hg rebase to stable, and update to new commit
  function hgrs() {
    hg pull && hg rebase --source "$1" --dest remote/stable && hg go "successors($1)"
  }

  # Basic fastmod to rename a symbol based on BigGrep results
  function fastmod-rename() {
    fastmod "\b$1\b" "$2" `tbgs -sl "$1"`
  }
fi
