require "application_system_test_case"

class MaintenancesTest < ApplicationSystemTestCase
  setup do
    @maintenance = maintenances(:one)
  end

  test "visiting the index" do
    visit maintenances_url
    assert_selector "h1", text: "Maintenances"
  end

  test "should create maintenance" do
    visit maintenances_url
    click_on "New maintenance"

    fill_in "City", with: @maintenance.city
    fill_in "Fecha", with: @maintenance.fecha
    fill_in "Materials", with: @maintenance.materials
    fill_in "Motor", with: @maintenance.motor_id
    fill_in "Name", with: @maintenance.name
    fill_in "Operatorname", with: @maintenance.operatorname
    fill_in "Tipo", with: @maintenance.tipo
    click_on "Create Maintenance"

    assert_text "Maintenance was successfully created"
    click_on "Back"
  end

  test "should update Maintenance" do
    visit maintenance_url(@maintenance)
    click_on "Edit this maintenance", match: :first

    fill_in "City", with: @maintenance.city
    fill_in "Fecha", with: @maintenance.fecha
    fill_in "Materials", with: @maintenance.materials
    fill_in "Motor", with: @maintenance.motor_id
    fill_in "Name", with: @maintenance.name
    fill_in "Operatorname", with: @maintenance.operatorname
    fill_in "Tipo", with: @maintenance.tipo
    click_on "Update Maintenance"

    assert_text "Maintenance was successfully updated"
    click_on "Back"
  end

  test "should destroy Maintenance" do
    visit maintenance_url(@maintenance)
    click_on "Destroy this maintenance", match: :first

    assert_text "Maintenance was successfully destroyed"
  end
end