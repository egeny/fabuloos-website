module Fabuloos
	module Filters
		include Liquid::StandardFilters
		include Jekyll::Filters

		def markdownify_inline(input)
			input = input.strip;
			input = newline_to_br(input)
			input = markdownify(input)
			input = replace(input, '<p>', '')
			input = replace(input, '</p>', '')
			input
		end
	end

	module Tags
		class AlertBlock < Liquid::Block
			include Liquid::StandardFilters
			include Jekyll::Tags

			def initialize(tag_name, file, tokens)
				super
				@file = file.empty? ? "warning" : file.strip;
				@file = "alert-" + @file + ".html"
			end

			def render(context)
				site      = context.registers[:site]
				converter = site.getConverterImpl(Jekyll::Converters::Markdown)

				# Same as markdownify_inline
				content   = super.strip
				content   = newline_to_br(content)
				content   = converter.convert(content)
				content   = replace(content, '<p>', '')
				content   = replace(content, '</p>', '')

				context["content"] = content

				Jekyll::Tags::IncludeTag.new("include", @file, nil).render(context)
			end
		end
	end
end

Liquid::Template.register_tag("alert", Fabuloos::Tags::AlertBlock)
Liquid::Template.register_filter(Fabuloos::Filters)