Gem::Specification.new do |spec|
  raise 'RubyGems 2.0 or newer is required.' unless spec.respond_to?(:metadata)
  spec.name = File.basename(__FILE__, '.*')
  spec.files = `git ls-files -z`.split("\x0")
  spec.executables = ['ipaddress_primary_path']
  spec.summary = 'facter ipaddress_primary fact giving a more reliable selection for main NIC'
  spec.version = '1.1.0'
  spec.authors = ['Andrew Smith']
  spec.email = ['andrew.smith at moneysupermarket.com']
  spec.description = 'Determines more reliably primary/default NIC in multiple'\
                     ' NIC scenarios'
  spec.homepage = 'https://github.com/MSMFG/rubygem_facter_ipaddress_primary'
  spec.license = 'Apache-2.0'
end
