require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "validar nome do usuário" do
    user = User.new(name: nil)
    user.save
    
    assert user.errors[:name].any?

  end

  test "validar email do usuário" do
    user = User.new(email: nil)
    user.save
    
    assert user.errors[:email].any?

    user = User.new(email: 'lucas.com')
    user.save
    
    assert user.errors[:email].any?

    user = User.new(email: 'lucas@teste.com')
    user.save
    
    refute user.errors[:email].any?

    user = User.new(email: 'lucas@teste.com', name: 'lucas', password: '123')
    user.save

    user_novo = User.new(email: 'lucas@teste.com', name: 'lucas', password: '123')
    user_novo.save

    assert user_novo.errors[:email].any?

  end

end
