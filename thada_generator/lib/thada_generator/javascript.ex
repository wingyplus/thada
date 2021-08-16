defmodule ThadaGenerator.Javascript do
  require EEx

  EEx.function_from_file(:def, :province, "priv/province/javascript.eex", [:provinces])
end
