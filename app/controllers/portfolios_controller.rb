class PortfoliosController < ApplicationController
	def index
		@portfolio_items=Portfolio.all
	end

	def new
		@portfolio_items=Portfolio.new
	end

	def edit
		@portfolio_items=Portfolio.find(params[:id])
	end

	def show
		@portfolio_items=Portfolio.find(params[:id])
	end

	def destroy
		#perform the lookup
	@portfolio_items=Portfolio.find(params[:id])
	#destroy the record
    @portfolio_items.destroy
    #redirect
    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully deleted.' }
      end
  end



	def update
		@portfolio_items=Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_items.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'portfolio_items was successfully updated.' }
        #format.json { render :show, status: :ok, location: @portfolio_items }
      else
        format.html { render :edit }
        format.json { render json: @portfolio_items.errors, status: :unprocessable_entity }
      end
    end
  end
	

	def create
    @portfolio_items = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_items.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
        format.json { render :show, status: :created, location: @portfolio_items }
      else
        format.html { render :new }
        format.json { render json: @portfolio_items.errors, status: :unprocessable_entity }
      end
    end
  end
end

private
    # Use callbacks to share common setup or constraints between actions.
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_params
      params.require(:portfolio).permit(:title, :subtitle, :body)
    end