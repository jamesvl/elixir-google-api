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

defmodule GoogleApi.Dataflow.V1b3.Model.LeaseWorkItemRequest do
  @moduledoc """
  Request to lease WorkItems.

  ## Attributes

  - currentWorkerTime (DateTime.t): The current timestamp at the worker. Defaults to: `null`.
  - location (String.t): The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the WorkItem&#39;s job. Defaults to: `null`.
  - requestedLeaseDuration (String.t): The initial lease period. Defaults to: `null`.
  - unifiedWorkerRequest (%{optional(String.t) &#x3D;&gt; String.t}): Untranslated bag-of-bytes WorkRequest from UnifiedWorker. Defaults to: `null`.
  - workItemTypes ([String.t]): Filter for WorkItem type. Defaults to: `null`.
  - workerCapabilities ([String.t]): Worker capabilities. WorkItems might be limited to workers with specific capabilities. Defaults to: `null`.
  - workerId (String.t): Identifies the worker leasing work -- typically the ID of the virtual machine running the worker. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentWorkerTime => DateTime.t(),
          :location => any(),
          :requestedLeaseDuration => any(),
          :unifiedWorkerRequest => map(),
          :workItemTypes => list(any()),
          :workerCapabilities => list(any()),
          :workerId => any()
        }

  field(:currentWorkerTime, as: DateTime)
  field(:location)
  field(:requestedLeaseDuration)
  field(:unifiedWorkerRequest, type: :map)
  field(:workItemTypes, type: :list)
  field(:workerCapabilities, type: :list)
  field(:workerId)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.LeaseWorkItemRequest do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.LeaseWorkItemRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.LeaseWorkItemRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
