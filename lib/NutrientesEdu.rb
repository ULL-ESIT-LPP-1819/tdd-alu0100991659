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
    
    def val_ener
      (grasas*9+carbs*4+protein*4)
    end
  end