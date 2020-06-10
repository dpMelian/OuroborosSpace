require 'test_helper'

class PlanetasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planeta = planetas(:one)
  end

  test "should get index" do
    get planetas_url
    assert_response :success
  end

  test "should get new" do
    get new_planeta_url
    assert_response :success
  end

  test "should create planeta" do
    assert_difference('Planeta.count') do
      post planetas_url, params: { planeta: { fecha_descubrimiento: @planeta.fecha_descubrimiento, foto: @planeta.foto, gravedad: @planeta.gravedad, masa_en_tierras: @planeta.masa_en_tierras, nombre: @planeta.nombre, periodo_orbital: @planeta.periodo_orbital, periodo_rotacion: @planeta.periodo_rotacion } }
    end

    assert_redirected_to planeta_url(Planeta.last)
  end

  test "should show planeta" do
    get planeta_url(@planeta)
    assert_response :success
  end

  test "should get edit" do
    get edit_planeta_url(@planeta)
    assert_response :success
  end

  test "should update planeta" do
    patch planeta_url(@planeta), params: { planeta: { fecha_descubrimiento: @planeta.fecha_descubrimiento, foto: @planeta.foto, gravedad: @planeta.gravedad, masa_en_tierras: @planeta.masa_en_tierras, nombre: @planeta.nombre, periodo_orbital: @planeta.periodo_orbital, periodo_rotacion: @planeta.periodo_rotacion } }
    assert_redirected_to planeta_url(@planeta)
  end

  test "should destroy planeta" do
    assert_difference('Planeta.count', -1) do
      delete planeta_url(@planeta)
    end

    assert_redirected_to planetas_url
  end
end
