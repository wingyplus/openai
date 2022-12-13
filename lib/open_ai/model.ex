defmodule OpenAI.Model do
  def list_models(client) do
    Tesla.get(client, "/v1/models")
  end

  def retreive_model(client, model) do
    Tesla.get(client, "/v1/models/:model", opts: [path_params: [model: model]])
  end
end
