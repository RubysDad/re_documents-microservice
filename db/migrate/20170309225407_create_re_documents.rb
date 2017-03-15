class CreateReDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :re_documents do |t|
      t.string :title
      t.string :description
      t.text :file_url
      t.text :image_url

      t.timestamps
    end
  end
end
