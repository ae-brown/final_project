json.array!(@reminds) do |remind|
  json.extract! remind, :id, :user_id, :medication, :dosage, :med_id, :time, :frequence
  json.url remind_url(remind, format: :json)
end
