function j -d "Autojump alias" -w "autojump"
  cd (env AUTOJUMP_SOURCED=1 autojump $argv)
end
