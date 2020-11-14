class CreatePosts < ActiveRecord::Migration[5.2]
  def up
    create_table :posts do |t|
      t.timestamps
      t.text        :content
      t.boolean     :complete_flag, default: false, null: false
      t.date        :limit_date, default: Date.today
    end
  end

  def down
    drop_table :posts
  end
end
