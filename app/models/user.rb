class User < ActiveRecord::Base
has_attached_file :image, :styles => { :thumb => ["50x50#", :png],:medium => ["100x100#", :png], :large => ["300x300>", :png]  }
validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
