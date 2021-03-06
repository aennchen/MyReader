class SourcesController < ApplicationController
  
  #provides pluralize
  include ActionView::Helpers::TextHelper

  def add
    #show search form, nothing fancy here.
  end

  # GET /sources/search.json
  # Searches for sources to add to the users category
  def search
    msg = nil
    sources = nil
    status = :ok

    if params[:q].nil? then
       msg = 'empty query'
       status = :length_required

    elsif params[:q].length < 3 then
       msg = 'query string too short'
       status = :length_required
       
    else
      q = '%' + params[:q] + '%'
      sources = AvailableSource.where('title LIKE ? OR url LIKE ?', q, q)
      msg = 'Found ' + pluralize(sources.length.to_s, 'source')
    end

    respond_to do |format|
      format.json { render json: [ status: status , result: sources, msg: msg ], status: status }.to_json
    end
  end

=begin
  # GET /sources
  # GET /sources.json
  def index
    @sources = Source.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sources }
    end
  end

  # GET /sources/1
  # GET /sources/1.json
  def show
    @source = Source.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @source }
    end
  end

  # GET /sources/new
  # GET /sources/new.json
  def new
    @source = Source.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @source }
    end
  end

  # GET /sources/1/edit
  def edit
    @source = Source.find(params[:id])
  end

  # POST /sources
  # POST /sources.json
  def create
    @source = Source.new(params[:source])

    respond_to do |format|
      if @source.save
        format.html { redirect_to @source, notice: 'Source was successfully created.' }
        format.json { render json: @source, status: :created, location: @source }
      else
        format.html { render action: "new" }
        format.json { render json: @source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sources/1
  # PUT /sources/1.json
  def update
    @source = Source.find(params[:id])

    respond_to do |format|
      if @source.update_attributes(params[:source])
        format.html { redirect_to @source, notice: 'Source was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sources/1
  # DELETE /sources/1.json
  def destroy
    @source = Source.find(params[:id])
    @source.destroy

    respond_to do |format|
      format.html { redirect_to sources_url }
      format.json { head :ok }
    end
  end

=end
end
