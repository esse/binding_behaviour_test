require 'minitest/autorun'
require_relative 'binding_behaviour'

describe BindingBehaviour do
  describe "testing proc binding behaviour" do
    it 'can read val' do
      test_object = BindingBehaviour.new
      method = test_object.method(:local_vars_method).to_proc
      method.binding.local_variables.must_equal [:var_1, :var_2]
    end
  end
end

