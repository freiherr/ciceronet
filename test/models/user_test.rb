require 'test_helper'

class UserTest < ActiveSupport::TestCase

	test "un usuario debería insertar su primer nombre" do
		user = User.new
		assert !user.save	
		assert !user.errors[:primer_nombre].empty?
	end
	test "un usuario debería insertar su primer apellido" do
		user = User.new
		assert !user.save	
		assert !user.errors[:primer_apellido].empty?
	end
	test "un usuario debería insertar su nombre_perfil" do
		user = User.new
		assert !user.save	
		assert !user.errors[:nombre_perfil].empty?
	end

	test "un usuario deberia tener un nombre de perfil con formato" do
		user = User.new
		user.nombre_perfil = "Mi nombre con espacios"
	
		assert !user.save
		assert !user.errors[:nombre_perfil].empty?
		assert !user.errors[:nombre_perfil].include?("Debe estar formateado correctamente.")
	end	
end
