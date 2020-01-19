class TestTakersController < ApplicationController
  before_action :set_test_taker, only: [:show, :update, :destroy]

  def index
    @test_takers = TestTaker.all

    render json: @test_takers
  end

  def show
    render json: @test_taker
  end

  def create
    @test_taker = TestTaker.new(test_taker_params)

    if @test_taker.save
      render json: @test_taker, status: :created, location: @test_taker
    else
      render json: @test_taker.errors, status: :unprocessable_entity
    end
  end

  def update
    if @test_taker.update(test_taker_params)
      render json: @test_taker
    else
      render json: @test_taker.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @test_taker.destroy
  end

  private
    def set_test_taker
      @test_taker = TestTaker.find(params[:id])
    end

    def test_taker_params
      params.require(:test_taker).permit(:login, :password, :title, :lastname, :firstname, :gender, :email, :picture, :address)
    end
end
