10.times do |d|
    ReDocument.create!(
        title: "Document #{d}", 
        description: "Listings",
        file_url: "",
        image_url: "http://maxpixel.freegreatpicture.com/static/photo/1x/Documents-Paper-Document-Sign-Business-Agreement-428333.jpg",
    )
end
