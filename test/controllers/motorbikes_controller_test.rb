require 'test_helper'

class MotorbikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @motorbike = motorbikes(:one)
  end

  test 'should get index' do
    get motorbikes_url, as: :json
    assert_response :success
  end

  test 'should create motorbike' do
    assert_difference('Motorbike.count') do
      post motorbikes_url,
           params: { motorbike: { description: @motorbike.description, image: @motorbike.image, name: @motorbike.name, price: @motorbike.price } }, as: :json
    end

    assert_response :created
  end

  test 'should show motorbike' do
    get motorbike_url(@motorbike), as: :json
    assert_response :success
  end

  test 'should update motorbike' do
    patch motorbike_url(@motorbike),
          params: { motorbike: { description: @motorbike.description, image: @motorbike.image, name: @motorbike.name, price: @motorbike.price } }, as: :json
    assert_response :success
  end

  test 'should destroy motorbike' do
    assert_difference('Motorbike.count', -1) do
      delete motorbike_url(@motorbike), as: :json
    end

    assert_response :no_content
  end
end
