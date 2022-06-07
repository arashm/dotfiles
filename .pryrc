# frozen_string_literal: true

if defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
elsif defined?(PryStackExplorer)
  Pry.commands.alias_command 'c', 'exit'
  Pry.commands.alias_command 'u', 'up'
  Pry.commands.alias_command 'd', 'down'
end

begin
  require 'pry-clipboard'
  # aliases
  Pry.config.commands.alias_command 'ch', 'copy-history'
  Pry.config.commands.alias_command 'cr', 'copy-result'
rescue LoadError
  warn "can't load pry-clipboard"
end
