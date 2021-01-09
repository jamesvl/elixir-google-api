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

defmodule GoogleApi.ServiceNetworking.V1.Model.RangeReservation do
  @moduledoc """
  Represents a range reservation.

  ## Attributes

  *   `ipPrefixLength` (*type:* `integer()`, *default:* `nil`) - Required. The size of the desired subnet. Use usual CIDR range notation. For example, '30' to find unused x.x.x.x/30 CIDR range. The goal is to determine if one of the allocated ranges has enough free space for a subnet of the requested size.
  *   `requestedRanges` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The name of one or more allocated IP address ranges associated with this private service access connection. If no range names are provided all ranges associated with this connection will be considered. If a CIDR range with the specified IP prefix length is not available within these ranges the validation fails.
  *   `secondaryRangeIpPrefixLengths` (*type:* `list(integer())`, *default:* `nil`) - Optional. The size of the desired secondary ranges for the subnet. Use usual CIDR range notation. For example, '30' to find unused x.x.x.x/30 CIDR range. The goal is to determine that the allocated ranges have enough free space for all the requested secondary ranges.
  *   `subnetworkCandidates` (*type:* `list(GoogleApi.ServiceNetworking.V1.Model.Subnetwork.t)`, *default:* `nil`) - Optional. List of subnetwork candidates to validate. The required input fields are `name`, `network`, and `region`. Subnetworks from this list which exist will be returned in the response with the `ip_cidr_range`, `secondary_ip_cider_ranges`, and `outside_allocation` fields set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ipPrefixLength => integer(),
          :requestedRanges => list(String.t()),
          :secondaryRangeIpPrefixLengths => list(integer()),
          :subnetworkCandidates => list(GoogleApi.ServiceNetworking.V1.Model.Subnetwork.t())
        }

  field(:ipPrefixLength)
  field(:requestedRanges, type: :list)
  field(:secondaryRangeIpPrefixLengths, type: :list)
  field(:subnetworkCandidates, as: GoogleApi.ServiceNetworking.V1.Model.Subnetwork, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.RangeReservation do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.RangeReservation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.RangeReservation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
