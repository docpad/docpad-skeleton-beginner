# Define the Configuration
docpadConfig = {
    templateData:
        site:
            title: "My Website"
        getPreparedTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else @site.title
	collections:
		pages: ->
			@getCollection('html').findAllLive({isPage:true}).on "add", (model) ->
				model.setMetaDefaults({layout:"default"})
}

# Export the Configuration
module.exports = docpadConfig