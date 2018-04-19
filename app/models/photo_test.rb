class PhotoTest < ActiveRecord::Base
    validates :photo_id, presence: true
end
