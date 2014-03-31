require 'sinatra/base'

class App < Sinatra::Application

  PRODUCTS = []

  get '/' do
    erb :index, locals: {products: PRODUCTS}
  end

  get '/new' do
    erb :new
  end

  post '/' do
    PRODUCTS << params[:create_product]
    redirect '/'
  end

end