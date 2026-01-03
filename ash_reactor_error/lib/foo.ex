defmodule Foo do
  use Ash.Domain,
    otp_app: :ash_reactor_error

  resources do
    resource Foo.Bar do
      define(:return_atom, action: :atom)
      define(:return_error, action: :error)
      define(:raise_exception, action: :exception)
    end
  end
end
