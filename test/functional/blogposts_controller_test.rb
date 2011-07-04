require 'test_helper'

class BlogpostsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Blogpost.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Blogpost.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Blogpost.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to blogpost_url(assigns(:blogpost))
  end

  def test_edit
    get :edit, :id => Blogpost.first
    assert_template 'edit'
  end

  def test_update_invalid
    Blogpost.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Blogpost.first
    assert_template 'edit'
  end

  def test_update_valid
    Blogpost.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Blogpost.first
    assert_redirected_to blogpost_url(assigns(:blogpost))
  end

  def test_destroy
    blogpost = Blogpost.first
    delete :destroy, :id => blogpost
    assert_redirected_to blogposts_url
    assert !Blogpost.exists?(blogpost.id)
  end
end
