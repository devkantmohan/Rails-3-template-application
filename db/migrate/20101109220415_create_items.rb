class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :name
      t.string :description

      #paperclip image
      t.string  :image_file_name
      t.string  :image_content_type
      t.string  :image_file_size
      t.datetime :image_updated_at
      #end of paperclip image


      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
