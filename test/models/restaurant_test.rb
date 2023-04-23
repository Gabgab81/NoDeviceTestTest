require "test_helper"

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @restaurant = restaurants(:one)
  end

  test 'Should be valid' do
    assert @restaurant.valid?
  end

  test 'Should have a name' do
    @restaurant.name = ''
    assert_not @restaurant.valid?
  end
end
