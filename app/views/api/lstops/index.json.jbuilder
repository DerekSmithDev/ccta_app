json.array! @lstops.each do |lstop|
  json.id lstop.station_id
  json.stop_name lstop.stop_name

end 