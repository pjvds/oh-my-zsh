function copydir {
  if type pbcopy &> /dev/null; then
    pwd | tr -d "\r\n" | pbcopy
  elif type xsel &> /dev/null; then
    pwd | tr -d "\r\n" | xsel --clipboard --input
  elif type xclip &> /dev/null; then
    pwd | tr -d "\r\n" | xclip --selection clipboard
  else
    echo 'No clipboard util found!'
    echo 'Please install one of the following utils:'
    echo '\tpbcopy'
    echo '\txsel'
    echo '\txclip'
    return 1
  fi
}
