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
end
