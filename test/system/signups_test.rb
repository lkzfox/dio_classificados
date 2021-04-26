require "application_system_test_case"

class SignupsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit signups_url
  #
  #   assert_selector "h1", text: "Signup"
  # end

  test "usuario se cadastrando no sistema" do
    visit '/'

    click_on 'Registrar'

    fill_in 'Nome', with: 'Lucas'
    fill_in 'Email', with: 'lucas@teste.com'
    fill_in 'Senha', with: 'j123u12903ui0'

    click_on 'Registrar'

    assert_text 'Cadastro Realizado'

  end

  test "usuario sem preencher campos se cadastrando no sistema" do
    visit '/'

    click_on 'Registrar'
    click_on 'Registrar'

    assert_text 'Falha ao cadastrar'

  end
end
