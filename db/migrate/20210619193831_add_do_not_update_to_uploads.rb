class AddDoNotUpdateToUploads < ActiveRecord::Migration[6.1]
  def change
    add_column :uploads, :do_not_update, :integer
  end
end
