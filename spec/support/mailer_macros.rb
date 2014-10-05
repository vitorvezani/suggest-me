module MailerMacros
	
	def last_email
		ActionMailer::Base.deliveries.last
	end
	
	def reset_email
		ActionMailer::Base.deliveries = []
	end

	# module InstanceMethods
		
	# end
	
	# def self.included(receiver)
	# 	receiver.extend         ClassMethods
	# 	receiver.send :include, InstanceMethods
	# end
end