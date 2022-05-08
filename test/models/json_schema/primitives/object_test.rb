# == Schema Information
#
# Table name: json_schema_primitives_objects
#
#  id         :bigint           not null, primary key
#  root       :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

module JsonSchema
  module Primitives
    class NonRootObject < ActiveSupport::TestCase
      def setup
        @subject = Object.new(root: false)
      end
    end

    class ObjectNonRootTest < Primitives::NonRootObject
      include GenericFieldsBehaviour

      it "is valid" do
        assert @subject.valid?
      end

      it "returns false for :root?" do
        assert_not @subject.root?
      end

      describe "when a non root Object exists with the same :title" do
        before do
          existing = Object.create!(root: false)
          existing.title = "flume"
          existing.save
          @subject.title = "flume"
        end

        it "is still valid" do
          assert @subject.valid?
        end
      end
    end

    class RootObject < ActiveSupport::TestCase
      def setup
        @subject = Object.new(root: true)
      end
    end

    class ObjectRootTest < RootObject
      include GenericFieldsBehaviour

      it "is valid" do
        assert @subject.valid?
      end

      it "returns true for :root?" do
        assert @subject.root?
      end

      describe "when a non-root Object exists with the same :title" do
        before do
          existing = Object.create!(root: false)
          existing.title = "flume"
          existing.save
          @subject.title = "flume"
        end

        it "is valid" do
          assert @subject.valid?
        end
      end

      describe "when a root Object exists with the same :title" do
        before do
          existing = Object.create!(root: true)
          existing.title = "flume"
          existing.save
          @subject.title = "flume"
        end

        it "is valid" do
          assert_not @subject.valid?
        end
      end
    end
  end
end
