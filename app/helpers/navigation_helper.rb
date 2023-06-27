module NavigationHelper
  def links_partial_path(location)
    if user_signed_in?
      "layouts/navigation/#{location}/signed_in_links"
    else
      "layouts/navigation/#{location}/non_signed_in_links"
    end
  end
end
