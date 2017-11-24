# Documentation: TODO: Class documentation comments here
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: 'hello, world!'
  end
end
