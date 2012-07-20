module UsersHelper

  # Returns the Gravatar for the user
  # **TO-DO: UPDATE THIS TO PAPERCLIP UPLOADED IMAGE**
  def gravatar_for(user, options = { size: 50 } )
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "http://gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.full_name, class: "gravatar")
  end

end
