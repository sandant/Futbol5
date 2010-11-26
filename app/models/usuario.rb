class Usuario < ActiveRecord::Base
  validates :nombre, :presence => {:message => "El nombre es obligatorio!"}, :length => {:minimum => 4, :maximum => 100, :message => "Debe tener entre 4 y 100 caracteres!"}
end
