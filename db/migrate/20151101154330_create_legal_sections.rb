class CreateLegalSections < ActiveRecord::Migration
  def change
    create_table :legal_sections do |t|
      t.string :slug
      t.string :title
      t.boolean :active, default: true

      t.timestamps null: false
    end
    add_index :legal_sections, :slug, unique: true
  end
end
