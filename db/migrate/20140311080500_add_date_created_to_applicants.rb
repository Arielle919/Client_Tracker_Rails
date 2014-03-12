class AddDateCreatedToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :date_created, :string
  end
end