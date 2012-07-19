class Addapplicationstatusidtostudent < ActiveRecord::Migration
  def up
    
     add_column :students, :application_status_id, :integer
     
  end

  def down
  end
end
