module ApplicationHelper

  def make_markdown(str)
    raw Kramdown::Document.new(str.to_s).to_html
  end

end
