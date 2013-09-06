class SurveyAnswer < ActiveRecord::Base
  belongs_to :survey_suite
  belongs_to :survey_question
  has_many :survey_answer_items
  belongs_to :device

  # before_create :randomize_file_name
  #   has_attached_file :image,
  #                     :url  => "/uploads/pictures/:date_path/:basename.:extension",
  #                     :path => "#{Rails.root}/public/uploads/pictures/:date_path/:basename.:extension"
  has_attached_file :image,
    :path => ":rails_root/public/answer_images/:attachment/:id/:style/:filename",
    :url => "/answer_images/:attachment/:id/:style/:filename"
    
  private  
  def randomize_file_name
    #archives 就是你在 has_attached_file :archives 使用的名字  
    extension = File.extname(image.original_filename).downcase  
    #你可以改成你想要的文件名，把下面这个方法的第二个参数随便改了就可以了。  
    self.image.instance_write(:file_name, "#{Time.now.strftime("%Y%m%d%H%M%S")}#{rand(1000)}#{extension}")  
  end
end
