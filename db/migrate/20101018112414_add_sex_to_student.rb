class AddSexToStudent < ActiveRecord::Migration
  def self.up
    change_table :students do |t|
      t.string :sex
    end
  end

  def self.down
    change_table :students do |t|
       t.remove :sex
    end
  end
end
