class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.text   :body
      t.string :client_name
      t.string :phone
      t.string :task_date
      t.string :task
      t.string :billed_date
      t.string :payment_type
      t.string :flat_fee
      t.string :weekly
      t.string :monthly
      t.string :yearly
      t.string :amount
      t.string :app_date
      t.string :app_time
      t.string :app_notes

      t.timestamps
    end
  end
end