require 'rails_helper'

RSpec.describe DistanceBigDependancy do
  let(:the_big_d) {DistanceBigDependancy.new}
  xit "can compare time by swollow to the next location" do
    expect(the_big_d.execute).to eq(5)
  end

end
