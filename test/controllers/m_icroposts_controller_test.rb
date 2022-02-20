require 'test_helper'

class MIcropostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @m_icropost = m_icroposts(:one)
  end

  test "should get index" do
    get m_icroposts_url
    assert_response :success
  end

  test "should get new" do
    get new_m_icropost_url
    assert_response :success
  end

  test "should create m_icropost" do
    assert_difference('MIcropost.count') do
      post m_icroposts_url, params: { m_icropost: { content: @m_icropost.content, user_id: @m_icropost.user_id } }
    end

    assert_redirected_to m_icropost_url(MIcropost.last)
  end

  test "should show m_icropost" do
    get m_icropost_url(@m_icropost)
    assert_response :success
  end

  test "should get edit" do
    get edit_m_icropost_url(@m_icropost)
    assert_response :success
  end

  test "should update m_icropost" do
    patch m_icropost_url(@m_icropost), params: { m_icropost: { content: @m_icropost.content, user_id: @m_icropost.user_id } }
    assert_redirected_to m_icropost_url(@m_icropost)
  end

  test "should destroy m_icropost" do
    assert_difference('MIcropost.count', -1) do
      delete m_icropost_url(@m_icropost)
    end

    assert_redirected_to m_icroposts_url
  end
end
