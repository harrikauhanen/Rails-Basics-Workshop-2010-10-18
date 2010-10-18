class Student < ActiveRecord::Base
  # Attributes available are:
  #
  # - first_name
  # - last_name
  # - student_number
  # - level
  # - teacher_id (foreign key to teacher)
  
  LEVELS = ['undergraduate', 'bachelor', 'master', 'licentiate', 'doctor']

  validates :level, :inclusion => { :in => LEVELS } # LEVELS.include?('master')
    
  def full_name_with_title
    "#{self.level.capitalize} #{self.first_name} #{self.last_name}"
  end
  
  def self.authenticate(given_user_number)
    find_by_student_number(given_user_number) 
  end
end