# frozen_string_literal: true

class AnimalsController < ApplicationController
  def index
    render :index, locals: {
      animals: animals
    }
  end

  def show
    render :show, locals: {
      animal: animals.by_cn(params[:id]).one
    }
  end

  protected

  def animals
    rom.relations[:animals].map_with(:animal)
  end
end
