require 'haml'
require 'rack/coffee'
require 'sass/plugin/rack'
require './app'

Sass::Plugin.options[:style] = :compressed

use Sass::Plugin::Rack
use Rack::Coffee, root: 'public'

run App
