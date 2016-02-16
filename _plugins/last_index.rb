Jekyll::Hooks.register :site, :post_write do |site|
  site.collections.each do |name, collection|
    path = (name != "posts" ? "_site/#{name}/index.html" : "_site/index.html")
    File.open(path, "w") do |f|
      f.write collection.last.to_s
    end
  end
end
