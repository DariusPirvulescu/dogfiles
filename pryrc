def cpy(arg)
  out = arg.is_a?(String) ? arg : arg.inspect
  IO.popen('pbcopy', 'w') { |io| io.puts out }
  puts out
  true
end

if defined?(PryByebug)
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'cc', 'continue'
end
