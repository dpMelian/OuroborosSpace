require "application_system_test_case"

class PlanetasTest < ApplicationSystemTestCase
  setup do
    @planeta = planetas(:one)
  end

  test "visiting the index" do
    visit planetas_url
    assert_selector "h1", text: "Planetas"
  end

  test "creating a Planeta" do
    visit planetas_url
    click_on "New Planeta"

    fill_in "Fecha descubrimiento", with: @planeta.fecha_descubrimiento
    fill_in "Foto", with: @planeta.foto
    fill_in "Gravedad", with: @planeta.gravedad
    fill_in "Masa en tierras", with: @planeta.masa_en_tierras
    fill_in "Nombre", with: @planeta.nombre
    fill_in "Periodo orbital", with: @planeta.periodo_orbital
    fill_in "Periodo rotacion", with: @planeta.periodo_rotacion
    click_on "Create Planeta"

    assert_text "Planeta was successfully created"
    click_on "Back"
  end

  test "updating a Planeta" do
    visit planetas_url
    click_on "Edit", match: :first

    fill_in "Fecha descubrimiento", with: @planeta.fecha_descubrimiento
    fill_in "Foto", with: @planeta.foto
    fill_in "Gravedad", with: @planeta.gravedad
    fill_in "Masa en tierras", with: @planeta.masa_en_tierras
    fill_in "Nombre", with: @planeta.nombre
    fill_in "Periodo orbital", with: @planeta.periodo_orbital
    fill_in "Periodo rotacion", with: @planeta.periodo_rotacion
    click_on "Update Planeta"

    assert_text "Planeta was successfully updated"
    click_on "Back"
  end

  test "destroying a Planeta" do
    visit planetas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Planeta was successfully destroyed"
  end
end
