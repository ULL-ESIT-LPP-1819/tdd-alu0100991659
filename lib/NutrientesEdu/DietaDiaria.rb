require "NutrientesEdu/version"

class DietaDia
    include Comparable
    
    attr_reader :nombre, :desayuno, :almuerzo, :cena, :conversiones
    
    def initialize(nombre, &bloque)
        @conversiones = [
            ["1 rodaja", 20],
            ["1 porcion", 100],
            ["1 taza", 180],
            ["1/2 cucharon",18],
            ["1 pieza", 135],
            ["1 vaso", 100]]
        @nombre = nombre
        @desayuno = Menu.new()
        @almuerzo = Menu.new()
        @cena = Menu.new()
        if block_given?
            if bloque.arity == 1
                yield self
            else
                instance_eval(&bloque)
            end
        end
    end
    
    
    def kcal
        @desayuno.kcal + @almuerzo.kcal + @cena.kcal
    end
    
    
    def is_enough(persona)
        x = kcal
        return (persona.g_en_total <= x * 1.1) && (persona.g_en_total >= x * 0.9)
    end
    
    
    def <=>(other)
        kcal <=> other.kcal
    end
    
    
    
    def to_s
        texto = @nombre
        texto << "\n#{'=' * @nombre.size}\n"
        texto << "Composicion nutricional: \n"
        texto << "Desayuno: "
        texto << "\n"
        texto << @desayuno.to_s
        texto << "Almuerzo: "
        texto << "\n"
        texto << @almuerzo.to_s
        texto << "Cena: "
        texto << "\n"
        texto << @cena.to_s
        texto << "Kcal totales: "
        texto << "#{kcal}"
        texto << "\n"
        return texto
    end
    
    
    def desayuno(options = {})
        porcion = 0
        @conversiones.each do
            |x|
            porcion = x[1] if x[0] == options[:porcion]
        end
        multiplier = porcion / options[:gramos]
        @desayuno.push_tail(Alimento.new(options[:descripcion],options[:grasas] * multiplier,0,options[:carbohidratos] * multiplier,0,options[:proteinas] * multiplier,options[:sal] * multiplier))
    end
    
    
    def almuerzo(options = {})
        porcion = 0
        @conversiones.each do
            |x|
            porcion = x[1] if x[0] == options[:porcion]
        end
        multiplier = porcion / options[:gramos]
        @almuerzo.push_tail(Alimento.new(options[:descripcion],options[:grasas] * multiplier,0,options[:carbohidratos] * multiplier,0,options[:proteinas] * multiplier,options[:sal] * multiplier))
    end
   
   
    def cena(options = {})
        porcion = 0
        @conversiones.each do
            |x|
            porcion = x[1] if x[0] == options[:porcion]
        end
        multiplier = porcion / options[:gramos]
        @cena.push_tail(Alimento.new(options[:descripcion],options[:grasas] * multiplier,0,options[:carbohidratos] * multiplier,0,options[:proteinas] * multiplier,options[:sal] * multiplier))
    end
end