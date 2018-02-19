class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :carts
         has_many :records
         has_many :deliveries

         validates :lastname, :firstname, :address,:address2,:postal_code,:email,:phone,
         	         presence: true
    		 validates :kana_lastname, :kana_firstname,  presence: true,
            			 format: {
                             with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/,
                             message: "は全角カタカナで入力して下さい"
                           }
end
