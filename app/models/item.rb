class Item < ActiveRecord::Base

  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
  has_attached_file :image, :styles => {
                            :thumb =>  [ "32x32#" ],
                            :medium => ["150x150#"],
                            :large =>  ["300x300#"]
                            }

  def self.search(search)
      if search
        where('name LIKE ?', "%#{search}%")
      else
        all
      end
  end


end
