# Identicon

A little module to create avatar placeholders in the form of so-called "identicons".
They are images made up of a 5x5 grid with symmetrical generated fields of the same color,
based on a hash algorithm with a string as input.

The same input string (e.g. username, nick name) always generates the same identicon.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `identicon` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:identicon, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/identicon>.
