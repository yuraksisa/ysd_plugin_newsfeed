require 'ysd-plugins' unless defined?Plugins::Plugin

Plugins::SinatraAppPlugin.register :newsfeed do

  name=        'newsfeed'
  author=      'yurak sisa'
  description= 'Sales Channels'
  version=     '0.1'
  hooker YsdPluginNewsfeed::NewsfeedExtension
  sinatra_extension YSDPluginNewsfeed::Sinatra::Newsfeed
  sinatra_extension YSDPluginNewsfeed::Sinatra::NewsfeedManagement

end