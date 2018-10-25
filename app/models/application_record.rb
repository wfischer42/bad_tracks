# Base class for adding functionality or shared behavior for all models.

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
