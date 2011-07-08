require 'test_helper'

class CasestudiesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Casestudy.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Casestudy.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Casestudy.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to casestudy_url(assigns(:casestudy))
  end

  def test_edit
    get :edit, :id => Casestudy.first
    assert_template 'edit'
  end

  def test_update_invalid
    Casestudy.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Casestudy.first
    assert_template 'edit'
  end

  def test_update_valid
    Casestudy.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Casestudy.first
    assert_redirected_to casestudy_url(assigns(:casestudy))
  end

  def test_destroy
    casestudy = Casestudy.first
    delete :destroy, :id => casestudy
    assert_redirected_to casestudies_url
    assert !Casestudy.exists?(casestudy.id)
  end
end
