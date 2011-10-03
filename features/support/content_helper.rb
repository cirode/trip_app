module ContentHelper
  def get_content content_description
    case content_description
    when /the sign in prompt/
      "Sign in"
    when /the sign out prompt/
       "Sign out"
    when /the invalid sign in message/
      "Invalid email or password."
    else
      raise "Unknown content #{content_description}"
    end
  end
end
World(ContentHelper)