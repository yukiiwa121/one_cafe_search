class Board < ApplicationRecord
 validates :title,presence:true,length:{maximum:200}
 validates :body,presence:true,length:{maximum:65_000}

belongs_to :user

end
