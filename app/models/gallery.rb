class Gallery < ActiveRecord::Base
  mount_uploader :file, PictureUploader
end
