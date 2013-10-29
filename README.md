# Acitree

This is Dragos Ursu's excellent tree view control made available as a Rails engine. Just include it in your Gemfile, bundle install and you can instantly start using the aciTree control!

Read more about this JQuery control here:
http://plugins.jquery.com/aciTree/

In your appplication.js:
    //= require acitree-rails

Add to application.css:
    *= require aciTree
    *= require demo

Now in your code:
    $('#tree').aciTree({
      ajax: { url: 'json/checkbox.json'},
      checkbox: true,
      checkboxName: 'checkbox1[]'
    });

You can dump a ActiveRecord object that uses acts_as_tree like so:
    def to_tree
      obj = {
        id: self.id,
        label: self.name,
        isFolder: true,
        open: true,
        checkbox: false,
        radio: false,
        childs: []
      }
      self.children.each do |child|
        obj[:childs].push child.to_tree
      end
      obj
    end
