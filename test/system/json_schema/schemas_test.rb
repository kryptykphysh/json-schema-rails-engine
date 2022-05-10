require "application_system_test_case"

module JsonSchema
  class SchemasTest < ApplicationSystemTestCase
    setup do
      @schema = json_schema_schemas(:one)
    end

    test "visiting the index" do
      visit schemas_url
      assert_selector "h1", text: "Schemas"
    end

    test "should create schema" do
      visit schemas_url
      click_on "New schema"

      fill_in "Title", with: @schema.title
      fill_in "Type", with: @schema.type_id
      fill_in "Type type", with: @schema.type_type
      click_on "Create Schema"

      assert_text "Schema was successfully created"
      click_on "Back"
    end

    test "should update Schema" do
      visit schema_url(@schema)
      click_on "Edit this schema", match: :first

      fill_in "Title", with: @schema.title
      fill_in "Type", with: @schema.type_id
      fill_in "Type type", with: @schema.type_type
      click_on "Update Schema"

      assert_text "Schema was successfully updated"
      click_on "Back"
    end

    test "should destroy Schema" do
      visit schema_url(@schema)
      click_on "Destroy this schema", match: :first

      assert_text "Schema was successfully destroyed"
    end
  end
end
