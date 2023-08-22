class AddColumnToUnicorns < ActiveRecord::Migration[7.0]
  def change
    add_column :unicorns, :team_member, :boolean, :default => false
  end
end
