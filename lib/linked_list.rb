require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    if head.nil?
      nil
    else
      current = head
      length = 0
      while current.next_node
        length += 1
        current = current.next_node
      end
      puts length
      current = head
      (length - n + 1).times do 
        current = current.next_node
      end
      
      if n - 2 < length && n > 0
      current.value
      else 
        nil
      end 
    end
end

end
