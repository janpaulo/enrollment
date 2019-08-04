require "application_system_test_case"

class EnrollmentsTest < ApplicationSystemTestCase
  setup do
    @enrollment = enrollments(:one)
  end

  test "visiting the index" do
    visit enrollments_url
    assert_selector "h1", text: "Enrollments"
  end

  test "creating a Enrollment" do
    visit enrollments_url
    click_on "New Enrollment"

    fill_in "Address", with: @enrollment.address
    fill_in "Birth place", with: @enrollment.birth_place
    fill_in "Birthday", with: @enrollment.birthday
    fill_in "Course", with: @enrollment.course
    fill_in "Fname", with: @enrollment.fname
    fill_in "Lname", with: @enrollment.lname
    fill_in "Mobile", with: @enrollment.mobile
    fill_in "Sem no", with: @enrollment.sem_no
    fill_in "Student", with: @enrollment.student_id
    fill_in "Year", with: @enrollment.year
    click_on "Create Enrollment"

    assert_text "Enrollment was successfully created"
    click_on "Back"
  end

  test "updating a Enrollment" do
    visit enrollments_url
    click_on "Edit", match: :first

    fill_in "Address", with: @enrollment.address
    fill_in "Birth place", with: @enrollment.birth_place
    fill_in "Birthday", with: @enrollment.birthday
    fill_in "Course", with: @enrollment.course
    fill_in "Fname", with: @enrollment.fname
    fill_in "Lname", with: @enrollment.lname
    fill_in "Mobile", with: @enrollment.mobile
    fill_in "Sem no", with: @enrollment.sem_no
    fill_in "Student", with: @enrollment.student_id
    fill_in "Year", with: @enrollment.year
    click_on "Update Enrollment"

    assert_text "Enrollment was successfully updated"
    click_on "Back"
  end

  test "destroying a Enrollment" do
    visit enrollments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Enrollment was successfully destroyed"
  end
end
