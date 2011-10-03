module ContentHelper
  def get_content content_description
    case content_description
    when /the sign in prompt/
      "Sign in"
    when /the sign out prompt/
       "Sign out"
    when /the invalid sign in message/
      "Invalid Email/Password combination."
    when /the sign up link/
      "Sign up"
    when /the default authlogic message/
      "You did not provide any details for authentication."
    when /the sign in button/
      "Sign in"
    when /the invalid email message/
      "Email should look like an email address."
    when /the invalid password message/
      "Password is too short (minimum is 4 characters)"
    when /the invalid password confirmation message/
      "doesn't match confirmation"
    else
      raise "Unknown content #{content_description}"
    end
  end
end
World(ContentHelper)