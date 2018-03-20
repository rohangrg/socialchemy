class UserMailer < ApplicationMailer


	def new_comment(comment)
		@comment = comment
		mail(
				to: "alchemy.cn18@gmail.com",
				subject: "Socialchemy:New Comment"
			)
	end

end
