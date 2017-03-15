10.times do |d|
    ReDocument.create!(
        title: "Document #{d}", 
        description: "Listings",
        file_url: "",
        image_url: "http://www.publicdomainpictures.net/pictures/150000/velka/luxurious-residence.jpg",
    )
end
