class PagesController < ApplicationController
	respond_to :json, :html, :jpg, :xml

	def demo
		client = Behance::Client.new(access_token: "woVRVLtIP57UhvdjLIpZiFq7Ppq2hHrP")
	    @infos = client.user("digitalz")

	    user = client.user("digitalz")
	    obj = ActiveSupport::JSON.decode(user.to_json)

	    @id = obj['id']
	    @first_name = obj['first_name']
	    @last_name = obj['last_name']
	    @username = obj['username']
	    @city = obj['city']
	    @country = obj['country']
	    @company = obj['company']
	    @occupation = obj['occupation']
	    @url = obj['url']
	    @thumb50 = obj['images']['50']
	    @thumb115 = obj['images']['115']
	    @thumb138 = obj['images']['138']
	    @fields = obj['fields']
	    @twitter = obj['twitter']
	    @followers = obj['stats']['followers']
	    @following = obj['stats']['following']
	    @appreciations = obj['stats']['appreciations']
	    @views = obj['stats']['views']
    	@comments = obj['stats']['comments']
	    
	end

	def project
		client = Behance::Client.new(access_token: "woVRVLtIP57UhvdjLIpZiFq7Ppq2hHrP")
		@projectinfo = client.user_projects("digitalz")

	    @project = client.user_projects("digitalz")
	    
	end

end
