# Ruby on Rails myweb application
## getting started 
toget started with the app , clone the repo and then install the needed gems :
$ gem install bundler -v 2.2.13
$ bundle _2.2.13_ config set --local without 'production'
$ bundle _2.2.13_ install
next , migrate the database
$ rails db: migrate
 run the test suite to verify that everything is working correctly :
 $ rails test
 run the server
 $ rails server
 
 # app/contrller and app/view 
 generated static pages
 $ rails generated controller StatcPages home help
