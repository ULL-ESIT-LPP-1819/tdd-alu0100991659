require "NutrientesEdu/version"

class Menu < Lista
    include Comparable
   
    def kcal
        x = collect{|a| a.val_ener}
        y = x.inject(0, :+)
        y
    end
   
    def is_enough(persona)
        x = kcal
        return (persona.g_en_total <= x * 1.1) && (persona.g_en_total >= x * 0.9)
    end
  
  
    def <=>(other)
        kcal <=> other.kcal
    end
end