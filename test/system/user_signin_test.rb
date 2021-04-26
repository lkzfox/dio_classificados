require "application_system_test_case"

class SigninTest < ApplicationSystemTestCase

    def setup
        @user = FactoryBot.create(:user, password: 'teste123')
    end

  test "usuario válido entrando no sistema" do

    signin_as(@user, 'teste123')

    assert_text "Bem Vindo #{@user.name}"

  end

  test "usuario invalido tentando entrar no sistema" do
    signin_as(@user, 'assssteste123')

    assert_text "Email ou Senha Inválidos"

  end

end

