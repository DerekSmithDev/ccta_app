json.array! @lstops.each do |lstop|
  json.station_id lstop.station_id
  json.parent_stop_id lstop.parent_stop_id
  json.stop_name lstop.stop_name
  json.station_name lstop.station_name
  json.station_descriptive_name lstop.station_descriptive_name
  json.map_id lstop.map_id
  json.ADA lstop.ADA

end 