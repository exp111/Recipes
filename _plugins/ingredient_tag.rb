module Jekyll
    class IngredientTag < Liquid::Tag
	    def initialize(tag_name, text, tokens)
		    super
		    @value = text.strip!
	    end

	    def render(context)
		    "<span base=\"#{@value}\"></span>"
	    end
    end
end

Liquid::Template.register_tag('ingredient', Jekyll::IngredientTag)