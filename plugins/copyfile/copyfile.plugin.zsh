function copyfile {
  [[ "$#" != 1 ]] && return 1
  local file_to_copy=$1

  if type pbcopy &> /dev/null; then
    cat $file_to_copy | pbcopy
    pwd | tr -d "\r\n" | pbcopy
  else
    echo 'pbcopy not found'
    echo 'Please check if pbcopy is correctly installed.'
    return 1
  fi
}
