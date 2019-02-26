json.array! @stations.each do |station|
  json.id station.id
  json.api_name station.api_name
  json.latitude station.latitude
  json.longitude station.longitude
  json.api_id station.api_id
end