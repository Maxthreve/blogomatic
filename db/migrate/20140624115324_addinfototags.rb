class Addinfototags < ActiveRecord::Migration
  def change
  add_column :tags, :name, :string
  add_column :tags, :description, :text

  end
end
