require_relative 'html_with_albino_renderer'

module RailsMarkitup
  module ViewHelpers
    def markdown(text)
      text ||= ''
      renderer_options = { hard_wrap: true, filter_html: true }
      markdown_options = { fenced_code_blocks: true, autolink: true,  no_intra_emphasis: true, space_after_headers: true }
      @markdown = Redcarpet::Markdown.new(HTMLWithAlbinoRenderer.new(renderer_options), markdown_options)

      @markdown.render(text).html_safe
    end
  end
end
