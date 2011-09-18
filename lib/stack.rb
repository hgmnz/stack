class Stack
  extend Forwardable

  class EmptyStackError < StandardError; end

  def initialize
    @data = []
  end

  def_delegator :@data, :push
  def_delegator :@data, :empty?
  def_delegator :@data, :size

  def pop
    raise EmptyStackError if empty?
    @data.pop
  end
end
