class AverageCache < ActiveRecord::Base
  belongs_to :rater, :class_name => "Juan"
  belongs_to :rateable, :polymorphic => true
end
