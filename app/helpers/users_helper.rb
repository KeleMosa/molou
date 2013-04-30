module UsersHelper
	
	# Returns the Gravatar (http://gravatar.com/) for the given user.
	def gravatar_for(users, options = { size: 50 })
		gravatar_id = Digest::MD5::hexdigest(users.email.downcase)
		size = options[:size]
		gravatar_url = "https://secure.gravatar.com/avatars/#{gravatar_id}.png?s=
							#{size}"
		image_tag(gravatar_url, alt: users.l_name, class: "gravatar")
	end
end
