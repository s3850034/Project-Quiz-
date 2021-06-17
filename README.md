# README
The Begin Button takes its sweet time so do not press the Begin button continiosuly, just wait and the quiz should start.
apiKey: RKmazomP2gzKYq0kBHvvXMqzRcMy2VMicCnhOOzN
Heroku Deployment Link: https://radiant-savannah-96195.herokuapp.com/

Heroku Deployment Log:
-----> Building on the Heroku-20 stack
-----> Using buildpack: heroku/ruby
-----> Ruby app detected
-----> Installing bundler 2.2.16
-----> Removing BUNDLED WITH version in the Gemfile.lock
-----> Compiling Ruby/Rails
-----> Using Ruby version: ruby-2.6.6
###### WARNING:
       Removing `Gemfile.lock` because it was generated on Windows.
       Bundler will do a full resolve so native gems are handled properly.
       This may result in unexpected gem versions being used in your app.
       In rare occasions Bundler may not be able to resolve your dependencies at all.
       
       https://devcenter.heroku.com/articles/bundler-windows-gemfile
-----> Installing dependencies using bundler 2.2.16
       Running: BUNDLE_WITHOUT='development:test' BUNDLE_PATH=vendor/bundle BUNDLE_BIN=vendor/bundle/bin bundle install -j4
       Fetching gem metadata from https://rubygems.org/.............
       Resolving dependencies..........
       Using rake 13.0.3
       Using concurrent-ruby 1.1.9
       Using minitest 5.14.4
       Using thread_safe 0.3.6
       Using builder 3.2.4
       Using erubi 1.10.0
       Using racc 1.5.2
       Using crass 1.0.6
       Using rack 2.2.3
       Using nio4r 2.5.7
       Using websocket-extensions 0.1.5
       Using mini_mime 1.1.0
       Using arel 8.0.0
       Using execjs 2.8.1
       Using rb-fsevent 0.11.0
       Using ffi 1.15.3
       Using bundler 2.2.16
       Using coffee-script-source 1.12.2
       Using method_source 1.0.0
       Using thor 1.1.0
       Using unf_ext 0.0.7.7
       Using http-accept 1.7.0
       Using json 2.5.1
       Using mime-types-data 3.2021.0225
       Using netrc 0.11.0
       Using pg 1.2.3
       Using puma 3.12.6
       Using tilt 2.0.10
       Using turbolinks-source 5.2.0
       Using i18n 1.8.10
       Using tzinfo 1.2.9
       Using rack-test 1.1.0
       Using websocket-driver 0.6.5
       Using mail 2.7.1
       Using autoprefixer-rails 10.2.5.1
       Using sprockets 3.7.2
       Using uglifier 4.2.0
       Using nokogiri 1.11.7 (x86_64-linux)
       Using activesupport 5.1.7
       Using loofah 2.10.0
       Using rb-inotify 0.10.1
       Using coffee-script 2.4.1
       Using unf 0.1.4
       Using mime-types 3.3.1
       Using turbolinks 5.2.1
       Using rails-html-sanitizer 1.3.0
       Using domain_name 0.5.20190701
       Using rails-dom-testing 2.0.3
       Using globalid 0.4.2
       Using activemodel 5.1.7
       Using sass-listen 4.0.0
       Using jbuilder 2.11.2
       Using activejob 5.1.7
       Using http-cookie 1.0.4
       Using activerecord 5.1.7
       Using sass 3.7.4
       Using rest-client 2.1.0
       Using actionview 5.1.7
       Using actionpack 5.1.7
       Using bootstrap-sass 3.3.7
       Using actioncable 5.1.7
       Using actionmailer 5.1.7
       Using railties 5.1.7
       Using sprockets-rails 3.2.2
       Using coffee-rails 4.2.2
       Using rails 5.1.7
       Using sass-rails 5.0.7
       Bundle complete! 17 Gemfile dependencies, 67 gems now installed.
       Gems in the groups 'development' and 'test' were not installed.
       Bundled gems are installed into `./vendor/bundle`
       Bundle completed (4.55s)
       Cleaning up the bundler cache.
-----> Installing node-v12.16.2-linux-x64
-----> Detecting rake tasks
-----> Preparing app for Rails asset pipeline
       Running: rake assets:precompile
       Yarn executable was not detected in the system.
       Download Yarn at https://yarnpkg.com/en/docs/install
       Asset precompilation completed (3.14s)
       Cleaning assets
       Running: rake assets:clean
-----> Detecting rails configuration
###### WARNING:
       You have not declared a Ruby version in your Gemfile.
       
       To declare a Ruby version add this line to your Gemfile:
       
       ```
       ruby "2.6.6"
       ```
       
       For more information see:
         https://devcenter.heroku.com/articles/ruby-versions
###### WARNING:
       Removing `Gemfile.lock` because it was generated on Windows.
       Bundler will do a full resolve so native gems are handled properly.
       This may result in unexpected gem versions being used in your app.
       In rare occasions Bundler may not be able to resolve your dependencies at all.
       
       https://devcenter.heroku.com/articles/bundler-windows-gemfile
###### WARNING:
       There is a more recent Ruby version available for you to use:
       
       2.6.7
       
       The latest version will include security and bug fixes. We always recommend
       running the latest version of your minor release.
       
       Please upgrade your Ruby version.
       
       For all available Ruby versions see:
         https://devcenter.heroku.com/articles/ruby-support#supported-runtimes
###### WARNING:
       No Procfile detected, using the default web server.
       We recommend explicitly declaring how to boot your server process via a Procfile.
       https://devcenter.heroku.com/articles/ruby-default-web-server
-----> Discovering process types
       Procfile declares types     -> (none)
       Default types for buildpack -> console, rake, web
-----> Compressing...
       Done: 47.6M
-----> Launching...
       Released v12
       https://radiant-savannah-96195.herokuapp.com/ deployed to Heroku