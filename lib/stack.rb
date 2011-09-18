class Stack
  extend Forwardable

  class EmptyStackError < StandardError; end

  def initialize
    @data = []
  end

  def_delegators :@data, :push, :empty?, :size

  def pop
    raise EmptyStackError if empty?
    @data.pop
  end
end
