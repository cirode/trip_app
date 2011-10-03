module NavigationHelper
  def path_to page_name
    case page_name
    when /root page/i
      '/'
    else
      raise "Can't find mapping from \"#{page_name}\" to a path."
    end
  end
end
World(NavigationHelper)