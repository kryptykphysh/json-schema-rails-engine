require "test_helper"

module JsonSchema
  class Primitives::ObjectsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get primitives_objects_index_url
      assert_response :success
    end

    test "should get show" do
      get primitives_objects_show_url
      assert_response :success
    end

    test "should get new" do
      get primitives_objects_new_url
      assert_response :success
    end

    test "should get create" do
      get primitives_objects_create_url
      assert_response :success
    end

    test "should get edit" do
      get primitives_objects_edit_url
      assert_response :success
    end

    test "should get update" do
      get primitives_objects_update_url
      assert_response :success
    end

    test "should get destroy" do
      get primitives_objects_destroy_url
      assert_response :success
    end
  end
end
