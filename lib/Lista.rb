require "NutrientesEdu/version"

 Node = Struct.new(:value, :next, :prev)

  class Lista
    
    include Enumerable
    
    attr_reader :head, :tail
    
    def push_head(value)
      if(@head == nil)
        node=Node.new(value,nil,nil)
        @head = node
        @tail = node
      else
        node=Node.new(value,@head,nil)
        @head.prev = node
        @head = node
        
      end
    end
    
    def push_tail(value)
      if(@tail == nil)
        node=Node.new(value,nil,nil)
        @head = node
        @tail = node
      else
        node=Node.new(value,nil,@tail)
        @tail.next = node
        @tail = node
      end
    end
    
    def pop_head()
      if(@head == nil)
        return nil
      else
        val= @head.value
        node = @head.next
        @head = node
        @head.prev = nil
        return val
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