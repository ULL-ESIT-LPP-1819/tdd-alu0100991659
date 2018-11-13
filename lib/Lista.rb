require "NutrientesEdu/version"

 Node = Struct.new(:value, :next, :prev)

  class Lista
    
    include Enumerable
    
    attr_reader :head, :tail
    
    
    
    def each
      x = @head
      while(x != nil)
        yield x.value
        x = x.next
      end
    end
  
    
    
  end