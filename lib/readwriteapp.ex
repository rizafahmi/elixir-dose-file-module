defmodule Readwriteapp do
  use Application.Behaviour

  # See http://elixir-lang.org/docs/stable/Application.Behaviour.html
  # for more information on OTP Applications
  def start(_type, _args) do
    Readwriteapp.Supervisor.start_link
  end

  def read_file(filename) do
    {:ok, content} = File.read(filename)
    content
  end

  def concat_file_content(file_one, file_two) do
    read_file(file_one) <> read_file(file_two)
  end
  
  def write_file(destination_file, file_one, file_two) do
    File.write(destination_file, concat_file_content(file_one, file_two))
    File.read(destination_file)
  end


end
