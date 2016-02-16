Jekyll::Hooks.register :site, :post_write do |site|
  collections_config = site.config["collections"]
  site.collections.each do |name, collection|
    unless collections_config[name]["disable_index"]
      path = (name != "posts" ? "_site/#{name}/index.html" : "_site/index.html")
      File.open(path, "w") do |f|
        f.write collection.last.to_s
      end
    end
  end
end
