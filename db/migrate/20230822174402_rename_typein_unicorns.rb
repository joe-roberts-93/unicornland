class RenameTypeinUnicorns < ActiveRecord::Migration[7.0]
  def change
    rename_column :unicorns, :type, :variety
  end
end
