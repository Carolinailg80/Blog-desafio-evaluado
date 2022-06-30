class Post < ApplicationRecord
    before_save :censurar
    validates :title, presence: {message:" no puede estar vacío"}
    validates :content, presence: {message:" no puede estar vacío"}
    validates :image_url, presence: {message:" no puede estar vacío"}
    

    private
    def censurar 
        palabra_censurada="spoiler"
        self.content=self.content.gsub(palabra_censurada, "")
    end
end
