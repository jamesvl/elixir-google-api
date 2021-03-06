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

defmodule GoogleApi.HealthCare.V1.Model.DeidentifyDatasetRequest do
  @moduledoc """
  Redacts identifying information from the specified dataset.

  ## Attributes

  *   `config` (*type:* `GoogleApi.HealthCare.V1.Model.DeidentifyConfig.t`, *default:* `nil`) - Deidentify configuration.
  *   `destinationDataset` (*type:* `String.t`, *default:* `nil`) - The name of the dataset resource to create and write the redacted data to. * The destination dataset must not exist. * The destination dataset must be in the same project and location as the source dataset. De-identifying data across multiple projects or locations is not supported.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :config => GoogleApi.HealthCare.V1.Model.DeidentifyConfig.t(),
          :destinationDataset => String.t()
        }

  field(:config, as: GoogleApi.HealthCare.V1.Model.DeidentifyConfig)
  field(:destinationDataset)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.DeidentifyDatasetRequest do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.DeidentifyDatasetRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.DeidentifyDatasetRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
