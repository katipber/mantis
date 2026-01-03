defmodule Foo.Reactor.Error do
  use Ash.Reactor

  step :first do
    run(fn _, _ ->
      {:error,
       Foo.Error.Custom.exception(%{
         type: :custom,
         message: "custom error message"
       })}
    end)
  end
end
