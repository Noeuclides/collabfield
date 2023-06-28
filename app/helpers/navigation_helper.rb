module NavigationHelper
  def links_partial_path
    dir = "layouts/navigation/collapsible_elements"
    user_signed_in? ? "#{dir}/signed_in_links" : "#{dir}/non_signed_in_links"
  end
end
