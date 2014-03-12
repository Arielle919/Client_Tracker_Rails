class AddHiddenToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :hidden, :boolean, :default => false, :null => false
  end
end