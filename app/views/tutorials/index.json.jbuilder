json.array!(@tutorials) do |tutorial|
  json.extract! tutorial, :id, :name, :description, :step
  json.url tutorial_url(tutorial, format: :json)
end
