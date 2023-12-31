defmodule Identicon do
  @moduledoc """
  Documentation for `Identicon`.
  """

  def main(input) do
    input
    |> hash_input
    |> pick_color
    |> build_grid
  end

  def build_grid(%Identicon.Image{hex: hex} = image) do
    hex
    |> Enum.chunk(3)
    |> mirror_row
    |> (&%Identicon.Image{image | grid: &1}).()
  end

  def mirror_row(hex) do
    Enum.map(hex, fn el ->
      [a, b, c] = el
      [a, b, c, b, a]
    end)
  end

  def pick_color(%Identicon.Image{hex: [r, g, b | _tail] } = image) do
    %Identicon.Image{image | color: {r, g, b}}
  end

  def hash_input(input) do
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    %Identicon.Image{hex: hex}
  end
end
