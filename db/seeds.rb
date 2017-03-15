# create_table "re_documents", force: :cascade do |t|
 #  t.string   "title"
 #   t.string   "description"
 #   t.text     "file_url"
 #   t.text     "image_url"
  #  t.datetime "created_at",  null: false
  # t.datetime "updated_at",  null: false
  #end
10.times do |d|
    ReDocument.create!(
        title: "Document #{d}", 
        description: "Homes in Fountain Hills",
        file_url: "",
        image_url: "http://www.publicdomainpictures.net/pictures/150000/velka/luxurious-residence.jpg"
    )
end
