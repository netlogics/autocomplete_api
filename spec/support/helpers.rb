module Helpers

  def json
    JSON.parse(last_response.body)
  end

  def to_json(hash)
    JSON[hash.to_json]
  end

  def search_result
<<-END
{"data":[{"type":"word","attributes":{"letters":"food","length":4}},
 {"type":"word","attributes":{"letters":"fooder","length":6}},
 {"type":"word","attributes":{"letters":"foodful","length":7}},
 {"type":"word","attributes":{"letters":"foodless","length":8}},
 {"type":"word","attributes":{"letters":"foodlessness","length":12}},
 {"type":"word","attributes":{"letters":"foodstuff","length":9}},
 {"type":"word","attributes":{"letters":"foody","length":5}}],
"meta":{"name":"Autocompleter","description":"Simple autocomplete api"}}
END
  end

  def empty_result
<<-END
{"data":[],
"meta":{"name":"Autocompleter", "description":"Simple autocomplete api"}}
END
  end

end
