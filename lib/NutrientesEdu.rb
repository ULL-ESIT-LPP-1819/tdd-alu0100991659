require "NutrientesEdu/version"

  class Alimento
    
    attr_reader :nombre, :grasas, :grsat, :carbs
    
    def initialize(nombre, grasas, grsat, carbs)
      @nombre = nombre
      @grasas = grasas
      @grsat = grsat
      @carbs = carbs
      
    end
  end