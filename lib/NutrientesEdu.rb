require "NutrientesEdu/version"

  class Alimento
    
    attr_reader :nombre, :grasas, :grsat
    
    def initialize(nombre, grasas, grsat)
      @nombre = nombre
      @grasas = grasas
      @grsat = grsat
      
    end
  end