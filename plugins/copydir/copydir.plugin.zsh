function copydir {
  if type pbcopy &> /dev/null; then
    pwd | tr -d "\r\n" | pbcopy
  elif type xsel &> /dev/null; then
    pwd | tr -d "\r\n" | xsel --clipboard --input
  else
    echo 'No clipboard util found!'
    echo 'Please install pbcopy when you are on Mac OSX or xsel on Linux.'
    return 1
  fi
}
