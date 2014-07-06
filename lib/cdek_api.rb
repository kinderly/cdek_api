require 'net/http'
require 'nokogiri'
require 'csv'

module CdekApi
  API_HOST = 'gw.edostavka.ru'
  API_PORT = '11443'

  def self.pickup_points
    cn = Net::HTTP.new(API_HOST, API_PORT)
    response = cn.post('/pvzlist.php', '')

    xml_doc = Nokogiri::XML(response.body)

    xml_doc.xpath('PvzList/Pvz').map do |el|
      PickupPoint.new(el)
    end
  end

  def self.russian_cities
    data_file = File.expand_path("../../data/russian_cities.csv", __FILE__)

    res = []

    CSV.foreach(data_file) do |row|
      res << City.new(row)
    end

    res
  end
end

require_relative 'cdek_api/pickup_point'
require_relative 'cdek_api/city'
