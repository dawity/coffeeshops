
$("#map").on "shown", ->
  google.maps.event.trigger map, "resize"
  return