Sinatra Mongoid
===============

A Mongoid extension for Sinatra.

Usage
-----

Gemfile:

    gem 'sinatra'
    gem 'sinatra-mongoid', :require_as => 'sinatra/mongoid'

Bundle:

    gem bundle

Create your Sinatra app:

    require File.dirname(__FILE__) + '/vendor/gems/environment'
    Bundler.require_env

    set :mongo_db, 'db-name'

Configuration
-------------

All Sinatra options you can set are:

    :mongo_host
    :mongo_db
    :mongo_port
    :mongo_user
    :mongo_password

Their default values are:

    ENV['MONGOID_HOST']		|| 'localhost'
    ENV['MONGOID_DATABASE']	|| 'changme'
    ENV['MONGOID_PORT']		|| Mongo::Connection::DEFAULT_PORT
    ENV['MONGOID_USERNAME']
    ENV['MONGOID_PASSWORD']

Heroku & MongoHQ:

require 'uri'

if ENV['MONGOHQ_URL']
  mongo_uri = URI.parse(ENV['MONGOHQ_URL'])
  ENV['MONGOID_HOST'] = mongo_uri.host
  ENV['MONGOID_PORT'] = mongo_uri.port.to_s
  ENV['MONGOID_USERNAME'] = mongo_uri.user
  ENV['MONGOID_PASSWORD'] = mongo_uri.password
  ENV['MONGOID_DATABASE'] = mongo_uri.path.gsub("/", "")
end

Resources
---------

* [Mongoid](http://mongoid.org)
* [Sinatra](http://sinatrarb.com)

Authors
-------

Dan Croak, Justin Reidy.
