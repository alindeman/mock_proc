# MockProc

An attempt to create a mock `Proc` object, so expectations can be set on how
it is called.

Ideal for testing callbacks; alternatives are discussed in [Avdi's blog
post](http://devblog.avdi.org/2011/12/12/testing-that-a-block-is-called/).

`mock_proc` is meant to plug into other mocking libraries. Right now it
supports rspec-mocks.

## rspec-mocks

```ruby
describe MockProc do
  it "expects an exact number of calls" do
    block = MockProc.new
    block.should_be_called.twice

    2.times { block.call }
  end
end
```

You can use all of the same predicates you expect:

```ruby
describe MockProc do
  it "expects arguments" do
    block = MockProc.new
    block.should_be_called.with(:foo)

    block.call(:foo)
  end
end
```

It works any way you invoke the block:

```ruby
describe MockProc do
  it "allows all methods that invoke a block" do
    block = MockProc.new
    block.should_be_called.exactly(2).times

    block[:foo]
    block === :foo
  end
end
```

## TODO

* Other mocking frameworks: mocha, ...?
