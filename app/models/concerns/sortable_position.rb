# model/concerns/sortable_position.rb

module SortablePosition
  extend ActiveSupport::Concern

  module ClassMethods
    # Sort Position
    def sort_position!(get_position)
      get_position.each_with_index do |id, index|
        object = find(id)
        object.update_attribute(:position, index + 1) if object
      end
    end
  end
end
