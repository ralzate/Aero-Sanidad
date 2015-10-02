require 'rails_helper'

RSpec.describe "clinic_histories/new", type: :view do
  before(:each) do
    assign(:clinic_history, ClinicHistory.new(
      :city => "MyString",
      :department => "MyString",
      :user => nil,
      :cove => "MyString",
      :mobiel_service => "MyString",
      :airport => 1,
      :type_service => 1,
      :patient => nil,
      :origin => "MyString",
      :destination => "MyString",
      :company => "MyString",
      :accompanist_name => "MyString",
      :relationship => 1,
      :phone => "MyString",
      :reason_for_consultation => "MyText",
      :current_illness => "MyText"
    ))
  end

  it "renders new clinic_history form" do
    render

    assert_select "form[action=?][method=?]", clinic_histories_path, "post" do

      assert_select "input#clinic_history_city[name=?]", "clinic_history[city]"

      assert_select "input#clinic_history_department[name=?]", "clinic_history[department]"

      assert_select "input#clinic_history_user_id[name=?]", "clinic_history[user_id]"

      assert_select "input#clinic_history_cove[name=?]", "clinic_history[cove]"

      assert_select "input#clinic_history_mobiel_service[name=?]", "clinic_history[mobiel_service]"

      assert_select "input#clinic_history_airport[name=?]", "clinic_history[airport]"

      assert_select "input#clinic_history_type_service[name=?]", "clinic_history[type_service]"

      assert_select "input#clinic_history_patient_id[name=?]", "clinic_history[patient_id]"

      assert_select "input#clinic_history_origin[name=?]", "clinic_history[origin]"

      assert_select "input#clinic_history_destination[name=?]", "clinic_history[destination]"

      assert_select "input#clinic_history_company[name=?]", "clinic_history[company]"

      assert_select "input#clinic_history_accompanist_name[name=?]", "clinic_history[accompanist_name]"

      assert_select "input#clinic_history_relationship[name=?]", "clinic_history[relationship]"

      assert_select "input#clinic_history_phone[name=?]", "clinic_history[phone]"

      assert_select "textarea#clinic_history_reason_for_consultation[name=?]", "clinic_history[reason_for_consultation]"

      assert_select "textarea#clinic_history_current_illness[name=?]", "clinic_history[current_illness]"
    end
  end
end
