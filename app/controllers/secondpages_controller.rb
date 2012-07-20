class SecondpagesController < ApplicationController
  # GET /secondpages
  # GET /secondpages.json
  def index
    @secondpages = Secondpage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @secondpages }
    end
  end

  # GET /secondpages/1
  # GET /secondpages/1.json
  def show
    @secondpage = Secondpage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @secondpage }
    end
  end

  # GET /secondpages/new
  # GET /secondpages/new.json
  def new
    @homepage = Homepage.find(params[:id])
    @secondpage = @homepage.secondpages.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @secondpage }
    end
  end

  # GET /secondpages/1/edit
  def edit
    @secondpage = Secondpage.find(params[:id])
  end

  # POST /secondpages
  # POST /secondpages.json
  def create
    @homepage = Homepage.find(params[:id])
    @secondpage = @homepage.secondpages.build(params[:secondpage])

    respond_to do |format|
      if @secondpage.save
        format.html { redirect_to @secondpage, notice: 'Secondpage was successfully created.' }
        format.json { render json: @secondpage, status: :created, location: @secondpage }
      else
        format.html { render action: "new" }
        format.json { render json: @secondpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /secondpages/1
  # PUT /secondpages/1.json
  def update
    @secondpage = Secondpage.find(params[:id])

    respond_to do |format|
      if @secondpage.update_attributes(params[:secondpage])
        format.html { redirect_to @secondpage, notice: 'Secondpage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @secondpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secondpages/1
  # DELETE /secondpages/1.json
  def destroy
    @secondpage = Secondpage.find(params[:id])
    @secondpage.destroy

    respond_to do |format|
      format.html { redirect_to secondpages_url }
      format.json { head :no_content }
    end
  end
  def final
	@homebase = Homepage.all
	#raise @homebase.inspect
	#@second = @homebase.Secondpage.all
	#raise @second.inspect
	#raise @homebase.inspect	
	
   
#	raise @second.inspect
#raise @secondpage.inspect	
	#raise @secondpage.inspect
	
  end
  

end

