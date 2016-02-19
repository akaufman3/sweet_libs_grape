module Gutenberg
	class API < Grape::API
		version 'v1', using: :header, vendor: 'ga-student'
		format :json
		prefix :api

	    def getBookData
	      Dir.glob('../epub/**/*.rdf') do |file|
	        doc = File.open(file) { |f| Nokogiri::XML(f) }
	        variant = doc.xpath('/rdf:RDF/xml:base')
	        title = doc.xpath('/rdf:RDF/pgterms:ebook/dcterms:title')[0].text
	        raise
	      end
	    end

		get 'hello' do
    		{:version => version}
		end
	end
end