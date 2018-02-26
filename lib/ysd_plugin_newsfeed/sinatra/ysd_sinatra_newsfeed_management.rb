require 'json'

module YSDPluginNewsfeed
  module Sinatra
    module NewsfeedManagement

      def self.registered(app)

        #
        # Newsfeed category information
        #
        app.get '/admin/newsfeed/:category/:identifier', :allowed_usergroups => ['booking_manager','staff'] do

          @data = ::Yito::Model::Newsfeed::Newsfeed.all(conditions: {category: params[:category],
                                                                     identifier: params[:identifier]},
                                                        order: [:id.desc])

          load_page(:category_newsfeed)

        end


      end

    end
  end
end