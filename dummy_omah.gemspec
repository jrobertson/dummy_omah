Gem::Specification.new do |s|
  s.name = 'dummy_omah'
  s.version = '0.2.0'
  s.summary = 'Simulates receiving email messages for testing Omah ' + 
      '(Offline Mail Helper) gem plugins etc.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/dummy_omah.rb']
  s.add_runtime_dependency('omah', '~> 0.8', '>=0.8.0')
  s.signing_key = '../privatekeys/dummy_omah.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/dummy_omah'
end
