module CdekApi
  class PickupPoint
    attr_reader :code, :name, :city_code, :city, :work_time, :address, :phone, :note, :coord_x, :coord_y

    def initialize(xml_node)
      @code = xml_node.xpath('@Code').text
      @name = xml_node.xpath('@Name').text
      @city_code = xml_node.xpath('@CityCode').text.to_i
      @city = xml_node.xpath('@City').text
      @work_time = xml_node.xpath('@WorkTime').text
      @address = xml_node.xpath('@Address').text
      @phone = xml_node.xpath('@Phone').text
      @note = xml_node.xpath('@Note').text
      @coord_x = xml_node.xpath('@coord_x').text.to_f
      @coord_y = xml_node.xpath('@coord_y').text.to_f
    end
  end
end
