defmodule Foo.Reactor.Atom do
  use Ash.Reactor

  step :first do
    run(fn _, _ ->
      {:error, :error_atom}
    end)
  end
end
