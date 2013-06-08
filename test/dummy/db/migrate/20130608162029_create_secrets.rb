class CreateSecrets < ActiveRecord::Migration
  def change
    create_table :secrets do |t|
      t.references :user
      t.text :text

      t.timestamps
    end
  end
end
