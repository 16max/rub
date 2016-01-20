module EventsHelper
	def format_price(event)
		if event.free? 
			#"<strong>FREE</strong>".html_safe
			#raw "<strong>FREE</strong>"
			content_tag(:strong, "FREE")
		else
			number_to_currency(event.price, unit: "€ ")
		end
	end
	def image_for(event)
		if event.image_file.blank?
			image_tag "dummy.jpg", size: "150x100"
		else
			image_tag event.image_file
		end
	end
end