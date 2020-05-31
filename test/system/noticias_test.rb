require "application_system_test_case"

class NoticiasTest < ApplicationSystemTestCase
  setup do
    @noticia = noticias(:one)
  end

  test "visiting the index" do
    visit noticias_url
    assert_selector "h1", text: "Noticias"
  end

  test "creating a Noticia" do
    visit noticias_url
    click_on "New Noticia"

    fill_in "Contenido", with: @noticia.contenido
    fill_in "Titulo", with: @noticia.titulo
    click_on "Create Noticia"

    assert_text "Noticia was successfully created"
    click_on "Back"
  end

  test "updating a Noticia" do
    visit noticias_url
    click_on "Edit", match: :first

    fill_in "Contenido", with: @noticia.contenido
    fill_in "Titulo", with: @noticia.titulo
    click_on "Update Noticia"

    assert_text "Noticia was successfully updated"
    click_on "Back"
  end

  test "destroying a Noticia" do
    visit noticias_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Noticia was successfully destroyed"
  end
end
