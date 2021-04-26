require 'test_helper'

class FirstTest < ActiveSupport::TestCase
    
    test "Primeiro Teste" do
        v = 'Lucas'
        assert_equal 'Lucas', v
    end

end