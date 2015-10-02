require 'rails_helper'

RSpec.describe "clinic_histories/index", type: :view do
  before(:each) do
    assign(:clinic_histories, [
      ClinicHistory.create!(
        :city => "City",
        :department => "Department",
        :user => nil,
        :cove => "Cove",
        :mobiel_service => "Mobiel Service",
        :airport => 1,
        :type_service => 2,
        :patient => nil,
        :origin => "Origin",
        :destination => "Destination",
        :company => "Company",
        :accompanist_name => "Accompanist Name",
        :relationship => 3,
        :phone => "Phone",
        :reason_for_consultation => "MyText",
        :current_illness => "MyText"
      ),
      ClinicHistory.create!(
        :city => "City",
        :department => "Department",
        :user => nil,
        :cove => "Cove",
        :mobiel_service => "Mobiel Service",
        :airport => 1,
        :type_service => 2,
        :patient => nil,
        :origin => "Origin",
        :destination => "Destination",
        :company => "Company",
        :accompanist_name => "Accompanist Name",
        :relationship => 3,
        :phone => "Phone",
        :reason_for_consultation => "MyText",
        :current_illness => "MyText"
      )
    ])
  end

  it "renders a list of clinic_histories" do
    render
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Cove".to_s, :count => 2
    assert_select "tr>td", :text => "Mobiel Service".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Origin".to_s, :count => 2
    assert_select "tr>td", :text => "Destination".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Accompanist Name".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
