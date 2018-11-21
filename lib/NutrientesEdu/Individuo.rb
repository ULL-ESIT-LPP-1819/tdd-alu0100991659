require "NutrientesEdu/version"
require "NutrientesEdu/IMC"

class Individuos < IMC
    
    include Comparable
    attr_reader :nombre, :paciente, :tratamiento
    
    def initialize(nombre, paciente, tratamiento, peso, talla, edad, sexo)
        @nombre=nombre
        @paciente=paciente
        @tratamiento=tratamiento
        if @paciente==1
            super(peso,talla,edad,sexo)
        end
    end
    
    
end