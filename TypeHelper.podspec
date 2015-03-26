Pod::Spec.new do |s|
  s.name             = "TypeHelper"
  s.version          = "0.1.0"
  s.summary          = "A simple function for getting the name of the non optional type in Swift."
  s.homepage         = "https://github.com/markvaldy/TypeHelper"
  s.license          = {
    :type => 'MIT',
    :file => 'LICENSE.md'
  }
  s.source           = {
    :git => "https://github.com/markvaldy/TypeHelper.git",
    :tag => s.version.to_s
  }
  s.author           = {
    "Vadym Markov" => "impressionwave@gmail.com"
  }
  s.social_media_url = 'https://twitter.com/markvaldy'

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.10"
  s.requires_arc = true

  s.source_files = 'Source/**/*.{swift}'
end
