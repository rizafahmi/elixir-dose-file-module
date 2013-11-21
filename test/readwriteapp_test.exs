defmodule ReadwriteappTest do
  use ExUnit.Case

  test "read the two files" do
    assert Readwriteapp.read_file('test/fixture/one.txt') == "Hello, \n"
    assert Readwriteapp.read_file('test/fixture/two.txt') == "elixir world!\n"
  end

  test "concat the content the two files" do
    content_result = Readwriteapp.concat_file_content('test/fixture/one.txt', 'test/fixture/two.txt')

    assert content_result == "Hello, \nelixir world!\n"
  end

  test "write the third file with the content of one and two" do
    assert Readwriteapp.write_file('test/fixture/result.txt', 'test/fixture/one.txt', 'test/fixture/two.txt') == :ok
    assert Readwriteapp.read_file('test/fixture/result.txt') == "Hello, \nelixir world!\n"
  end
end
