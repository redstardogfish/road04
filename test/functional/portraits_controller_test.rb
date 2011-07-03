require 'test_helper'

class PortraitsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Portrait.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Portrait.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Portrait.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to portrait_url(assigns(:portrait))
  end

  def test_edit
    get :edit, :id => Portrait.first
    assert_template 'edit'
  end

  def test_update_invalid
    Portrait.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Portrait.first
    assert_template 'edit'
  end

  def test_update_valid
    Portrait.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Portrait.first
    assert_redirected_to portrait_url(assigns(:portrait))
  end

  def test_destroy
    portrait = Portrait.first
    delete :destroy, :id => portrait
    assert_redirected_to portraits_url
    assert !Portrait.exists?(portrait.id)
  end
end
