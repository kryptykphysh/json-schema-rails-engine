require "test_helper"

module JsonSchema
  class SchemasControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @schema = json_schema_schemas(:one)
    end

    test "should get index" do
      get schemas_url
      assert_response :success
    end

    test "should get new" do
      get new_schema_url
      assert_response :success
    end

    test "should create schema" do
      assert_difference("Schema.count") do
        post schemas_url, params: {schema: {title: @schema.title, type_id: @schema.type_id, type_type: @schema.type_type}}
      end

      assert_redirected_to schema_url(Schema.last)
    end

    test "should show schema" do
      get schema_url(@schema)
      assert_response :success
    end

    test "should get edit" do
      get edit_schema_url(@schema)
      assert_response :success
    end

    test "should update schema" do
      patch schema_url(@schema), params: {schema: {title: @schema.title, type_id: @schema.type_id, type_type: @schema.type_type}}
      assert_redirected_to schema_url(@schema)
    end

    test "should destroy schema" do
      assert_difference("Schema.count", -1) do
        delete schema_url(@schema)
      end

      assert_redirected_to schemas_url
    end
  end
end
