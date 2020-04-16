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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Audience do
  @moduledoc """


  ## Attributes

  *   `created` (*type:* `String.t`, *default:* `nil`) - Time the audience was created in milliseconds since epoch.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the audience.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of the audience.
  *   `membershipType` (*type:* `String.t`, *default:* `nil`) - Type of membership.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of audience.
  *   `resources` (*type:* `list(String.t)`, *default:* `nil`) - List of resources assigned to the audience.
  *   `teams` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ConsumerTeam.t)`, *default:* `nil`) - List of teams assigned to the audience.
  *   `users` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1UserData.t)`, *default:* `nil`) - List of users assigned to the audience.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :created => String.t(),
          :description => String.t(),
          :id => String.t(),
          :membershipType => String.t(),
          :name => String.t(),
          :resources => list(String.t()),
          :teams => list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ConsumerTeam.t()),
          :users => list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1UserData.t())
        }

  field(:created)
  field(:description)
  field(:id)
  field(:membershipType)
  field(:name)
  field(:resources, type: :list)
  field(:teams, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ConsumerTeam, type: :list)
  field(:users, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1UserData, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Audience do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Audience.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Audience do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end