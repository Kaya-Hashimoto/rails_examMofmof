class Property < ApplicationRecord
  has_many :stations, inverse_of: :property, dependent: :destroy
  accepts_nested_attributes_for :stations, allow_destroy: true, reject_if: lambda {|attributes| attributes['line_name'].blank?}
end
