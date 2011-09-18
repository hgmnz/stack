require 'stack'

describe Stack do
  let(:stack)  { Stack.new }

  it 'starts out empty' do
    stack.should be_empty
  end

  it 'it can be pushed an element' do
    stack.should be_empty
    stack.push(1)
    stack.should have(1).element
  end

  it 'allows you to pop the last pushed element' do
    stack.push(:foo)
    stack.pop.should == :foo
  end
end
