class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :usuario
  
  validates :usuario_id, :presence => {:message => "id de usuario obligatorio!"}
end