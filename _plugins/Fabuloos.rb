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

		class AsideBlock < Liquid::Block
			include Liquid::StandardFilters

			def render(context)
				site      = context.registers[:site]
				converter = site.getConverterImpl(Jekyll::Converters::Markdown)

				# Almost the same as markdownify_inline
				content   = super.strip
				content   = converter.convert(content)
				content   = replace(content, '<p>', '')
				content   = replace(content, '</p>', '')

				'<aside class="lead">' + content + "</aside>"
			end
		end

		class TabsBlock < Liquid::Block
			def render(context)
				'<div class="tab-content">' + super + "</div>"
			end
		end

		class TabBlock < Liquid::Block
			def initialize(tag_name, tab, tokens)
				super
				@tab = tab.strip
			end

			def render(context)
				return "" if @tab.empty?

				site      = context.registers[:site]
				converter = site.getConverterImpl(Jekyll::Converters::Markdown)

				lines = super.rstrip.split(/\r\n|\r|\n/).select { |line| line.size > 0 }
				indentation = lines.map do |line|
					match = line.match(/^(\s+)[^\s]+/)
					match ? match[1].size : 0
				end
				indentation = indentation.min

				content = indentation ? super.gsub(/^#{' |\t' * indentation}/, '') : super
				content = converter.convert(content)
				content = content.strip # Strip again otherwise jekyll will go mad

				'<div id="' + @tab + '" class="tab-pane' + (@tab == "browsers" ? " active" : "") + '">' + content + "</div>"
			end
		end
	end
end

Liquid::Template.register_tag("alert", Fabuloos::Tags::AlertBlock)
Liquid::Template.register_tag("aside", Fabuloos::Tags::AsideBlock)
Liquid::Template.register_tag("tabs",  Fabuloos::Tags::TabsBlock)
Liquid::Template.register_tag("tab",   Fabuloos::Tags::TabBlock)

Liquid::Template.register_filter(Fabuloos::Filters)