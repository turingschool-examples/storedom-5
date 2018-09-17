class ReportMailer < ApplicationMailer
  def orders(count, email)
    @count = count
    mail(to: email, subject: "report")

  end
end
