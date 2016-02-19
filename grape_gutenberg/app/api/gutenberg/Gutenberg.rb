module Gutenberg
	class API < Grape::API
		version 'v1', using: :header, vendor: 'ga-student'
		format :json
		prefix :api

		get 'hello' do
    		{:version => version}
		end
	end
end