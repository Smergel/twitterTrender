# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
locations = Location.create([
  { city_name: 'Philadelphia', woeid: '2471217'},
  { city_name: 'New York', woeid: '2459115'},
  { city_name: 'Atlanta', woeid: '2357024'},
  { city_name: 'San Francisco', woeid: '2487956'},
  { city_name: 'Chicago', woeid: '2379574'},
  { city_name: 'Portland', woeid: '2475687'},
  { city_name: 'Austin', woeid: '2357536'},
  { city_name: 'Houston', woeid: '2424766'},
  { city_name: 'Milwaukee', woeid: '2451822'},
  { city_name: 'Paris', woeid: '615702'},
  { city_name: 'Toronto', woeid: '4118'},
  { city_name: 'Baltimore', woeid: '2358820'},
  { city_name: 'London', woeid: '44418'},
  { city_name: 'East Essex', woeid: '13911'},
  { city_name: 'Leeds', woeid: '26042'},
  { city_name: 'Washington D.C.', woeid: '2514815'},
  { city_name: 'Hong Kong', woeid: '24865698'},
  { city_name: 'Sydney', woeid: '1105779'},
  { city_name: 'Cape Town', woeid: '1591691'},
  { city_name: 'Seatle', woeid: '2490383'},
  { city_name: 'Miami', woeid: '2450022'},
  { city_name: 'New Orleans', woeid: '2458833'},
  { city_name: 'Oklahoma City', woeid: '2464592'},
  { city_name: 'Cleveland', woeid: '2381475'},
  { city_name: 'Berlin', woeid: '638242'},
  { city_name: 'St. Louis', woeid: '2486982'},
  { city_name: 'Memphis', woeid: '2449323'},
  { city_name: 'Tampa Bay', woeid: '55857165'},
  { city_name: 'Vancouver', woeid: '9807'},
])