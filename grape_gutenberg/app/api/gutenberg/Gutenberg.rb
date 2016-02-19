module Gutenberg
	class API < Grape::API
		version 'v1', using: :header, vendor: 'ga-student'
		format :json
		prefix :book
		
		get '/:number' do
			number = params[:number].to_i

			redis ||= Redis.new(:host => 'localhost', :port => 6379)

    	path = open("../epub/#{number}/pg#{number}.rdf")
    	cached_data = redis.get(number)
    	if cached_data == nil
	      doc = Nokogiri::XML(path)
	      variant = doc.xpath('/rdf:RDF/xml:base')
	      book = {
	      	title: doc.xpath('/rdf:RDF/pgterms:ebook/dcterms:title')[0].text,
	      	text: doc.xpath("/rdf:RDF/pgterms:ebook/dcterms:hasFormat/pgterms:file[contains(@rdf:about, '-h.htm')]")
	      }

	      redis.set(number, JSON.generate(book))

	      return book
	    else
	    	return JSON.parse(cached_data)
	    end
		end
	end
end