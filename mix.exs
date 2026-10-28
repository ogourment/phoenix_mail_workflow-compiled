defmodule Mix.Tasks.Compile.PhoenixMailWorkflowBinary do
  use Mix.Task.Compiler
  @moduledoc false
  @source Path.join(__DIR__, "ebin")
  @checksums %{
    "Elixir.PhoenixMailWorkflow.Edition.beam" =>
      "AAD2ABB5F5C71F4F828808D55DF3E6DBF8BF7B1822B2C4A7F7215D1167237BB3",
    "Elixir.PhoenixMailWorkflow.Environment.beam" =>
      "3C9037226DEE15D9CD3A1C3498C5D67386319D16763CCF54CF5F90CF102E895F",
    "Elixir.PhoenixMailWorkflow.Footer.beam" =>
      "87B0F617305329CD4D134B527B909FB021785B235EA268BAC71FC814BD0D1209",
    "Elixir.PhoenixMailWorkflow.HTML.beam" =>
      "B487CF02362B88D2BEE59AA64BD8AC841DEC0A22EC9D95AAC59014B26330859F",
    "Elixir.PhoenixMailWorkflow.Invitations.beam" =>
      "F7D979E464793C3833199333F9D2C65B434C3230E1CF019137B9307B1CE43C12",
    "Elixir.PhoenixMailWorkflow.Layout.beam" =>
      "7D3ACD80BEC9DBAC9BF417959175C400E564D051CD4FF46443EAD4F44A58F1DA",
    "Elixir.PhoenixMailWorkflow.Logo.beam" =>
      "4BB98439C86E78F760DBECB2E5E7938B324AF428499A409CDE3BB9C01C902E99",
    "Elixir.PhoenixMailWorkflow.Markdown.beam" =>
      "E8BE22A3EC7B04FC1F60C86DE9B5A11DCDD9D49D10B3C55315B13EC3A503AF4B",
    "Elixir.PhoenixMailWorkflow.Newsletter.beam" =>
      "073A0C4C554C9C01F306D6CBB49212E29047B2C562986132B301DFF0FFEC015A",
    "Elixir.PhoenixMailWorkflow.Results.beam" =>
      "411BB0EBF7D7C4DEF765C7A46A9077B670811E94DFA466B33AF9C88997900FFE",
    "Elixir.PhoenixMailWorkflow.Swoosh.beam" =>
      "C82920ACC752CB9366B3C80D8A06343FAEDE964CED12BE0B1A9612A2FA242516",
    "Elixir.PhoenixMailWorkflow.Template.beam" =>
      "99D6995DF7224FA6F70B2F222B9A0AA433C5D8ECDAF2C18D1ADF5E61354596D9",
    "phoenix_mail_workflow.app" =>
      "49A1A25A8D2A8C4A4CDE2CB42E8B15692AE25E567CD822E680C35AC4016BCBF1"
  }

  @impl true
  def run(_args) do
    series = Version.parse!(System.version()) |> Map.take([:major, :minor])

    unless series == %{major: 1, minor: 20} and System.otp_release() == "29" do
      Mix.raise(
        "phoenix_mail_workflow binary requires Elixir 1.20.x / OTP 29; request a matching distribution"
      )
    end

    target = Mix.Project.compile_path()
    File.mkdir_p!(target)

    Enum.each(@checksums, fn {name, expected} ->
      bytes = File.read!(Path.join(@source, name))

      unless Base.encode16(:crypto.hash(:sha256, bytes)) == expected do
        Mix.raise("phoenix_mail_workflow artifact checksum mismatch: #{name}")
      end

      File.write!(Path.join(target, name), bytes)
    end)

    {:ok, []}
  end
end

defmodule PhoenixMailWorkflow.BinaryMixProject do
  use Mix.Project

  def project do
    [
      app: :phoenix_mail_workflow,
      version: "0.0.10",
      elixir: "~> 1.20.0",
      compilers: [:phoenix_mail_workflow_binary],
      deps: [mdex: "~> 0.13.5 or ~> 0.14.2"]
    ]
  end

  def application, do: [extra_applications: [:logger]]
end
