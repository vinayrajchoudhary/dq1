dq1


ruby on rails web application with user model and their posts.

add following in the gemfile 

gem 'therubyracer'
gem 'execjs'
and then run command --

bundle install

run commands --

rake db:create
rake db:migrate
 
if an error persists in rake db:migrate, delete the corresponding migration file from dq1/db/migrate/<file in which migration stopped>

and rerun rake db:migrate

done! good to go now :)

run rails server to start the local host



On ruby 1.9.3p125