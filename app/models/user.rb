class User < ApplicationRecord
   has_secure_password validations: false

    validates :password, 
               presence: {message: "パスワードを入れてください"},
               length: {minimum:5,too_short: "5文字以上で入力してください"},
               if: -> {new_record? || changes[:password_digest]}

    validates :name,
               presence: {message: "名前を入れてください"},
               length: {maximum:100,too_long: "100文字以内で入力してください" }, 
               uniqueness: { message: "この名前はすでに登録されています" }

    validates :email,
               presence: {message: "メールアドレスを入れてください"}, 
               uniqueness: { message: "このメールアドレスはすでに登録されています" }

    has_many :boards, dependent: :destroy

    has_many :comment, dependent: :destroy
       def own?(object)
        id == object&.user_id
       end


end
