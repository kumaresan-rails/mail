class UserMailer < ActionMailer::Base
  default :from => "kumareshc10@gmail.com"

	def registration_confirmation(user)
		@user = user
                attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
attachments["ruby.pdf"] = File.read("#{Rails.root}/public/images/ruby.pdf")
 		mail(:to => "#{user.name} <#{user.email}>", :subject =>"Registered")
	end
end
