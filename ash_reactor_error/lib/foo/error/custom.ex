defmodule Foo.Error.Custom do
  use Splode.Error,
    fields: [:type, :message],
    class: :invalid
end
