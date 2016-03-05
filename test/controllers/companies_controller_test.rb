require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase

  setup do
    @company = FactoryGirl::create(:company)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, { id: @company.id }
    assert_response :success
  end

end
