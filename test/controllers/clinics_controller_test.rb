require "test_helper"

class ClinicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clinic = clinics(:one)
  end

  test "should get index" do
    get clinics_url, as: :json
    assert_response :success
  end

  test "should create clinic" do
    assert_difference('Clinic.count') do
      post clinics_url, params: { clinic: { cnpj: @clinic.cnpj, nome: @clinic.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show clinic" do
    get clinic_url(@clinic), as: :json
    assert_response :success
  end

  test "should update clinic" do
    patch clinic_url(@clinic), params: { clinic: { cnpj: @clinic.cnpj, nome: @clinic.nome } }, as: :json
    assert_response 200
  end

  test "should destroy clinic" do
    assert_difference('Clinic.count', -1) do
      delete clinic_url(@clinic), as: :json
    end

    assert_response 204
  end
end
