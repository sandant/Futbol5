class AlterTableComments < ActiveRecord::Migration
  def self.up
	add_column("comments", "usuario_id", "integer")
	add_column("comments", "post_id", "integer")
	add_column("comments", "message", "text")
  end

  def self.down
	remove_column("comments", "usuario_id")
	remove_column("comments", "post_id")
	remove_column("comments", "message")
  end
end
