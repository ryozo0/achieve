# Preview all emails at http://localhost:3000/rails/mailers/notive_mailer
class NotiveMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notive_mailer/sendmail_blog
  def sendmail_blog
    NotiveMailer.sendmail_blog
  end

end
