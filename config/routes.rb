Rails.application.routes.draw do
  get ''  => 'products#index'
  get '/hello'  => 'products#hello'
  get '/say/hello'  => 'products#say_hello'
  get '/say/hello/joe'  => 'products#say_hello_person'
  get '/say/hello/michael'  => 'products#say_hello_michael'
  get '/times' => "products#times"
  get '/restart' => "products#restart"
end
