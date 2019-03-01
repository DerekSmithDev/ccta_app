json.array! @divvystops.each do |divvystop|

  json.id divvystop.id
  json.station_id divvystop.station_id
  json.station_name divvystop.station_name
  json.address divvystop.address
  json.total_docks divvystop.total_docks

end 