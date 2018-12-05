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
    
    def clas_imc
        if calcular_imc < 30
            return "Normal"
        else
            return "Obeso"
        end
    end
    
    def to_s
        rval = "#{@nombre}"
        if(@tratamiento == 1)
            rval += super
        end
        return rval
    end
end