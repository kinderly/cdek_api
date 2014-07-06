module CdekApi
  class PickupPoint
    attr_accessor :code, :name, :city_code, :city, :work_time, :address, :phone, :note, :coord_x,
                  :coord_y

    def self.from_xml(xml)
      res = PickupPoint.new
      res.code = xml.xpath('@Code').text
      res.name = xml.xpath('@NameCode').text
      res.city_code = xml.xpath('@CityCode').text.to_i
      res.city = xml.xpath('@City').text
      res.work_time = xml.xpath('@WorkTime').text
      res.address = xml.xpath('@Address').text
      res.phone = xml.xpath('@Phone').text
      res.note = xml.xpath('@Note').text
      res.coord_x = xml.xpath('@coord_x').text.to_f
      res.coord_y = xml.xpath('@coord_y').text.to_f
      res
    end
  end
end
