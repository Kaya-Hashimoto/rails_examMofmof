class PropertiesController < ApplicationController
  before_action :set_property, only: %i[ show edit update destroy ]

  def index
    @properties = Property.all
  end

  def show
  end

  def new
    @property = Property.new
    2.times { @property.stations.build }
  end

  def edit
  end

  def update
    if @property.update(property_params)
      redirect_to property_path,  notice: "編集しました"
    end

  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to properties_path, notice: "登録しました"
    else
      render :new
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_path, notice: "削除しました"
  end


  private

  def set_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:property_name, :rent, :built_year, :address, :remark,
                                    stations_attributes:[:id, :line_name, :station_name, :walking_minutes,
                                    :properties_id])
  end


end
