
class Coursera
	include HTTParty

		base_uri 'https://www.googleapis.com/books/v1/volumes'
		default_params q: "isbn:0747532699"
		format :json

	def self.for term
		get("", query: {})["items"]
	end
end

pp Coursera.for "python"