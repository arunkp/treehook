module ApplicationHelper
	def flash_Class(type)
		case type
		when "alert"
			"alert-error"
		when "notice"
			"alert-success"
		else
			""
		end
	end
end
