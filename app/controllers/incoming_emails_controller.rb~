class IncomingEmailsController < ApplicationController
require 'mail'

class IncomingEmailsController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: :create
  def create
    mail = Mail.new(params[:message])

    # API for https://github.com/mikel/mail
    mail.from    # => ["sender@example.com"]
    mail.to      # => ["example@mail2webhook.com"]
    mail.subject # => "Testing 1 2 3"
    mail.parts   # => [#<Mail::Part:70135193504060, Multipart: false, Headers: <Content-Type: text/plain; charset=ISO-8859-1>>,...]
    mail.body    # => #<Mail::Body:...>

    render text: "OK"
  end
end
end
