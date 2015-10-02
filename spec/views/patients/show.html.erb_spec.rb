require 'rails_helper'

RSpec.describe "patients/show", type: :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :first_name => "First Name",
      :second_name => "Second Name",
      :first_surname => "First Surname",
      :second_surname => "Second Surname",
      :email => "Email",
      :type_document => "Type Document",
      :document => "Document",
      :days_age => 1,
      :months_age => 2,
      :years_age => 3,
      :gender => 4,
      :profession => "Profession",
      :blood_type => 5,
      :nacionality => "Nacionality",
      :eps => nil,
      :arl => nil,
      :address => "Address",
      :condition => 6,
      :accompanist_name => "Accompanist Name",
      :relationship => 7,
      :phone => "Phone",
      :city => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Second Name/)
    expect(rendered).to match(/First Surname/)
    expect(rendered).to match(/Second Surname/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Type Document/)
    expect(rendered).to match(/Document/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Profession/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Nacionality/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/Accompanist Name/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
