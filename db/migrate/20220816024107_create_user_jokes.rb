class CreateUserJokes < ActiveRecord::Migration[6.1]
  def change
    create_table :user_jokes do |t|
      t.string :id_api_jokes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
