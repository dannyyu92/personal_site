class PortfolioItemsController < ApplicationController
  # GET /portfolio_items
  # GET /portfolio_items.json
  def index
    @portfolio_items = PortfolioItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @portfolio_items }
    end
  end

  # GET /portfolio_items/1
  # GET /portfolio_items/1.json
  def show
    @portfolio_item = PortfolioItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @portfolio_item }
    end
  end

  # GET /portfolio_items/new
  # GET /portfolio_items/new.json
  def new
    @portfolio_item = PortfolioItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @portfolio_item }
    end
  end

  # GET /portfolio_items/1/edit
  def edit
    @portfolio_item = PortfolioItem.find(params[:id])
  end

  # POST /portfolio_items
  # POST /portfolio_items.json
  def create
    @portfolio_item = PortfolioItem.new(params[:portfolio_item])

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to @portfolio_item, notice: 'Portfolio item was successfully created.' }
        format.json { render json: @portfolio_item, status: :created, location: @portfolio_item }
      else
        format.html { render action: "new" }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /portfolio_items/1
  # PUT /portfolio_items/1.json
  def update
    @portfolio_item = PortfolioItem.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update_attributes(params[:portfolio_item])
        format.html { redirect_to @portfolio_item, notice: 'Portfolio item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portfolio_items/1
  # DELETE /portfolio_items/1.json
  def destroy
    @portfolio_item = PortfolioItem.find(params[:id])
    @portfolio_item.destroy

    respond_to do |format|
      format.html { redirect_to portfolio_items_url }
      format.json { head :no_content }
    end
  end
end
