require 'test_helper'

class PrescriptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @prescription=prescriptions(:one)
  end
  
  test "should be valid" do
    assert @prescription.valid?
  end
  
  test "bc1 must be present" do
    @prescription.bc1 = "     "
    assert_not @prescription.valid?
  end
  
  test "bc2 must be valid" do
    @prescription.bc2 = "          "
    assert_not @prescription.valid?
  end
  
  test "cf must be valid" do
    @prescription.cf = "                "          
    assert_not @prescription.valid?
  end



end
