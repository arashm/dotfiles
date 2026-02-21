function atomb -a name size -d "Create tomb in one run"
  tomb dig $name -s $size
  tomb forge -k $name.key
  tomb lock $name -k $name.key
  tomb open $name -k $name.key
end

