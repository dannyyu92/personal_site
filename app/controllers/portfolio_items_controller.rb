class PortfolioItemsController < ApplicationController
  before_filter :authenticate_admin!, except: [:index, :show]
  # GET /portfolio_items
  def index
    @portfolio_items = PortfolioItem.all
  end

  # GET /portfolio_items/1
  def show
    @portfolio_item = PortfolioItem.find(params[:id])
  end

  # GET /portfolio_items/new
  def new
    @portfolio_item = PortfolioItem.new
  end

  # GET /portfolio_items/1/edit
  def edit
    @portfolio_item = PortfolioItem.find(params[:id])
  end

  # POST /portfolio_items
  def create
    @portfolio_item = PortfolioItem.new(params[:portfolio_item])

    if @portfolio_item.save
      redirect_to @portfolio_item, notice: 'Portfolio item was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /portfolio_items/1
  def update
    @portfolio_item = PortfolioItem.find(params[:id])

    if @portfolio_item.update_attributes(params[:portfolio_item])
      redirect_to @portfolio_item, notice: 'Portfolio item was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /portfolio_items/1
  def destroy
    @portfolio_item = PortfolioItem.find(params[:id])
    @portfolio_item.destroy

    redirect_to portfolio_items_url
  end
end
