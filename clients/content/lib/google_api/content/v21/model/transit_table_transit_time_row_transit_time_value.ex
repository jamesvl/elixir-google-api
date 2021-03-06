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

defmodule GoogleApi.Content.V21.Model.TransitTableTransitTimeRowTransitTimeValue do
  @moduledoc """


  ## Attributes

  *   `maxTransitTimeInDays` (*type:* `integer()`, *default:* `nil`) - Must be greater than or equal to `minTransitTimeInDays`.
  *   `minTransitTimeInDays` (*type:* `integer()`, *default:* `nil`) - Transit time range (min-max) in business days. 0 means same day delivery, 1 means next day delivery.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxTransitTimeInDays => integer(),
          :minTransitTimeInDays => integer()
        }

  field(:maxTransitTimeInDays)
  field(:minTransitTimeInDays)
end

defimpl Poison.Decoder,
  for: GoogleApi.Content.V21.Model.TransitTableTransitTimeRowTransitTimeValue do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.TransitTableTransitTimeRowTransitTimeValue.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Content.V21.Model.TransitTableTransitTimeRowTransitTimeValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
