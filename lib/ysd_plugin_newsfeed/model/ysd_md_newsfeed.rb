require 'data_mapper' unless defined?DataMapper::Resource

module Yito
  module Model
    module Newsfeed
      class Newsfeed
        include DataMapper::Resource

        storage_names[:default] = 'newsfeedds_newsfeeds' # stored in newsfeedds_newsfeeds in default storage

        property :id, Serial
        property :category, String, length: 256
        property :action, String, length: 256
        property :identifier, String, length: 256
        property :description, String, length: 256
        property :attributes_updated, Json

        include Audit::Auditor

        before :create do
          created_at = DateTime.now if created_at.nil?
        end
        
      end
    end
  end
end