class Contactano < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone,     :validate => true
  attribute :message

  def headers
    {
      :subject => "Contactanos para pedidos.",
      :to => "carlos.schramm80@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
