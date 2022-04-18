require "test_helper"

class HitlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hitlist = hitlists(:one)
  end

  test "should get index" do
    get hitlists_url
    assert_response :success
  end

  test "should get new" do
    get new_hitlist_url
    assert_response :success
  end

  test "should create hitlist" do
    assert_difference("Hitlist.count") do
      post hitlists_url, params: { hitlist: { email: @hitlist.email, phone: @hitlist.phone, primer_apellido: @hitlist.primer_apellido, primer_nombre: @hitlist.primer_nombre, twitter: @hitlist.twitter } }
    end

    assert_redirected_to hitlist_url(Hitlist.last)
  end

  test "should show hitlist" do
    get hitlist_url(@hitlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_hitlist_url(@hitlist)
    assert_response :success
  end

  test "should update hitlist" do
    patch hitlist_url(@hitlist), params: { hitlist: { email: @hitlist.email, phone: @hitlist.phone, primer_apellido: @hitlist.primer_apellido, primer_nombre: @hitlist.primer_nombre, twitter: @hitlist.twitter } }
    assert_redirected_to hitlist_url(@hitlist)
  end

  test "should destroy hitlist" do
    assert_difference("Hitlist.count", -1) do
      delete hitlist_url(@hitlist)
    end

    assert_redirected_to hitlists_url
  end
end
