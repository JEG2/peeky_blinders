defmodule PeekyBlindersFirmware.CommandRunner do
  def run(name, result \\ nil) do
    path = Path.join(:code.priv_dir(:peeky_blinders_firmware), "#{name}.iq")
    Replex.replay(path, 908_397_843, sample_rate: 250_000)
    if result, do: result.run(name)
  end
end
