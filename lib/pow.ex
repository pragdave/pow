defmodule Pow do

  def count(value, difficulty) do
    _count(value, 0, difficulty)
  end

  def _count(value, counter, difficulty) do
    case value do
      << 0::size(difficulty), _::bitstring >> ->
        counter
      _ ->
        _count(:crypto.hash(:sha256, value), counter+1, difficulty)
    end
  end

end
