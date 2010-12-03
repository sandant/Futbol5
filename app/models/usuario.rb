class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_many :comments 
  has_one :post
  
  # we can make custom queries and then call them like a function of the model
  scope :mayores, lambda {|edad| where(["edad > ?", edad])}
  
  
  #validates :nombre, :presence => {:message => "El nombre es obligatorio!"}, 
					#:length => {:minimum => 4, :maximum => 100, :message => "Debe tener entre 4 y 100 caracteres!"}
end