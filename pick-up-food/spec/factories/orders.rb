FactoryGirl.define do
  factory :order do
    preparing false
    ready false
    picked_up false
    pick_up_time "2016-11-06"
  end
end
