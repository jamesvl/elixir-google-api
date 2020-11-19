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

defmodule GoogleApi.OSConfig.V1.Model.InventoryOsInfo do
  @moduledoc """
  Operating system information for the VM.

  ## Attributes

  *   `architecture` (*type:* `String.t`, *default:* `nil`) - The system architecture of the operating system.
  *   `hostname` (*type:* `String.t`, *default:* `nil`) - The VM hostname.
  *   `kernelRelease` (*type:* `String.t`, *default:* `nil`) - The kernel release of the operating system.
  *   `kernelVersion` (*type:* `String.t`, *default:* `nil`) - The kernel version of the operating system.
  *   `longName` (*type:* `String.t`, *default:* `nil`) - The operating system long name. For example 'Debian GNU/Linux 9' or 'Microsoft Window Server 2019 Datacenter'.
  *   `osconfigAgentVersion` (*type:* `String.t`, *default:* `nil`) - The current version of the OS Config agent running on the VM.
  *   `shortName` (*type:* `String.t`, *default:* `nil`) - The operating system short name. For example, 'windows' or 'debian'.
  *   `version` (*type:* `String.t`, *default:* `nil`) - The version of the operating system.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :architecture => String.t(),
          :hostname => String.t(),
          :kernelRelease => String.t(),
          :kernelVersion => String.t(),
          :longName => String.t(),
          :osconfigAgentVersion => String.t(),
          :shortName => String.t(),
          :version => String.t()
        }

  field(:architecture)
  field(:hostname)
  field(:kernelRelease)
  field(:kernelVersion)
  field(:longName)
  field(:osconfigAgentVersion)
  field(:shortName)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.InventoryOsInfo do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.InventoryOsInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.InventoryOsInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
