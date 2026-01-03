defmodule Foo.Reactor.Exception do
  use Ash.Reactor

  step :first do
    run(fn _, _ ->
      raise Foo.Error.Custom, type: :custom, message: "custom exception message"
    end)
  end
end
