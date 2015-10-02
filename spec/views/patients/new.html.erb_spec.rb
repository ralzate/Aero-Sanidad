require 'rails_helper'

RSpec.describe "patients/new", type: :view do
  before(:each) do
    assign(:patient, Patient.new(
      :first_name => "MyString",
      :second_name => "MyString",
      :first_surname => "MyString",
      :second_surname => "MyString",
      :email => "MyString",
      :type_document => "MyString",
      :document => "MyString",
      :days_age => 1,
      :months_age => 1,
      :years_age => 1,
      :gender => 1,
      :profession => "MyString",
      :blood_type => 1,
      :nacionality => "MyString",
      :eps => nil,
      :arl => nil,
      :address => "MyString",
      :condition => 1,
      :accompanist_name => "MyString",
      :relationship => 1,
      :phone => "MyString",
      :city => nil,
      :user => nil
    ))
  end

  it "renders new patient form" do
    render

    assert_select "form[action=?][method=?]", patients_path, "post" do

      assert_select "input#patient_first_name[name=?]", "patient[first_name]"

      assert_select "input#patient_second_name[name=?]", "patient[second_name]"

      assert_select "input#patient_first_surname[name=?]", "patient[first_surname]"

      assert_select "input#patient_second_surname[name=?]", "patient[second_surname]"

      assert_select "input#patient_email[name=?]", "patient[email]"

      assert_select "input#patient_type_document[name=?]", "patient[type_document]"

      assert_select "input#patient_document[name=?]", "patient[document]"

      assert_select "input#patient_days_age[name=?]", "patient[days_age]"

      assert_select "input#patient_months_age[name=?]", "patient[months_age]"

      assert_select "input#patient_years_age[name=?]", "patient[years_age]"

      assert_select "input#patient_gender[name=?]", "patient[gender]"

      assert_select "input#patient_profession[name=?]", "patient[profession]"

      assert_select "input#patient_blood_type[name=?]", "patient[blood_type]"

      assert_select "input#patient_nacionality[name=?]", "patient[nacionality]"

      assert_select "input#patient_eps_id[name=?]", "patient[eps_id]"

      assert_select "input#patient_arl_id[name=?]", "patient[arl_id]"

      assert_select "input#patient_address[name=?]", "patient[address]"

      assert_select "input#patient_condition[name=?]", "patient[condition]"

      assert_select "input#patient_accompanist_name[name=?]", "patient[accompanist_name]"

      assert_select "input#patient_relationship[name=?]", "patient[relationship]"

      assert_select "input#patient_phone[name=?]", "patient[phone]"

      assert_select "input#patient_city_id[name=?]", "patient[city_id]"

      assert_select "input#patient_user_id[name=?]", "patient[user_id]"
    end
  end
end
