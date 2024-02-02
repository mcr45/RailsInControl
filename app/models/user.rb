class User < ApplicationRecord
    validates :full_namename,presence:true,length:{minimum:5,maximum:50}
    validates :email,presence:true,format: { with: URI::MailTo::EMAIL_REGEXP },length:{minimum:5,maximum:255}
    validates :age,presence:true,numericality:{greater_than:17,less_than:100}
    before_create :lowMaila

    def lowMaila
        self.email=email.downcase
    end

end
