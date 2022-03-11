json.array! @guests do |guest|

  json.partial! 'guest.json.jbuilder', {guest: guest}


end