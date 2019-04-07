# ls Aliases
alias ll='ls -lart'

# Alias cd to change dir and list
c() {
  cd $1;
  ls;
}
alias cd='c'
