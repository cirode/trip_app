module ContentHelper
  def get_content content_description
    case content_description
    when /the sign in prompt/
      I18n.t("sign_in_prompt")
    when /the sign out prompt/
       I18n.t("sign_out_prompt")
    else
      raise "Unknown content #{content_description}"
    end
  end
end
World(ContentHelper)