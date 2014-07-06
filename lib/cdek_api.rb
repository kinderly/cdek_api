require 'net/http'
require 'nokogiri'

module CdekApi
  API_HOST = 'gw.edostavka.ru'
  API_PORT = '11443'

  def self.pickup_points
    cn = Net::HTTP.new(API_HOST, API_PORT)
    response = cn.post('/pvzlist.php', '')

    xml_doc = Nokogiri::XML(response.body)

    xml_doc.xpath('PvzList/Pvz').map do |el|
      PickupPoint.from_xml(el)
    end
  end
end

require_relative 'cdek_api/pickup_point'
