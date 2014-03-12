class RemoveHiddenApplicatsColumn < ActiveRecord::Migration
  def change
    remove_column :applicants, :hidden, :boolean
  end
end
