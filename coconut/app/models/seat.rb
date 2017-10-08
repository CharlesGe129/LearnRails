class Seat < ApplicationRecord
  belongs_to :flight

  validate :too_much_baggage

  def too_much_baggage
    if baggage > flight.baggage_allowance
      errors.add('You have too much baggage: ', baggage.to_s)
    end
  end
end
