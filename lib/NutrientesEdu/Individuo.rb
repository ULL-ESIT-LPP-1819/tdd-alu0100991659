require "NutrientesEdu/version"

class Individuos < IMC
    
    include Comparable
    attr_reader :nombre, :paciente, :tratamiento
    
    def initialize(nombre, paciente, tratamiento, peso, talla, edad, sexo, f_af)
        @nombre=nombre
        @paciente=paciente
        @tratamiento=tratamiento
        @f_af=f_af
        @peso=peso
        @talla=talla
        @edad=edad
        @sexo=sexo
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
    
    def g_e_basal
        if(@sexo == 0)
            return 10*@peso+6.25*@talla-5*@edad-161
        else
            return 10*@peso+6.25*@talla-5*@edad+5
        end
    end
    
    def e_term
        return g_e_basal*0.10
    end
    
    def g_act_fis
        return g_e_basal*@f_af
    end
    
    def g_en_total
        return g_e_basal+e_term+g_act_fis
    end
            
    
    def to_s
        rval = "#{@nombre}"
        if(@tratamiento == 1)
            rval += super
        end
        return rval
    end
end