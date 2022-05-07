# For testing association object's behaviour
class ActiveSupport::TestCase
  def self.it_behaves_like_a_generic
    test "behaves like a Keywords::Generic" do
      assert_respond_to self, :comment
    end
  end
end
