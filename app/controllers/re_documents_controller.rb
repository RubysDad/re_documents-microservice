class ReDocumentsController < ApplicationController
  before_action :set_re_document, only: [:show, :update, :destroy]

  # GET /re_documents
  def index
    @re_documents = ReDocument.order('created_at DESC')

    render json: @re_documents
  end

  # GET /re_documents/1
  def show
    render json: @re_document
  end

  # POST /re_documents
  def create
    @re_document = ReDocument.new(re_document_params)

    if @re_document.save
      render json: @re_document, status: :created, location: @re_document
    else
      render json: @re_document.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /re_documents/1
  def update
    if @re_document.update(re_document_params)
      render json: @re_document
    else
      render json: @re_document.errors, status: :unprocessable_entity
    end
  end

  # DELETE /re_documents/1
  def destroy
    @re_document.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_re_document
      @re_document = ReDocument.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def re_document_params
      params.require(:re_document).permit(:title, :description, :file_url, :image_url)
    end
end
