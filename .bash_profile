forest_fire() {
  echo "This deletes all of the following branches:" && \
  git branch --list "$1"
  confirm && git branch --list "$1" | xargs git branch -D
}

confirm() {
  read -r -p "${1:-Are you sure? [y/N]} " response
  case $response in
    [yY][eE][sS]|[yY])
      true
      ;;
    *)
      false
      ;;
  esac
}
