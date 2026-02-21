function weather -d 'Show weather from http://wttr.in'
  if test -n "$argv"
    curl "http://wttr.in/$argv"
  else
    curl "http://wttr.in/mashhad"
  end
end

