Sinatra Mongoid
===============

A Mongoid extension for Sinatra.

Usage
-----

Install the gem:

    sudo gem install sinatra-mongoid

Create your Sinatra app:

    require 'rubygems'
    require 'sinatra'
    require 'sinatra/mongoid'

    set :mongo_db, 'job-board'

    configure :production do
      set :mongo_host, 'db.mongohq.com'
    end

Configuration
-------------

All Sinatra options you can set are:

    :mongo_host
    :mongo_db
    :mongo_user
    :mongo_password

Their default values are:

    ENV['MONGO_HOST'] || 'localhost'
    ENV['MONGO_DB']
    ENV['MONGO_USER']
    ENV['MONGO_PASSWORD']

Resources
---------

* [Mongoid](http://mongoid.org)
* [Sinatra](http://sinatrarb.com)
