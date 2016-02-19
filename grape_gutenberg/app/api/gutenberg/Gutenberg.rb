module Gutenberg
	class API < Grape::API
		version 'v1', using: :header, vendor: 'ga-student'
		format :json
		prefix :api

	  resource :statuses do
	    desc 'Return a public timeline.'
	    get :hello do
	    	'"hi"'
	    end
	  end
	end
end