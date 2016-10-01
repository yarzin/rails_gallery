class AddAttachmentPhotoToGalleries < ActiveRecord::Migration
  def up
    add_attachment :galleries, :photo
  end

  def down
    remove_attachment :galleries, :photo
  end

end
