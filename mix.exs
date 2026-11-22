defmodule Mix.Tasks.Compile.BinaryPhoenixMailWorkflow do
  use Mix.Task.Compiler
  @moduledoc false
  @root __DIR__
  @checksums %{
    "ebin/Elixir.PhoenixMailWorkflow.Management.beam" =>
      "E70D37C0940A61126D6E35461923E9E9876BCE1D00D2F3BAECFDFF716C67022B",
    "ebin/Elixir.PhoenixMailWorkflow.Template.beam" =>
      "174E9DCA8AD96E2EFBE242796D3C051ED26D945783636AA7D1227BBE4E44F3E5",
    "ebin/Elixir.PhoenixMailWorkflow.OutreachNotification.beam" =>
      "AF3D5AC56B88CD091C75B4AA478D35F4CB91FE49235C1B62E45D15FC054AADE0",
    "ebin/Elixir.PhoenixMailWorkflow.Outreach.beam" =>
      "B9AACB796FA16456E45039D0176B64F663EE2A0AFC24D13454F635A74538DC81",
    "ebin/Elixir.PhoenixMailWorkflow.Inbound.Attachments.beam" =>
      "613D8CDFB43AE972F53F1CB07E7FE99AC0EA1B0973A9AB759FFD1372A879FF52",
    "ebin/Elixir.PhoenixMailWorkflow.DeliveryAdvice.beam" =>
      "BDA4719082B7E76C7B861F023C046E3D9A32242A997AD116658C44EB2E72DD58",
    "ebin/Elixir.PhoenixMailWorkflow.Logo.beam" =>
      "1A4DAFF6FEB41C917A228030D9859E646FCB8D7ED3C643C3FF4EC7E1B5290A70",
    "ebin/Elixir.PhoenixMailWorkflow.Layout.beam" =>
      "DDAA1793778B1536CD5F7AAED569FBCEA1C9D7F54B6F4746E351059DFC6A5367",
    "ebin/Elixir.PhoenixMailWorkflow.Inbound.Secrets.beam" =>
      "AFFDFF9A7373203CFA07B2030150AE28956F94B23F62899CC84C159055100455",
    "ebin/Elixir.Inspect.PhoenixMailWorkflow.Inbound.Secrets.beam" =>
      "2CA17ECBF0C8E5E3B87D8486AFF3DEC50371465C6B47077CC844AFD023013A00",
    "ebin/Elixir.PhoenixMailWorkflow.Inbound.Message.beam" =>
      "AC627FC20D3B9634FA133ABB50683613B898576AD6B9130C0B140953FE62879B",
    "ebin/Elixir.PhoenixMailWorkflow.Jmap.beam" =>
      "155821D9AC2CA707EF2B0E6661E24F4C00CFDFBAA23033C74FDBAAC968EB57E2",
    "ebin/Elixir.PhoenixMailWorkflow.HTML.beam" =>
      "D9BA3BEE6EAA4534864F27C16575636E36A6BFC2FD1AE9F250E117D6DA7D8BA7",
    "ebin/Elixir.PhoenixMailWorkflow.Environment.beam" =>
      "18FBF91D13E5BB4942E401201243E61DB85823696BC1AD5CA2D3B501489ED035",
    "ebin/Elixir.PhoenixMailWorkflow.MailboxAccess.beam" =>
      "1DB5FF30709D1113E17130030856DC59FA446DF147C27485C3D38746F66F6649",
    "ebin/Elixir.PhoenixMailWorkflow.Markdown.beam" =>
      "AC3243B0B75ABCB94500AEC070FEDD1C6A99F88F43F4B69F24F26679F6107402",
    "ebin/Elixir.PhoenixMailWorkflow.ProviderEvents.beam" =>
      "85A0F833F16A759263671101EEC61EE194484B240FF36BCA54680AC2FFA20757",
    "ebin/Elixir.PhoenixMailWorkflow.Invitations.beam" =>
      "33BBC31C1FC1CA40C5AD8F2962B4006039D1EB53F2B00FE48D7A8DD7AB356C9F",
    "ebin/Elixir.PhoenixMailWorkflow.Results.beam" =>
      "44F2E981A7D46B6163B1E5A61BF1C9162CB61EFA361E6F22DEF26EE271AADB93",
    "ebin/Elixir.PhoenixMailWorkflow.Variables.beam" =>
      "27C991D9F585E98531E441B943F3B618E812A682C1E8B8BDE2BA2D0597967BDD",
    "NOTICE" => "DD3E120CB52F0C763CF99E06D2102423EAF2430CA1595D59E154A560DB7AC268",
    "ebin/Elixir.PhoenixMailWorkflow.Swoosh.beam" =>
      "E4F89A65A93B18256A60AADBA084B333EED4914EA3CD1CF301DD2ED5E3016AA5",
    "ebin/Elixir.Inspect.PhoenixMailWorkflow.Jmap.Conn.beam" =>
      "D17ADC36EA443C392504DD6E2A7FCB37D7A233ED25EF291BA721299CA30DD696",
    "ebin/Elixir.PhoenixMailWorkflow.Footer.beam" =>
      "B2EB413629B4B0771AE2E68F4CD247FBDC427C3AAF981EDEC325AE98B129C1EA",
    "ebin/Elixir.PhoenixMailWorkflow.HistoricalEmail.beam" =>
      "276F34D3C50DAB7EB56A184C80B4C425A0D79FAEA65C4E02A5806D5B67835480",
    "assets/js/variables.js" =>
      "F3CC6A5A0635E29D3EEF81B99B2444B0E373BA64ADF3E1D1DEA20F08B177192A",
    "LICENSE" => "CFC7749B96F63BD31C3C42B5C471BF756814053E847C10F3EB003417BC523D30",
    "ebin/Elixir.Inspect.PhoenixMailWorkflow.Inbound.Message.beam" =>
      "A51DE939632CCB08EBC33E45967DB9345F76E3481DD5C2933B4569E527CD3AAF",
    "ebin/Elixir.PhoenixMailWorkflow.Content.beam" =>
      "51DB537B22C2540EB11837C45992BD5A43E5A9F2A8FC458C7580C3E64F28BB9C",
    "ebin/Elixir.PhoenixMailWorkflow.Newsletter.beam" =>
      "B752069035BC793EE44CC685C4D9C5BB6F3735F79D7BED3F2115F95CE4129CF0",
    "ebin/Elixir.PhoenixMailWorkflow.OutreachManagement.beam" =>
      "3526AFE8878E6BE18E06B4B2C4D7C19FA6FB97099382FB6C672444846A0CEE4D",
    "ebin/Elixir.PhoenixMailWorkflow.Jmap.Conn.beam" =>
      "24A86D4EC8F556043973055077CC9057E6F207220F7B05266D0251096C09D834",
    "ebin/Elixir.PhoenixMailWorkflow.Inbound.Jmap.beam" =>
      "CC787521E925BE5480EC7C90344360A332677DA3B1A81471888B38AF732F119F",
    "ebin/Elixir.PhoenixMailWorkflow.Inbound.Brevo.beam" =>
      "51039319C4D9CCAB3965E03A8C367C87D8081F8B0D79B1F37ECD89AC276D8800",
    "ebin/phoenix_mail_workflow.app" =>
      "93769A85B043BB27439A3B684CDD600660E232E8EC970C4B6201F8E32B2B6302",
    "ebin/Elixir.PhoenixMailWorkflow.Edition.beam" =>
      "117A96E3644D8AA31335B8B7D2B818FEC2865078EA5A73B2DF491B3041D9B1BB"
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
      version: "0.0.23",
      elixir: "~> 1.20.0",
      compilers: [:binary_phoenix_mail_workflow],
      deps: [mdex: "~> 0.13.5 or ~> 0.14.2", mail: "~> 0.5.2"]
    ]
  end

  def application, do: [extra_applications: [:logger, :crypto]]
end
