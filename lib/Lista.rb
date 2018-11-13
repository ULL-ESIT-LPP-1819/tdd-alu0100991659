require "NutrientesEdu/version"

 Node = Struct.new(:value, :next, :prev)

  class Lista
    
    include Enumerable
    
    attr_reader :head, :tail
    
    def push_head(value)
      if(head == nil)
        node=Node.new(value,nil,nil)
        @head = node
        @tail = node
      else
        node=Node.new(value,nil,@head)
        @head.prev = node
        @head = node
        
      end
    end
    
    def push_tail(value)
      if(tail == nil)
        node=Node.new(value,nil,nil)
        @head = node
        @tail = node
      else
        node=Node.new(value,nil,nil)
        @tail.next = node
        @tail = node
      end
    end
    
    def each
      x = @head
      while(x != nil)
        yield x.value
        x = x.next
      end
    end
  
    
    
  end