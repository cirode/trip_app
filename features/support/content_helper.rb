module ContentHelper
  def get_content content_description
    case content_description
    when /the log in prompt/
      "log in"
    when /the log out prompt/
      "log out"
    else
      raise "Unknown content #{content_description}"
    end
  end
end
World(ContentHelper)