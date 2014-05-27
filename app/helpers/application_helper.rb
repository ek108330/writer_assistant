module ApplicationHelper
	
	# Return a title on a per-page basis.
	def full_title(page_title)
		base_title = "Ruby on Rails Kevin's Writer Assistant"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end

	def logo
		image_tag("logo.gif", :alt => "Writer Assistant", :class => "round")
	end
end