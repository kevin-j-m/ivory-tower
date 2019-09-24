require "helix_runtime"

# :nocov:
begin
  require "fizzbuzz/native"
rescue LoadError
  warn "Unable to load fizzbuzz/native. Please run `rake build`"
end
# :nocov:
