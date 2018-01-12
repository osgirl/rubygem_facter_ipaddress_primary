# FACTERLIB return/wrapper
path = File.expand_path('../../lib/facter', __FILE__)
# Exec?
unless ARGV.empty?
  env = ENV.to_hash
  env['FACTERLIB'] = [env['FACTERLIB'], path].compact.join(':')
  Process.exec(env, *ARGV)
end
# Simple return if not used to call facter
puts path
