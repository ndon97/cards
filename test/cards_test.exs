defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 20 cards" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 20
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    assert deck != Cards.shuffle(deck)
  end

  test "ensuring that card can found to be contained in a deck" do
    deck = Cards.create_deck()
    assert Cards.contains?(deck, "Ace of Spades") == true
  end


end
