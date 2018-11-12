require "NutrientesEdu/version"

  class Alimento
    
    attr_reader :nombre, :grasas, :grsat, :carbs, :azucar, :protein, :sal
    
    def initialize(nombre, grasas, grsat, carbs, azucar, protein, sal)
      @nombre = nombre
      @grasas = grasas
      @grsat = grsat
      @carbs = carbs
      @azucar = azucar
      @protein = protein
      @sal = sal
      
    end
  end