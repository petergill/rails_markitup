A MarkDown TextEditor with jQuery and Markitup! and redcarpet for Rails 3
=========================================================================

__use: [Markitup](http://markitup.jaysalvat.com/ "Markitup")__ and [Redcarpet](https://github.com/tanoku/redcarpet "Redcarpet")

__[Demo](http://markitup.jaysalvat.com/downloads/demo.php?id=markupsets/markdown)__

Support Env:
------------
Rails3.1.0+/Ruby1.9.1+

## Usage:

**you need install pygments**

    easy_install pygments

a. In Gemfile:

    gem "redcarpet"
    gem "albino"
    gem 'rails_markitup', github: 'Gonzih/rails_markitup', branch: 'rails31'


b. In your textarea , simple\_form\_for exapmle:

    = form.input :content, :as => :text, :input_html => {:id => 'markdown'}

c. In your application.css:

    //= require markitup

d. In your application.js:

    //= require markitup

    $(document).ready(function(){
      $('#markdown').markItUp(myMarkdownSettings);
    });

e. In your show page:

    = markdown(@topic.content)
