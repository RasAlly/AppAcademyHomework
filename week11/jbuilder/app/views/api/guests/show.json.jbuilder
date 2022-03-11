
  json.partial! 'guest.json.jbuilder', {guest: @guest}
 
  json.gifts do

    json.extract! @gift, :title, :description

  end