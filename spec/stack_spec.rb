require 'stack'

describe Stack do
  let(:stack)  { Stack.new }

  context 'by default' do
    it 'starts out empty' do
      stack.empty?.should be_true
    end
  end

  context 'pushing elements' do
    it 'can be pushed an element' do
      stack.should be_empty
      stack.push(1)
      stack.size.should == 1
    end

    it 'can be pushed many elements at once' do
      stack.should be_empty
      stack.push(1, 2, 3, 4, 5)
      stack.size.should == 5
    end
  end

  context 'popping elements' do
    it 'allows you to pop the last pushed element' do
      stack.push(:foo, :bar)
      stack.pop.should == :bar
      stack.pop.should == :foo
      stack.should be_empty
    end

    it 'raises when popping an empty stack' do
      stack.should be_empty
      expect { stack.pop }.to raise_error(Stack::EmptyStackError)
    end
  end
end
