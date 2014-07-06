require_relative 'spec_helper'

describe CdekApi do
  describe '.pickup_points' do

    it 'works' do
      pp = nil
      expect do
        pp = described_class.pickup_points
      end.not_to raise_error

      p pp
    end

  end
end
