require 'test/unit'

require_relative '../customer'

class CustomerTest < Test::Unit::TestCase
    def test_first_name
        customer = Customer.new("John", "Smith")
        assert_equal(customer.first_name, "John")
    end
    def test_last_name
        customer = Customer.new("John", "Smith")
        assert_equal(customer.last_name, "Smith")
    end
    def test_full_name
        customer = Customer.new("John", "Smith")
        assert_equal(customer.full_name, "John Smith")
    end
end