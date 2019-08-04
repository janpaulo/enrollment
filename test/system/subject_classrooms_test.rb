require "application_system_test_case"

class SubjectClassroomsTest < ApplicationSystemTestCase
  setup do
    @subject_classroom = subject_classrooms(:one)
  end

  test "visiting the index" do
    visit subject_classrooms_url
    assert_selector "h1", text: "Subject Classrooms"
  end

  test "creating a Subject classroom" do
    visit subject_classrooms_url
    click_on "New Subject Classroom"

    fill_in "Classroom", with: @subject_classroom.classroom_id
    fill_in "Subject", with: @subject_classroom.subject_id
    click_on "Create Subject classroom"

    assert_text "Subject classroom was successfully created"
    click_on "Back"
  end

  test "updating a Subject classroom" do
    visit subject_classrooms_url
    click_on "Edit", match: :first

    fill_in "Classroom", with: @subject_classroom.classroom_id
    fill_in "Subject", with: @subject_classroom.subject_id
    click_on "Update Subject classroom"

    assert_text "Subject classroom was successfully updated"
    click_on "Back"
  end

  test "destroying a Subject classroom" do
    visit subject_classrooms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subject classroom was successfully destroyed"
  end
end
