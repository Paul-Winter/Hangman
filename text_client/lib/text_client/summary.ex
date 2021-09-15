defmodule TextClient.Summary do

  def display(%{ tally: tally }) do
    IO.puts [
      "\n",
      "Word so far: #{Emum.join(tally.letters, " ")}",
      "Guesses left: #{tally.turns_left}\n",
    ]
  end

end
