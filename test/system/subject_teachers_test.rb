require "application_system_test_case"

class SubjectTeachersTest < ApplicationSystemTestCase
  setup do
    @subject_teacher = subject_teachers(:one)
  end

  test "visiting the index" do
    visit subject_teachers_url
    assert_selector "h1", text: "Subject Teachers"
  end

  test "creating a Subject teacher" do
    visit subject_teachers_url
    click_on "New Subject Teacher"

    fill_in "Subject", with: @subject_teacher.subject_id
    fill_in "Teacher", with: @subject_teacher.teacher_id
    click_on "Create Subject teacher"

    assert_text "Subject teacher was successfully created"
    click_on "Back"
  end

  test "updating a Subject teacher" do
    visit subject_teachers_url
    click_on "Edit", match: :first

    fill_in "Subject", with: @subject_teacher.subject_id
    fill_in "Teacher", with: @subject_teacher.teacher_id
    click_on "Update Subject teacher"

    assert_text "Subject teacher was successfully updated"
    click_on "Back"
  end

  test "destroying a Subject teacher" do
    visit subject_teachers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subject teacher was successfully destroyed"
  end
end
