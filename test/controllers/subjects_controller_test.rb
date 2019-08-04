require 'test_helper'

class SubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subject = subjects(:one)
  end

  test "should get index" do
    get subjects_url
    assert_response :success
  end

  test "should get new" do
    get new_subject_url
    assert_response :success
  end

  test "should create subject" do
    assert_difference('Subject.count') do
      post subjects_url, params: { subject: { course: @subject.course, day: @subject.day, sbject_description: @subject.sbject_description, school_year: @subject.school_year, section: @subject.section, subject_name: @subject.subject_name, time: @subject.time, year_lvl: @subject.year_lvl } }
    end

    assert_redirected_to subject_url(Subject.last)
  end

  test "should show subject" do
    get subject_url(@subject)
    assert_response :success
  end

  test "should get edit" do
    get edit_subject_url(@subject)
    assert_response :success
  end

  test "should update subject" do
    patch subject_url(@subject), params: { subject: { course: @subject.course, day: @subject.day, sbject_description: @subject.sbject_description, school_year: @subject.school_year, section: @subject.section, subject_name: @subject.subject_name, time: @subject.time, year_lvl: @subject.year_lvl } }
    assert_redirected_to subject_url(@subject)
  end

  test "should destroy subject" do
    assert_difference('Subject.count', -1) do
      delete subject_url(@subject)
    end

    assert_redirected_to subjects_url
  end
end
