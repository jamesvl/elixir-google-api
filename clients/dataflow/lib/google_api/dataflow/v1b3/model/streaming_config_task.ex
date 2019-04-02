# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Dataflow.V1b3.Model.StreamingConfigTask do
  @moduledoc """
  A task that carries configuration information for streaming computations.

  ## Attributes

  - maxWorkItemCommitBytes (String.t): Maximum size for work item commit supported windmill storage layer. Defaults to: `null`.
  - streamingComputationConfigs ([StreamingComputationConfig]): Set of computation configuration information. Defaults to: `null`.
  - userStepToStateFamilyNameMap (%{optional(String.t) &#x3D;&gt; String.t}): Map from user step names to state families. Defaults to: `null`.
  - windmillServiceEndpoint (String.t): If present, the worker must use this endpoint to communicate with Windmill Service dispatchers, otherwise the worker must continue to use whatever endpoint it had been using. Defaults to: `null`.
  - windmillServicePort (String.t): If present, the worker must use this port to communicate with Windmill Service dispatchers. Only applicable when windmill_service_endpoint is specified. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxWorkItemCommitBytes => any(),
          :streamingComputationConfigs =>
            list(GoogleApi.Dataflow.V1b3.Model.StreamingComputationConfig.t()),
          :userStepToStateFamilyNameMap => map(),
          :windmillServiceEndpoint => any(),
          :windmillServicePort => any()
        }

  field(:maxWorkItemCommitBytes)

  field(
    :streamingComputationConfigs,
    as: GoogleApi.Dataflow.V1b3.Model.StreamingComputationConfig,
    type: :list
  )

  field(:userStepToStateFamilyNameMap, type: :map)
  field(:windmillServiceEndpoint)
  field(:windmillServicePort)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.StreamingConfigTask do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.StreamingConfigTask.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.StreamingConfigTask do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
