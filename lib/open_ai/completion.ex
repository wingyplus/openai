defmodule OpenAI.Completion.CreateCompletionRequest do
  @derive Jason.Encoder
  @enforce_keys [:model]
  defstruct [
    :model,
    prompt: "<|endoftext|>",
    suffix: nil,
    max_tokens: 16,
    temperature: 1,
    top_p: 1,
    n: 1,
    stream: false,
    logprobs: nil,
    echo: false,
    stop: nil,
    presence_penalty: 0,
    frequency_penalty: 0,
    best_of: 1,
    logit_bias: %{},
    user: ""
  ]
end

defmodule OpenAI.Completion do
  def completion(client, request) do
    Tesla.post(client, "/v1/completions", request)
  end
end
