class Api::V1::ClinicsController < ApplicationController
  before_action :set_clinic, only: [:show, :update, :destroy]

  def index
    @clinics = Clinic.all.map { |clinic| [clinic, clinic.addresses.last]}
    
    render json: @clinics
  end

  def show
    render json: @clinic
  end

  
  def create
    @clinic = Clinic.new(nome: params[:nome], cnpj: params[:cnpj])

    if @clinic.cnpj.length != 14
      return
    end

    @parsed_address = params[:data][:address].split(',')

    if @clinic.save
      begin
      @address = Address.new(
        street: @parsed_address[0], 
        number: @parsed_address[1].split('-')[0],
        neighborhood: @parsed_address[1].split('-')[1],
        complement: params[:data][:address],
        city: @parsed_address[2].split('-')[0],
        state: @parsed_address[2].split('-')[1],
        country: @parsed_address[3],
        latitude: params[:data][:latitude].to_s,
        longitude: params[:data][:longitude].to_s,
        clinic_id: @clinic.id
       )

       @address.save
       @clinic.update(address_id: @address.id)

      rescue StandardError => e
        @clinic.destroy
        render json: {status: 400, error: "Endereço insuficiente, lembre-se de adicionar o número."}
      end
    end
  end


  def update
    if @clinic.update(clinic_params)
      render json: @clinic
    else
      render json: @clinic.errors, status: :unprocessable_entity
    end
  end


  def destroy
    @clinic.destroy
  end

  private

    def set_clinic
      @clinic = Clinic.find(params[:id])
    end

    def set_address
      @address = Address.find_by(clinic_id: params[:id])
    end

    def clinic_params
      params.require(:clinic).permit(:nome, :cnpj, :data, :address)
    end
end
