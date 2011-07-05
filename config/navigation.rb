# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  # Specify a custom renderer if needed.
  # The default renderer is SimpleNavigation::Renderer::List which renders HTML lists.
  # The renderer can also be specified as option in the render_navigation call.
  # navigation.renderer = Your::Custom::Renderer

  # Specify the class that will be applied to active navigation items. Defaults to 'selected'
  # navigation.selected_class = 'active'

  # Item keys are normally added to list items as id.
  # This setting turns that off
  # navigation.autogenerate_item_ids = false

  # You can override the default logic that is used to autogenerate the item ids.
  # To do this, define a Proc which takes the key of the current item as argument.
  # The example below would add a prefix to each key.
  # navigation.id_generator = Proc.new {|key| "my-prefix-#{key}"}

  # If you need to add custom html around item names, you can define a proc that will be called with the name you pass in to the navigation.
  # The example below shows how to wrap items spans.
  # navigation.name_generator = Proc.new {|name| "<span>#{name}</span>"}

  # The auto highlight feature is turned on by default.
  # This turns it off globally (for the whole plugin)
  # navigation.auto_highlight = false

  # Define the primary navigation
  # navigation.items do |primary|
  #     primary.item :what, 'What We Do', '#' do |what_we_do|
  #       what_we_do.item :strategy, 'Strategy', '#'
  #       what_we_do.item :innovation, 'Innovation', '#'
  #       what_we_do.item :engagement, 'Engagement', '#'
  #       what_we_do.item :empowerment, 'Empowerment', '#'
  #       what_we_do.item :learning, 'Learning', '#'
  #       what_we_do.item :leadership, 'Leadership', '#'
  #     end
  #     primary.item :who_we_are, 'Who We Are', people_path do |who_we_are|
  #       who_we_are.item :our_community, "Our Community", 'our-community'
  #       who_we_are.item :our_dna, "Our DNA", 'our-dna'
  #     end
  #     primary.item :news, 'What\'s New', '/' do |news|
  #       news.item :articles, 'Articles', '#'
  #       news.item :blog, 'Blog', '#'
  #     end
  #     primary.item :contact_us, 'Contact Us', 'contact-us'
  # 
  #   end

end