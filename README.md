# Studia
Supporting childrens' studying or doing homework through recording and giving reward(stamp).<br>
Application for smartphone users<br>

Ruby on Rails version(demo of Studia) : https://stable-study.herokuapp.com

API server : Ruby on Rails<br>
Web server : Apache Cordova<br>
Database : development -> Sqlite3, production -> PostgreSQL

preparation:<br>
API server -> `bundle install` -> `bundle exec rake db:create` -> `bundle exec rake db:migration`<br>
Web server -> `npm install` -> `npm install -g cordova` -> `cordova add platforms browser(iOS, Android)`<br>(`cordova requirements` : find package which cordova requires)

start:<br>
API server -> `rails server`(on backend-parts)<br>
Web server -> `cordova run browser`(on frontend-parts)

version:<br>
ruby -> 2.4.4 <br>
rails -> 5.2.2 <br>
