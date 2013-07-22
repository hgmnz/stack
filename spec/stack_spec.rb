require 'stack'

describe Stack do
  context 'by default' do
    it 'starts out empty' do
      subject.should be_empty
    end
  end

  context 'pushing elements' do
    it 'can be pushed an element' do
      subject.push(1)
      subject.size.should == 1
    end

    it 'is not empty when elements are pushed' do
      subject.push(1)
      subject.should_not be_empty
    end

    it 'can be pushed many elements at once' do
      subject.push(1, 2, 3, 4, 5)
      subject.size.should == 5
    end
  end

  context 'popping elements' do
    it 'allows you to pop the last pushed element' do
      subject.push(:foo, :bar)
      subject.pop.should == :bar
      subject.pop.should == :foo
      subject.should be_empty
    end

    it 'raises when popping an empty stack' do
      subject.should be_empty
      expect { subject.pop }.to raise_error(Stack::EmptyStackError)
    end
  end
end
