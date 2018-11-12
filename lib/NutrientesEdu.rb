require "NutrientesEdu/version"

  class Alimento
    
    attr_reader :nombre, :grasas, :grsat, :carbs, :azucar, :protein
    
    def initialize(nombre, grasas, grsat, carbs, azucar, protein)
      @nombre = nombre
      @grasas = grasas
      @grsat = grsat
      @carbs = carbs
      @azucar = azucar
      @protein = protein
      
    end
  end