require 'test_helper'

class IndustriesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_response :success
    assert_template 'index'
  end

  def test_show
    get :show, :id => Industry.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Industry.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Industry.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to industries_url
  end

  def test_edit
    get :edit, :id => Industry.first
    assert_template 'edit'
  end

  def test_update_invalid
    Industry.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Industry.first
    assert_template 'edit'
  end

  def test_update_valid
    Industry.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Industry.first
    assert_redirected_to industry_url(assigns(:industry))
  end

  def test_destroy
    industry = Industry.first
    delete :destroy, :id => industry
    assert_redirected_to industries_url
    assert !Industry.exists?(industry.id)
  end
end
