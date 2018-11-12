require "NutrientesEdu/version"

  class Alimento
    
    attr_reader :nombre, :grasas, :grsat, :carbs, :azucar
    
    def initialize(nombre, grasas, grsat, carbs, azucar)
      @nombre = nombre
      @grasas = grasas
      @grsat = grsat
      @carbs = carbs
      @azucar = azucar
      
    end
  end