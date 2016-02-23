# Ruby Grape

[Grape API Slides](http://slides.com/ruthacosta/deck/speaker "Grape API")

"An opinionated micro-framework for creating REST-like APIs in Ruby."

"...designed to run on Rack or complement web application framework such as Rails and Sinatra by providing a simple DSL..."

"...built in support for common conventions: multiple formats, subdomain/prefix restriction, content negotiation, versioning..."

"Because grape APIs are Rack applications, it is very easy (in rails 3) and quite easy (in rails 2.3) to mount it in your existing rails application."

Ruby makes hard things easy
But APIs still aren’t easy
APIs in Rails are too entangled
APIs in Sinatra are too manual
Why can’t APIs
have their own framework?
Generalized Rapid
API
Erector
Built for ease of development.
Sinatra-inspired.
Just works.

If you are looking to build a small API use Sinatra and Node otherwise you can integreate Grape with Rails.

## Vocabulary

* REST => any simple URI-based request to a specific domain over HTTP without the use of an additional messaging layer such as SOAP (simple object access protocol)

* REST-like => follows a loose adherence to REST

* Rack => middleware, provides a minimal inerface between webservers supporting Ruby and Ruby frameworks, an interface that can talk to a web server

* DSL => Domain Specific Language, DSL code only focuses on what you *want* the app to do, while the larger system figures out *how* to do it

* XML =>

* Redis => a server just like postgres that runs in the background


## Grape Resources
* [Ruby Grap Website](http://www.ruby-grape.org)
* [Grape Google Group](https://groups.google.com/forum/#!forum/ruby-grape)
* [Mounting Grape API Inside Rails Application](http://martinciu.com/2011/01/mounting-grape-api-inside-rails-application.html)
* [Example Grape Project with Rails](http://todorailsapi.herokuapp.com/doc/api#!/lists/POST_api_todo_lists_format_post_1)
* [Grape API Mounted on RACK w/Static Pages](http://code.dblock.org/2012/01/30/grape-api-mounted-on-rack-w-static-pages.html)
* [Anatomy of a Ruby Gem: Grape](https://vimeo.com/98830727)
* [The Grapes of Rapid: Slides](https://cloud.github.com/downloads/ruby-grape/grape/The%20Grapes%20of%20Rapid.pdf)
* [Building RESTful APIs w/ Grape](http://www.slideshare.net/dblockdotorg/building-restful-apis-w-grape)



## Steps
If you choose to use a database:
rails new grape_gutenberg -d postgresql
If you choose to use Redis:
rails new grape_gutenberg
Grape is available as a gem, to install it just install the gem:
gem install grape
If you're using Bundler, add the gem to Gemfile.
gem 'grape'
gem 'hashie-forbidden_attributes' (Additionally, if the version of your Rails is 4.0+ and the application uses the default model layer of ActiveRecord, you will want to use the hashie-forbidden_attributes gem. This gem disables the security feature of strong_params at the model layer, allowing you the use of Grape's own params validation instead.)
Run 
bundle install.
Install Redis
brew install redis
To have launchd start redis at login:
  ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents
Then to load redis now:
  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist
In application.rb add the following code - this will tell rails to load everything in the api folder:

config.paths.add File.join('app', 'api'), glob: File.join('**', '*.rb')
config.autoload_paths += Dir[Rails.root.join('app', 'api', '*')]

make a floder under app called /api

now mount the api module to the root in routes.rb
mount Twitter::API => '/'

in /api make a /gutenberg folder
create a new model (gutenberg.rb) in the /gutenberg folder


NOT USING A RDF file? WANT TO SCRAPE A WEBPAGE?
get page into string
load page with nokogiri html

put rdf in repo outside of rails file



#Screenshots of the Slide Presentation

*[Slide 1](http://i.imgur.com/4uKwo9o.png)
*[Slide 2](http://i.imgur.com/rpBy35O.png)
*[Slide 3](http://i.imgur.com/GUTKkSj.png)
*[Slide 4](http://i.imgur.com/frGh56a.png)
*[Slide 5](http://i.imgur.com/KR7ySym.png)
*[Slide 6](http://i.imgur.com/lbJBX1q.png)
*[Slide 7](http://i.imgur.com/IqU4PPO.png)
*[Slide 8](http://i.imgur.com/EqLfnl7.png)
*[Slide 9](http://i.imgur.com/FQqcpCQ.png)
*[Slide 10](http://i.imgur.com/3g06nEd.png)
*[Slide 11](http://i.imgur.com/uhVS31V.png)
*[Slide 12](http://i.imgur.com/d2V4cv3.png)
*[Slide 13](http://i.imgur.com/gslfTT9.png)
*[Slide 14](http://i.imgur.com/FasgUJS.png)
*[Slide 15](http://i.imgur.com/lysSjxA.png)
*[Slide 16](http://i.imgur.com/QrPZPLC.png)
*[Slide 17](http://i.imgur.com/t7c2UCe.png)

