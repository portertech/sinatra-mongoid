require 'sinatra/base'
require 'mongoid'
require 'mongo_ext'

module Sinatra
  module MongoidExtension
    module DatabaseConnection
      connection = Mongo::Connection.new(mongo_host)
      Mongoid.database = connection.db(mongo_db)
      if mongo_user
        Mongoid.database.authenticate(mongo_user, mongo_password)
      end
    end

    def self.registered(app)
      app.set :mongo_host,     ENV['MONGO_HOST'] || 'localhost'
      app.set :mongo_db,       ENV['MONGO_DB']
      app.set :mongo_user,     ENV['MONGO_USER']
      app.set :mongo_password, ENV['MONGO_PASSWORD']

      app.helpers MongoidExtension::DatabaseConnection
    end
  end

  register MongoidExtension
end
