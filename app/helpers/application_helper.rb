module ApplicationHelper
	def g(user, klazz=nil, options={})
		gravatar_image_tag(user.email, alt:user.email, class:klazz, gravatar: options)
	end

	def markdown(content)
		renderer = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)
		options = {
			autolink: true,
			no_intra_emphasis: true,
			fenced_code_blocks: true,
			lax_html_blocks: true,
			strikethrough: true,
			superscript: true
		}
		Redcarpet::Markdown.new(renderer, options).render(content).html_safe
	end	
end
