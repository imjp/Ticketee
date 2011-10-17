module ApplicationHelper
	def admins_only(&block)
		block.call if current_user.try(:admin?)
	end
	
	def title
     base_title = 'Ticketee'
     if @title.nil?
          base_title
     else
          "#{@title}"
     end
	end

end
