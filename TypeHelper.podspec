Pod::Spec.new do |s|
  s.name             = "TypeHelper"
  s.summary          = "A simple function for getting the name of the non optional type in Swift."
  s.version          = "0.1.0"
  s.homepage         = "https://github.com/markvaldy/TypeHelper"
  s.license          = {
    :type => 'MIT',
    :file => 'LICENSE.md'
  }
  s.author           = { "Vadym Markov" => "impressionwave@gmail.com" }
  s.source           = {
    :git => "https://github.com/markvaldy/TypeHelper.git",
    :tag => s.version.to_s
  }
  s.social_media_url = 'https://twitter.com/markvaldy'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Source/**/*'
end
