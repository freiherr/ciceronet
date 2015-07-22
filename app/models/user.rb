class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         

   attr_accessible :primer_nombre, :primer_apellido, :nombre_perfil,
   					:email, :password, :password_confirmation


   	has_many :statuses
    validates :primer_nombre, presence: true
    validates :primer_apellido, presence: true
    validates :nombre_perfil, presence: true,
                              uniqueness: true,
                              format: {
                                 with: /[0-9a-zA-Z\s]*/,
                                 message: "Debe estar formateado correctamente."
                               }

   def nombre_completo
   		primer_nombre + " " + primer_apellido
   	end
end
