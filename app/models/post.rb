class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :usuario
  
  validates :usuario_id, :presence => {:message => "you have to put a user id!"}
end
