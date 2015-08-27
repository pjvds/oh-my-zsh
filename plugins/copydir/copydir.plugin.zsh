function copydir {
  if type pbcopy &> /dev/null; then
    pwd | tr -d "\r\n" | pbcopy
  else
    echo 'pbcopy not found'
    echo 'Please check if pbcopy is correctly installed.'
    return 1
  fi
}
