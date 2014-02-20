function rake
  if test -f bin/rake
    bin/rake  $argv
  else
    command rake $argv
  end
end
