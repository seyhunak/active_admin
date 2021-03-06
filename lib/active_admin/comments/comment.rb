module ActiveAdmin

  class Comment < ActiveRecord::Base
    self.table_name = "active_admin_comments"

    belongs_to :resource, :polymorphic => true
    belongs_to :author, :polymorphic => true

    validates_presence_of :resource_id
    validates_presence_of :resource_type
    validates_presence_of :body
    validates_presence_of :namespace
  end

end
