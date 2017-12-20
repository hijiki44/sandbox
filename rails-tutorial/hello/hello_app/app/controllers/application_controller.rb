class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    # render html: "Hello, world!"
    render html: "¡Hora, mundo!"
  end

  def goodbye
    render html: "Goodbye, world!"
  end
end
