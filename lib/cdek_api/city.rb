module CdekApi
  class City
    attr_reader :id, :city_name, :obl_name, :full_name, :center, :limit, :eng_name

    def initialize(row)
      @id, @full_name, @city_name, @obl_name = row[0..3]
      @center = !(row[4].nil? || row[4].empty?)
      @limit = row[5].to_f
      @eng_name = (row[6].nil? || row[6].empty?) ? nil : row[6]
    end
  end
end
