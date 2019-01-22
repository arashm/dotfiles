function nginx-enable --argument-names config_name -d "enable the given nginx config"

  set nginx_conf_path "/etc/nginx"
  set available_directory "servers-available"
  set enabled_directory "servers-enabled"

  if test ! -n "$config_name"
    echo "No config is given."
    return
  end

  if test -e "$nginx_conf_path/$enabled_directory/$config_name"
    echo "This config is already enabled."
    return
  end

  if test ! -e "$nginx_conf_path/$available_directory/$config_name"
    echo "The given config doesn't exist."
    return
  end

  echo "####"
  echo "Enabling \"$config_name\""
  echo "####"

  sudo rm $nginx_conf_path/$enabled_directory/*
  sudo ln -s "$nginx_conf_path/$available_directory/$config_name" "$nginx_conf_path/$enabled_directory/$config_name"
  echo "Config file copied. Reloading nginx:"
  sudo nginx -s reload

end
