# jekyll-lastindex

You want your index page to be your latest blog post? Just use this plugin.

## Usage

Copy the `last_index.rb` file into your `_plugins` folder and you're all set.
It will copy the rendered version of the latest entry in any collection to
`<collection_name>/index.html`, as well as the latest post to `/index.html`.

### Don't want to generate an index for some collections?

Just add a `disable_index: true` key to your `_config.yml` file.

```
collections:
  foobar:
    output: true
    disable_index: true
```
