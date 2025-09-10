class ItemTemplatesController < ApplicationController
  before_action :set_item_template, only: %i[show edit update destroy]

  # GET /item_templates
  def index
    @item_templates = ItemTemplate.all
  end

  # GET /item_templates/:id
  def show
  end

  # GET /item_templates/new
  def new
    @item_template = ItemTemplate.new
  end

  # POST /item_templates
  def create
    @item_template = ItemTemplate.new(item_template_params)
    if @item_template.save
      redirect_to @item_template, notice: "Template créé avec succès."
    else
      render :new
    end
  end

  # GET /item_templates/:id/edit
  def edit
  end

  # PATCH/PUT /item_templates/:id
  def update
    if @item_template.update(item_template_params)
      redirect_to @item_template, notice: "Template mis à jour avec succès."
    else
      render :edit
    end
  end

  # DELETE /item_templates/:id
  def destroy
    @item_template.destroy
    redirect_to item_templates_path, notice: "Template supprimé."
  end

  private

  def set_item_template
    @item_template = ItemTemplate.find(params[:id])
  end

  def item_template_params
    params.require(:item_template).permit(:name, :rarity, :description)
  end
end
