FactoryGirl.define do
  factory :company do
    name "株式会社とどのつまり"
    url "http://todonotsumari.com/"
    about "株式会社とどのつまりです。"
    vision "こんなビジョンを掲げています。"
    ceo "とどつ まりお"
    employees 50
    establishment '2016-01-01'
    postal '0123456'
    address 'address'
    public false
  end
end
