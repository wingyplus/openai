defmodule OpenAI do
  @moduledoc """
  Documentation for `OpenAI`.
  """

  def new(opts) do
    middlewares = [
      {Tesla.Middleware.BaseUrl, "https://api.openai.com"},
      # {Tesla.Middleware.Headers, [{"openai-organization", opts[:organization]}]},
      {Tesla.Middleware.BearerAuth, token: opts[:api_key]},
      Tesla.Middleware.JSON,
      Tesla.Middleware.PathParams
    ]

    Tesla.client(middlewares)
  end
end
