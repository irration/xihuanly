require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  
  def setup
    @company = Company.new(
      name: "株式会社とどのつまり"
    )
  end

end
