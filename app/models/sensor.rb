class Sensor < ActiveRecord::Base
  belongs_to :concentrador
  has_many :medida
validates_format_of :nombre, :with => /\A[a-zA-Z0-9_-]+\z/, :message => "ERROR: debe contener letras o numeros"
  validates_uniqueness_of :nombre, :case_sensitive => false, :message => "ERROR: no puede duplicar el nombre de un sensor"
	
end
