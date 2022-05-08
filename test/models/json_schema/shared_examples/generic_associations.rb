require "minitest/spec"

# For testing association object's behaviour
# class MiniTest::Spec
#   def self.include_tests(tests)
#     tests.each do |args, block|
#       it(*args, &block)
#     end
#   end
# end
#
# class Module
#   def included_tests
#     @included_tests ||= []
#   end
#
#   def it(*args, &block)
#     included_tests << [args, block]
#     self.class.send(:define_method, :included) do |base|
#       base.include_tests(included_tests)
#     end
#   end
#
#   alias_method :specify, :it
# end

class Module
  include Minitest::Spec::DSL
end

module GenericFieldsBehaviour
  generic_properties = %w[comment default deprecated description examples read_only
    title write_only]
  generic_properties.each do |prop|
    # test getters
    it "responds to :#{prop}" do
      assert_respond_to @subject, prop.to_sym
    end

    # test setters
    it "responds to :#{prop}=" do
      assert_respond_to @subject, (prop + "=").to_sym
    end

    # test boolean fields
    if %w[deprecated read_only write_only].include?(prop)
      it "responds to :#{prop}?" do
        assert_respond_to @subject, (prop + "=").to_sym
      end
    end
  end
end
