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

defmodule GoogleApi.CloudAsset.V1.Model.ZypperPatch do
  @moduledoc """
  Details related to a Zypper Patch.

  ## Attributes

  *   `category` (*type:* `String.t`, *default:* `nil`) - The category of the patch.
  *   `patchName` (*type:* `String.t`, *default:* `nil`) - The name of the patch.
  *   `severity` (*type:* `String.t`, *default:* `nil`) - The severity specified for this patch
  *   `summary` (*type:* `String.t`, *default:* `nil`) - Any summary information provided about this patch.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :category => String.t(),
          :patchName => String.t(),
          :severity => String.t(),
          :summary => String.t()
        }

  field(:category)
  field(:patchName)
  field(:severity)
  field(:summary)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.ZypperPatch do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.ZypperPatch.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.ZypperPatch do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
