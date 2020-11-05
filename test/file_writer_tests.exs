defmodule Ptests.FileWriterTests do

  describe "write text taken to file" do
    test "save" do
      assert File.read(FileWriter.save(file_name,some_text)) == {:ok, some_text}
    end
  end

end
