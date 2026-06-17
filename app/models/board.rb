class Board < ApplicationRecord
 validates :title,presence:{message: "店名を入れてください"},length:{maximum:200}
 validates :body,presence:{message: "本文を入力してください"},length:{maximum:65_000}
 
belongs_to :user

end
