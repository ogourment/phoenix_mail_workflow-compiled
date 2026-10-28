defmodule Mix.Tasks.Compile.BinaryPhoenixMailWorkflow do
  use Mix.Task.Compiler
  @moduledoc false
  @root __DIR__
  @checksums %{
    "ebin/Elixir.PhoenixMailWorkflow.Edition.beam" =>
      "117A96E3644D8AA31335B8B7D2B818FEC2865078EA5A73B2DF491B3041D9B1BB",
    "ebin/Elixir.PhoenixMailWorkflow.Environment.beam" =>
      "18FBF91D13E5BB4942E401201243E61DB85823696BC1AD5CA2D3B501489ED035",
    "ebin/Elixir.PhoenixMailWorkflow.Footer.beam" =>
      "B2EB413629B4B0771AE2E68F4CD247FBDC427C3AAF981EDEC325AE98B129C1EA",
    "ebin/Elixir.PhoenixMailWorkflow.HTML.beam" =>
      "D9BA3BEE6EAA4534864F27C16575636E36A6BFC2FD1AE9F250E117D6DA7D8BA7",
    "ebin/Elixir.PhoenixMailWorkflow.Invitations.beam" =>
      "33BBC31C1FC1CA40C5AD8F2962B4006039D1EB53F2B00FE48D7A8DD7AB356C9F",
    "ebin/Elixir.PhoenixMailWorkflow.Layout.beam" =>
      "DDAA1793778B1536CD5F7AAED569FBCEA1C9D7F54B6F4746E351059DFC6A5367",
    "ebin/Elixir.PhoenixMailWorkflow.Logo.beam" =>
      "1A4DAFF6FEB41C917A228030D9859E646FCB8D7ED3C643C3FF4EC7E1B5290A70",
    "ebin/Elixir.PhoenixMailWorkflow.Markdown.beam" =>
      "155B1DF4666A9DB07AFD891BDA486BA6E5B0A91BB21AA074629C4148F846B864",
    "ebin/Elixir.PhoenixMailWorkflow.Newsletter.beam" =>
      "B752069035BC793EE44CC685C4D9C5BB6F3735F79D7BED3F2115F95CE4129CF0",
    "ebin/Elixir.PhoenixMailWorkflow.ProviderEvents.beam" =>
      "55E532945C5ED3067BC63E893969A46573913332328BBAE4379FFA7D51BF2EF6",
    "ebin/Elixir.PhoenixMailWorkflow.Results.beam" =>
      "698FB1024D1AF412174545B455D0B48582E6A807161D94CEEE8CEA2DB357D203",
    "ebin/Elixir.PhoenixMailWorkflow.Swoosh.beam" =>
      "E4F89A65A93B18256A60AADBA084B333EED4914EA3CD1CF301DD2ED5E3016AA5",
    "ebin/Elixir.PhoenixMailWorkflow.Template.beam" =>
      "0356852F01D6302443903FAF5B59B452D44CC255D0D2918078AC941CE58DF680",
    "ebin/phoenix_mail_workflow.app" =>
      "D97E2C572499CB124FE6330769FDA5A8E31E61F86898BCDCA7C3127E26B47669"
  }

  @impl true
  def run(_args) do
    series = Version.parse!(System.version()) |> Map.take([:major, :minor])

    unless series == %{major: 1, minor: 20} and System.otp_release() == "29" do
      Mix.raise("phoenix_mail_workflow requires a binary distribution for Elixir 1.20.x / OTP 29")
    end

    for {path, expected} <- @checksums do
      bytes = File.read!(Path.join(@root, path))

      unless Base.encode16(:crypto.hash(:sha256, bytes)) == expected do
        Mix.raise("phoenix_mail_workflow artifact checksum mismatch: #{path}")
      end

      if String.starts_with?(path, "ebin/") do
        target = Path.join(Mix.Project.compile_path(), Path.basename(path))
        File.mkdir_p!(Path.dirname(target))
        File.write!(target, bytes)
      end
    end

    {:ok, []}
  end
end

defmodule Compiled.PhoenixMailWorkflow.MixProject do
  use Mix.Project

  def project do
    [
      app: :phoenix_mail_workflow,
      version: "0.0.11",
      elixir: "~> 1.20.0",
      compilers: [:binary_phoenix_mail_workflow],
      deps: [mdex: "~> 0.13.5 or ~> 0.14.2"]
    ]
  end

  def application, do: [extra_applications: [:logger, :crypto]]
end
