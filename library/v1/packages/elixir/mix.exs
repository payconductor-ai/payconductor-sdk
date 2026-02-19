defmodule PayConductorAPI.Mixfile do
  use Mix.Project

  def project do
    [
      app: :payconductor_sdk,
      version: "1.0.0",
      elixir: "~> 1.18",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      package: package(),
      description: """
      PayConductor API Documentation.  This documentation covers all available features in the PayConductor RESTful API, including authentication, resource management, and usage examples.  &lt;br /&gt;  &lt;br /&gt;  ----  &lt;br /&gt;   # Authentication  PayConductor API uses HTTP Basic authentication to validate requests. You need to provide your credentials (Client ID and Client Secret) in the &#x60;client:secret&#x60; format encoded in Base64.  &lt;br /&gt;  ## Getting Credentials  1. Access the PayConductor admin panel 2. Navigate to **Settings &gt; API Keys** 3. Generate a new credentials pair (Client ID and Client Secret) 4. Store the Client Secret in a secure location - it will not be displayed again  &lt;br /&gt;  ## Authentication Format  Credentials must be sent in the &#x60;Authorization&#x60; header using the Basic scheme:  &#x60;&#x60;&#x60; Authorization: Basic base64(client_id:client_secret) &#x60;&#x60;&#x60;  &lt;br /&gt;  ## Node.js Example  &#x60;&#x60;&#x60;javascript const clientId &#x3D; &#39;your_client_id&#39;; const clientSecret &#x3D; &#39;your_client_secret&#39;;  // Encode credentials in Base64 const credentials &#x3D; Buffer.from(&#x60;${clientId}:${clientSecret}&#x60;).toString(&#39;base64&#39;);  const response &#x3D; await fetch(&#39;https://api.payconductor.com/api/v1/orders&#39;, {   method: &#39;GET&#39;,   headers: {     &#39;Authorization&#39;: &#x60;Basic ${credentials}&#x60;,     &#39;Content-Type&#39;: &#39;application/json&#39;   } });  const data &#x3D; await response.json(); console.log(data); &#x60;&#x60;&#x60;  &lt;br /&gt;  ## Authentication Errors  | Code | Description | |------|-------------| | &#x60;401&#x60; | Invalid or missing credentials | | &#x60;403&#x60; | Valid credentials but no permission for the resource | | &#x60;429&#x60; | Too many requests (rate limit exceeded) |  ### Error Response Example  &#x60;&#x60;&#x60;json {   \&quot;error\&quot;: {     \&quot;code\&quot;: \&quot;UNAUTHORIZED\&quot;,     \&quot;message\&quot;: \&quot;Invalid credentials\&quot;,     \&quot;details\&quot;: \&quot;The provided client ID or secret is incorrect\&quot;   } } &#x60;&#x60;&#x60;
      """,
      deps: deps()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.3.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:tesla, "~> 1.14"},
      {:ex_doc, "~> 0.37.3", only: :dev, runtime: false},
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false}
    ]
  end

   defp package do
      [
        name: "payconductor_sdk",
        files: ~w(.formatter.exs config lib mix.exs README* LICENSE*),
      ]
  end
end
