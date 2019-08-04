require 'test_helper'

class SubjectClassroomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subject_classroom = subject_classrooms(:one)
  end

  test "should get index" do
    get subject_classrooms_url
    assert_response :success
  end

  test "should get new" do
    get new_subject_classroom_url
    assert_response :success
  end

  test "should create subject_classroom" do
    assert_difference('SubjectClassroom.count') do
      post subject_classrooms_url, params: { subject_classroom: { classroom_id: @subject_classroom.classroom_id, subject_id: @subject_classroom.subject_id } }
    end

    assert_redirected_to subject_classroom_url(SubjectClassroom.last)
  end

  test "should show subject_classroom" do
    get subject_classroom_url(@subject_classroom)
    assert_response :success
  end

  test "should get edit" do
    get edit_subject_classroom_url(@subject_classroom)
    assert_response :success
  end

  test "should update subject_classroom" do
    patch subject_classroom_url(@subject_classroom), params: { subject_classroom: { classroom_id: @subject_classroom.classroom_id, subject_id: @subject_classroom.subject_id } }
    assert_redirected_to subject_classroom_url(@subject_classroom)
  end

  test "should destroy subject_classroom" do
    assert_difference('SubjectClassroom.count', -1) do
      delete subject_classroom_url(@subject_classroom)
    end

    assert_redirected_to subject_classrooms_url
  end
end
