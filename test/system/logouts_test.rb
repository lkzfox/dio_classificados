require "application_system_test_case"

class LogoutsTest < ApplicationSystemTestCase
  test "logout do usuario" do
    user = FactoryBot.create(:user, password: 'teste123')
    signin_as(user, 'teste123')

    click_on "Sair"

    assert_equal current_path, new_session_path
    assert_text "Sessão Encerrada"
  end
end
