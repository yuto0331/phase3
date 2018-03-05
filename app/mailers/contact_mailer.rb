class ContactMailer < ApplicationMailer
    def contact_mail(contact)
        @contact = contact
        mail to: "自分のメールアドレス", subject: "写真が投稿されました。"
    end
end
