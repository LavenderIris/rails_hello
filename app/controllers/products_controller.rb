class ProductsController < ApplicationController
  def index
  	render 'products/index.html.erb'
  end

  def hello
  	render 'products/hello.html.erb'
  end

  def say_hello
  	render 'products/sayhello.html.erb'
  end

  def say_hello_person
  	render 'products/sayhelloperson.html.erb'
  end

  def say_hello_michael
  	redirect_to '/say/hello/joe'
  end

  def times
  	p = Pageview.all
  	if p.length == 0
  		Pageview.create(count:0)
  	else 
  		count = Pageview.first.count
  		count = count + 1
  		Pageview.first.update(count:count)
  	end

  	@counter = Pageview.first.count
  	render 'products/count.html.erb'
  
  end

  def restart
  	Pageview.all.delete_all
  	render 'products/restart.html.erb'
  end
end