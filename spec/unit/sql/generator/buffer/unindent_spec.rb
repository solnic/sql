require 'spec_helper'

describe SQL::Generator::Buffer, '#unindent' do
  let(:object) { described_class.new }

  subject { object.unindent }

  it 'should unindent two chars' do
    object.append('foo')
    object.indent
    object.append('bar')
    object.unindent
    object.append('baz')
    expect(object.content).to eql("foo\n  bar\nbaz")
  end

  it_should_behave_like 'a command method'
end