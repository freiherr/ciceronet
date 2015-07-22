require 'test_helper'

class RutasPersonalizadasTest < ActionDispatch::IntegrationTest

	test "el /login abre la pagina de inicio de sesión" do
		get '/comenzar'
		assert_response :success
	end
	test "el /logout abre la pagina de cerrar de sesión" do
		get '/cerrar'
		assert_response :success
		assert_redirected_to '/s'
	end
	test "el /registro abre la pagina de registrar usuario" do
		get '/registrar'
		assert_response :success
	end

end
