defmodule Mix.Tasks.Compile.BinaryPhoenixMailWorkflow do
  use Mix.Task.Compiler
  @moduledoc false
  @root __DIR__
  @checksums %{
    "LICENSE" => "CFC7749B96F63BD31C3C42B5C471BF756814053E847C10F3EB003417BC523D30",
    "NOTICE" => "DD3E120CB52F0C763CF99E06D2102423EAF2430CA1595D59E154A560DB7AC268",
    "assets/js/variables.js" =>
      "F3CC6A5A0635E29D3EEF81B99B2444B0E373BA64ADF3E1D1DEA20F08B177192A",
    "ebin/Elixir.Inspect.PhoenixMailWorkflow.Inbound.Message.beam" =>
      "AEC4CC37DF71C4DCB975BCD749CCC09FC1D76B7C4941371B692420DC9A5FBDA6",
    "ebin/Elixir.Inspect.PhoenixMailWorkflow.Inbound.Secrets.beam" =>
      "2CA17ECBF0C8E5E3B87D8486AFF3DEC50371465C6B47077CC844AFD023013A00",
    "ebin/Elixir.PhoenixMailWorkflow.Content.beam" =>
      "51DB537B22C2540EB11837C45992BD5A43E5A9F2A8FC458C7580C3E64F28BB9C",
    "ebin/Elixir.PhoenixMailWorkflow.DeliveryAdvice.beam" =>
      "BDA4719082B7E76C7B861F023C046E3D9A32242A997AD116658C44EB2E72DD58",
    "ebin/Elixir.PhoenixMailWorkflow.Edition.beam" =>
      "117A96E3644D8AA31335B8B7D2B818FEC2865078EA5A73B2DF491B3041D9B1BB",
    "ebin/Elixir.PhoenixMailWorkflow.Environment.beam" =>
      "18FBF91D13E5BB4942E401201243E61DB85823696BC1AD5CA2D3B501489ED035",
    "ebin/Elixir.PhoenixMailWorkflow.Footer.beam" =>
      "B2EB413629B4B0771AE2E68F4CD247FBDC427C3AAF981EDEC325AE98B129C1EA",
    "ebin/Elixir.PhoenixMailWorkflow.HTML.beam" =>
      "D9BA3BEE6EAA4534864F27C16575636E36A6BFC2FD1AE9F250E117D6DA7D8BA7",
    "ebin/Elixir.PhoenixMailWorkflow.Inbound.Attachments.beam" =>
      "613D8CDFB43AE972F53F1CB07E7FE99AC0EA1B0973A9AB759FFD1372A879FF52",
    "ebin/Elixir.PhoenixMailWorkflow.Inbound.Brevo.beam" =>
      "1BC12EACC069C52CC9D7D6302E0EA3BC91A056108C1086C70DF5D7AA3D36C530",
    "ebin/Elixir.PhoenixMailWorkflow.Inbound.Message.beam" =>
      "835A6DFC93E9148556FF75F63F984E88291BC0DDE55B59E4236FBF41A3B71CC7",
    "ebin/Elixir.PhoenixMailWorkflow.Inbound.Secrets.beam" =>
      "4A0A4F09E86E9A6EEAC0EDB1576F497A17CFB1201A11050D97A2DA0A2BAC1D06",
    "ebin/Elixir.PhoenixMailWorkflow.Invitations.beam" =>
      "33BBC31C1FC1CA40C5AD8F2962B4006039D1EB53F2B00FE48D7A8DD7AB356C9F",
    "ebin/Elixir.PhoenixMailWorkflow.Layout.beam" =>
      "DDAA1793778B1536CD5F7AAED569FBCEA1C9D7F54B6F4746E351059DFC6A5367",
    "ebin/Elixir.PhoenixMailWorkflow.Logo.beam" =>
      "1A4DAFF6FEB41C917A228030D9859E646FCB8D7ED3C643C3FF4EC7E1B5290A70",
    "ebin/Elixir.PhoenixMailWorkflow.MailboxAccess.beam" =>
      "1DB5FF30709D1113E17130030856DC59FA446DF147C27485C3D38746F66F6649",
    "ebin/Elixir.PhoenixMailWorkflow.Management.beam" =>
      "E70D37C0940A61126D6E35461923E9E9876BCE1D00D2F3BAECFDFF716C67022B",
    "ebin/Elixir.PhoenixMailWorkflow.Markdown.beam" =>
      "AC3243B0B75ABCB94500AEC070FEDD1C6A99F88F43F4B69F24F26679F6107402",
    "ebin/Elixir.PhoenixMailWorkflow.Newsletter.beam" =>
      "B752069035BC793EE44CC685C4D9C5BB6F3735F79D7BED3F2115F95CE4129CF0",
    "ebin/Elixir.PhoenixMailWorkflow.Outreach.beam" =>
      "B9AACB796FA16456E45039D0176B64F663EE2A0AFC24D13454F635A74538DC81",
    "ebin/Elixir.PhoenixMailWorkflow.OutreachManagement.beam" =>
      "EAFE465F58AEED26CFD79EB7AC1189411B882F375BAF6A73937A213D387833FA",
    "ebin/Elixir.PhoenixMailWorkflow.OutreachNotification.beam" =>
      "AF3D5AC56B88CD091C75B4AA478D35F4CB91FE49235C1B62E45D15FC054AADE0",
    "ebin/Elixir.PhoenixMailWorkflow.ProviderEvents.beam" =>
      "85A0F833F16A759263671101EEC61EE194484B240FF36BCA54680AC2FFA20757",
    "ebin/Elixir.PhoenixMailWorkflow.Results.beam" =>
      "44F2E981A7D46B6163B1E5A61BF1C9162CB61EFA361E6F22DEF26EE271AADB93",
    "ebin/Elixir.PhoenixMailWorkflow.Swoosh.beam" =>
      "E4F89A65A93B18256A60AADBA084B333EED4914EA3CD1CF301DD2ED5E3016AA5",
    "ebin/Elixir.PhoenixMailWorkflow.Template.beam" =>
      "174E9DCA8AD96E2EFBE242796D3C051ED26D945783636AA7D1227BBE4E44F3E5",
    "ebin/Elixir.PhoenixMailWorkflow.Variables.beam" =>
      "27C991D9F585E98531E441B943F3B618E812A682C1E8B8BDE2BA2D0597967BDD",
    "ebin/phoenix_mail_workflow.app" =>
      "A6396899E65CCCA8874ED82E43B15BC9DBDF932768CA73CBA10782C726AA1082"
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
      version: "0.0.20",
      elixir: "~> 1.20.0",
      compilers: [:binary_phoenix_mail_workflow],
      deps: [mdex: "~> 0.13.5 or ~> 0.14.2"]
    ]
  end

  def application, do: [extra_applications: [:logger, :crypto]]
end
