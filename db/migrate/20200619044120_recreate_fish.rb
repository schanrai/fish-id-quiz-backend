class RecreateFish < ActiveRecord::Migration[5.2]
  def change
    create_table :fish do |t|
      t.string :name
      t.string :image_url
      t.string :category
      t.string :details_url
      t.string :region
      t.string :habitat
      t.timestamps
    end

  end
end
