require 'rails_helper'

RSpec.describe "clinic_histories/show", type: :view do
  before(:each) do
    @clinic_history = assign(:clinic_history, ClinicHistory.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Department/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Cove/)
    expect(rendered).to match(/Mobiel Service/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Origin/)
    expect(rendered).to match(/Destination/)
    expect(rendered).to match(/Company/)
    expect(rendered).to match(/Accompanist Name/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
