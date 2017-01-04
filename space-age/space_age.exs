defmodule SpaceAge do
  @type planet :: :mercury | :venus | :earth | :mars | :jupiter
                | :saturn | :neptune | :uranus

  @earth_secs 31_557_600

  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet'.
  """
  @spec age_on(planet, pos_integer) :: float
  def age_on(planet, seconds) do
    case planet do
      :earth -> seconds / @earth_secs
      :mercury -> seconds / ( @earth_secs * 0.2408467 )
      :venus -> seconds / ( @earth_secs * 0.61519726 )
      :mars -> seconds / ( @earth_secs * 1.8808158 )
      :jupiter -> seconds / ( @earth_secs * 11.862615 )
      :saturn -> seconds / ( @earth_secs * 29.447498 )
      :uranus -> seconds / ( @earth_secs * 84.016846 )
      :neptune -> seconds / ( @earth_secs * 164.79132 )
    end
  end
end
