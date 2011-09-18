class Stack

  class EmptyStackError < StandardError; end

  def initialize
    @data = []
  end

  def push(*elements)
    elements.each do |element|
      @data << element
    end
  end

  def pop
    raise EmptyStackError if empty?
    element = @data[-1]
    @data.delete_at(-1)

    element
  end

  def empty?
    @data.empty?
  end

  def size
    @data.size
  end

end
