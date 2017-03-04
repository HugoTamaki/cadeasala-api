class AddSlugToDiscipline < ActiveRecord::Migration[5.0]
  def change
    add_column :disciplines, :slug, :string
  end
end
