require 'rails_helper'

RSpec.describe "patients/index", type: :view do
  before(:each) do
    assign(:patients, [
      Patient.create!(
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
      ),
      Patient.create!(
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
      )
    ])
  end

  it "renders a list of patients" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Second Name".to_s, :count => 2
    assert_select "tr>td", :text => "First Surname".to_s, :count => 2
    assert_select "tr>td", :text => "Second Surname".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Type Document".to_s, :count => 2
    assert_select "tr>td", :text => "Document".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Profession".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Nacionality".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "Accompanist Name".to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
