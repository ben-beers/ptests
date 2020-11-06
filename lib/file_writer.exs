defmodule FileWriter do

  def save(file_name,some_text) do
    File.write(file_name,some_text)
  end

end
