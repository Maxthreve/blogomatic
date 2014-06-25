class AddDeititanIdToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :dietitian_id, :integer

  end
end
