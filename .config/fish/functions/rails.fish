function rails
  if test -f bin/rails
    bin/rails  $argv
  else
    command rails $argv
  end
end
