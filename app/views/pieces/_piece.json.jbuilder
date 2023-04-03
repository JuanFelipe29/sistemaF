json.extract! piece, :id, :channel_id, :piece_name_id, :lot, :weight, :start_date_maturation, :end_date_of_maturation, :matured, :available, :user_id, :created_at, :updated_at
json.url piece_url(piece, format: :json)
