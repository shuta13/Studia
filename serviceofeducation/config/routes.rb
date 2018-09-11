Rails.application.routes.draw do
  get 'example/goalimage'

  get 'check/checklist' => 'check#checklist'
  get 'check/checkpass' => 'check#checkpass'
  get 'check/checkinfo' => 'check#checkinfo'
  get 'check/checkprogress' => 'check#checkprogress'
  get 'check/progresscontent' => 'check#progresscontent'
  get 'check/displaycontent' => 'check#displaycontent'
  get 'check/judger' => 'check#judger'
  get 'check/stampsheet0' => 'check#stampsheet0'
  get 'check/stampsheet1' => 'check#stampsheet1'
  get 'check/stampsheet2' => 'check#stampsheet2'
  get 'check/stampsheet3' => 'check#stampsheet3'
  get 'check/stampsheet4' => 'check#stampsheet4'
  get 'check/stampsheet5' => 'check#stampsheet5'
  get 'check/stampsheet6' => 'check#stampsheet6'
  get 'check/stampsheet7' => 'check#stampsheet7'
  get 'check/errorsheet' => 'check#errorsheet'

  get 'records/recordimage' => 'records#recordimage'
  get 'records/recordpage' => 'records#recordpage'
  get 'records/recordwell' => 'records#recordwell'

  get 'goals/goaldecision' => 'goals#goaldecision'
  get 'goals/goalconfirm' => 'goals#goalconfirm'
  get 'goals/goallist' => 'goals#goallist'
  get 'goals/goalcreate' => 'goals#goalcreate'

  get '/' => 'home#start'
  get 'menu' => 'home#menu'
  get 'login' => 'home#login'
  get 'new' => 'home#new'
  get 'top' => 'home#top'

  post 'home/authentication' => 'home#authentication'
  post 'home/create' => 'home#create'
  post 'home/logout' => 'home#logout'
  post 'records/recordcreate' => 'records#recordcreate'
  post 'goals/goalcreate' => 'goals#goalcreate'
  post 'check/checkauthentication' => 'check#checkauthentication'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
