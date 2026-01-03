defmodule Foo.Bar do
  use Ash.Resource,
    otp_app: :ash_reactor_error,
    domain: Foo

  actions do
    action :atom do
      run(Foo.Reactor.Atom)
    end

    action :error do
      run(Foo.Reactor.Error)
    end

    action :exception do
      run(Foo.Reactor.Exception)
    end
  end
end
