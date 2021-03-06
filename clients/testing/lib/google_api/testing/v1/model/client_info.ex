# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Testing.V1.Model.ClientInfo do
  @moduledoc """
  Information about the client which invoked the test.

  ## Attributes

  *   `clientInfoDetails` (*type:* `list(GoogleApi.Testing.V1.Model.ClientInfoDetail.t)`, *default:* `nil`) - The list of detailed information about client.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Client name, such as gcloud.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientInfoDetails => list(GoogleApi.Testing.V1.Model.ClientInfoDetail.t()),
          :name => String.t()
        }

  field(:clientInfoDetails, as: GoogleApi.Testing.V1.Model.ClientInfoDetail, type: :list)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.ClientInfo do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.ClientInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.ClientInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
