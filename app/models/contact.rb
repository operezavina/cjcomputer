class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :address
  attribute :phone
  attribute :comments
  attribute :nickname,  :captcha  => false

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Comments by website",
      :to => "operez@iteso.mx",
      :from => %("#{name}" <#{email}>)
    }
  end
end
