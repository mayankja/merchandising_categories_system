require 'test_helper'

class V1::CategoriesControllerTest < ActionController::TestCase
  test 'should listing all categories' do
    get :index, format: :json
    assert_response :success

    resp = JSON.parse(response.body)
    assert_equal resp.class, Array
  end

  test 'should list sub categories' do
    params = { name: 'Pets' }

    get :show, params: params, format: :json
    assert_response :success

    resp = JSON.parse(response.body)
    assert_equal resp.class, Array
    assert_equal resp.count, 1
    assert_equal resp[0]['name'], 'Pets'
  end

  test 'should list sub category with products' do
    params = { name: 'Food' }

    get :products, params: params, format: :json
    assert_response :success

    resp = JSON.parse(response.body)
    assert_equal resp.class, Array
    assert resp[0].key?('products')
  end
end
