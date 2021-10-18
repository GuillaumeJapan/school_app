require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "creating a Student" do
    visit students_url
    click_on "New Student"

    fill_in "Birth date", with: @student.birth_date
    fill_in "First name", with: @student.first_name
    fill_in "Group", with: @student.group_id
    fill_in "Inscription date", with: @student.inscription_date
    fill_in "Last name", with: @student.last_name
    fill_in "Note", with: @student.note
    fill_in "School", with: @student.school_id
    fill_in "Siblinghood", with: @student.siblinghood_id
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "updating a Student" do
    visit students_url
    click_on "Edit", match: :first

    fill_in "Birth date", with: @student.birth_date
    fill_in "First name", with: @student.first_name
    fill_in "Group", with: @student.group_id
    fill_in "Inscription date", with: @student.inscription_date
    fill_in "Last name", with: @student.last_name
    fill_in "Note", with: @student.note
    fill_in "School", with: @student.school_id
    fill_in "Siblinghood", with: @student.siblinghood_id
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "destroying a Student" do
    visit students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student was successfully destroyed"
  end
end
