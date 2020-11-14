ActiveRecord::Schema.define(version: 2020_11_14_095720) do

  create_table "posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "content"
    t.date "limit_date", default: "2020-11-15"
  end

end
