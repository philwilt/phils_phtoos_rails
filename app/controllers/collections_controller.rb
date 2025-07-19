class CollectionsController < ApplicationController
  before_action :set_collection, only: %i[ show edit update destroy ]

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.new(collection_params)

    respond_to do |format|
      if @collection.save
        format.html { redirect_to @collection, notice: "Collection was successfully created." }
        format.json { render :show, status: :created, location: @collection }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @collection.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
    @collections = Collection.all
  end

  def edit
  end

  def update
    respond_to do |format|
      if @collection.update(collection_params)
        format.html { redirect_to @collection, notice: "Collection was successfully updated." }
        format.json { render :show, status: :ok, location: @collection }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @collection.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @collection.destroy!

    respond_to do |format|
      format.html { redirect_to collections_path, status: :see_other, notice: "Collection was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_collection
    @collection = Collection.find(params.expect(:id))
  end

  def collection_params
    params.expect(collection: [:name, :description])
  end
end
