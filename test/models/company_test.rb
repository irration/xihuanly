require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  
  def setup
    @company = FactoryGirl.build(:company)
  end

  def test_empty_name_is_invalid
    @company.name = ''
    assert @company.invalid?
  end  

  def test_name_checks_assumed_length
    check_assumed_length('name', 30)
  end

  def test_url_checks_assumed_length
    check_assumed_length('url', 128)
  end

  def test_about_checks_assumed_length
    check_assumed_length('about', 300)
  end

  def test_vision_checks_assumed_length
    check_assumed_length('vision', 300)
  end

  def test_ceo_checks_assumed_length
    check_assumed_length('ceo', 30)
  end

  def test_employees_with_string_is_invalid
    @company.employees = 'foo'
    assert @company.invalid?
  end

  def test_assumes_valid_postal_code
    @company.postal = '0123456'
    assert @company.valid?
    @company.postal = '123-4567'
    assert @company.invalid?
    @company.postal = '12a4567'
    assert @company.invalid?
    @company.postal = ' 1234567'
    assert @company.invalid?
    @company.postal = '1234567 '
    assert @company.invalid?
  end

  def test_postal_checks_assumed_length
    check_assumed_length('postal', 9)
  end

  def test_address_checks_assumed_length
    check_assumed_length('address', 256)
  end

  def check_assumed_length(attr, length)
    @company[attr] = 'a' * length
    assert @company.valid?
    @company[attr] = 'a' * ( length + 1 )
    assert @company.invalid?
  end

end
