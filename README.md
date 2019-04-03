# Stablystudy
Supporting childrens' studying or doing homework through recording and giving reward(stamp).
Application on web browser<br>
(localhost)

API server : Ruby on Rails<br>
Web server : Apache Cordova<br>
Database : development -> Sqlite3, production -> PostgreSQL

preparation:<br>
API server -> `bundle install` -> `bundle exec rake db:create` -> `bundle exec rake db:migration`<br>
Web server -> `npm install` -> `npm install -g cordova`<br>

start:<br>
API server -> `rails server`(/serviceofeducation)<br>
Web server -> `cordova run browser`(/appservice)

version:<br>
ruby -> 2.4.4 <br>
rails -> 5.2.2 <br>

- frontend-parts :  server on localhost (I want to deploy)
- backend-parts : application for test on localhost
