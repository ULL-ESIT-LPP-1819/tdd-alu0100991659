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
        val= @head
        node = @head.next
        @head = node
        if @head != nil
          @head.prev = nil
        end
        return val
      end
    end
    
    def pop_tail()
      if(@tail == nil)
        return nil
      else
        val = @tail
        node = @tail.prev
        @tail = node
        if @tail != nil
          @tail.next = nil
        end
        return val
      end
    end
        
    def sort_salt
      v = []
      j = 0
      each do
        |i| v[j] = i
        j += 1
      end
      terminado = false
      while !terminado
        terminado = true
        for k in 0..(v.length)-2
          if v[k].sal > v[k+1].sal
            aux = v[k+1]
            v[k+1] = v[k]
            v[k] = aux
            terminado = false
          end
        end
      end
      listadef = Lista.new()
      for k in 0..(v.length)-1
        listadef.push_tail(v[k])
      end
      return listadef
    end
    
  
    def each
      x = @head
      while(x != nil)
        yield x.value
        x = x.next
      end
    end
  
    
    
  end