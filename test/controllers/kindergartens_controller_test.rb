require "test_helper"

class KindergartensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kindergarten = kindergartens(:one)
  end

  test "should get index" do
    get kindergartens_url
    assert_response :success
  end

  test "should get new" do
    get new_kindergarten_url
    assert_response :success
  end

  test "should create kindergarten" do
    assert_difference("Kindergarten.count") do
      post kindergartens_url, params: { kindergarten: { city_id: @kindergarten.city_id, description: @kindergarten.description, email: @kindergarten.email, name: @kindergarten.name, pet_id: @kindergarten.pet_id, phone: @kindergarten.phone, price: @kindergarten.price } }
    end

    assert_redirected_to kindergarten_url(Kindergarten.last)
  end

  test "should show kindergarten" do
    get kindergarten_url(@kindergarten)
    assert_response :success
  end

  test "should get edit" do
    get edit_kindergarten_url(@kindergarten)
    assert_response :success
  end

  test "should update kindergarten" do
    patch kindergarten_url(@kindergarten), params: { kindergarten: { city_id: @kindergarten.city_id, description: @kindergarten.description, email: @kindergarten.email, name: @kindergarten.name, pet_id: @kindergarten.pet_id, phone: @kindergarten.phone, price: @kindergarten.price } }
    assert_redirected_to kindergarten_url(@kindergarten)
  end

  test "should destroy kindergarten" do
    assert_difference("Kindergarten.count", -1) do
      delete kindergarten_url(@kindergarten)
    end

    assert_redirected_to kindergartens_url
  end
end
