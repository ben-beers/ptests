defmodule PtestsWeb.FileWritersTest do

  use ExUnit.Case
  alias PtestsWeb.FileWriters

  test "save", do
    FileWriters.save("filename.txt","sometext")
    assert File.read("filename.txt") == {:ok, "sometext"}

  end

end
