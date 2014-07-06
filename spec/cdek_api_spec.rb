require_relative 'spec_helper'

describe CdekApi do
  describe '.pickup_points' do
    it 'works' do
      pp = nil
      expect do
        pp = described_class.pickup_points
      end.not_to raise_error
    end
  end

  describe '.russian_cities' do
    it 'works' do
      rs = nil
      expect do
        rs = described_class.russian_cities
      end.not_to raise_error
    end
  end
end
