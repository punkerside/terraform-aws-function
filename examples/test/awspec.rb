require 'awspec'
require 'aws-sdk'

name = `cd examples/test/ && terraform output name`.strip.delete('"')

describe lambda(name.to_s) do
    it { should exist }
end