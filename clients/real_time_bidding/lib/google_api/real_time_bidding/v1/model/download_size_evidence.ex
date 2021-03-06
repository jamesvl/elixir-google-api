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

defmodule GoogleApi.RealTimeBidding.V1.Model.DownloadSizeEvidence do
  @moduledoc """
  Total download size and URL-level download size breakdown for resources in a creative.

  ## Attributes

  *   `topUrlDownloadSizeBreakdowns` (*type:* `list(GoogleApi.RealTimeBidding.V1.Model.UrlDownloadSize.t)`, *default:* `nil`) - Download size broken down by URLs with the top download size.
  *   `totalDownloadSizeKb` (*type:* `integer()`, *default:* `nil`) - Total download size (in kilobytes) for all the resources in the creative.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :topUrlDownloadSizeBreakdowns =>
            list(GoogleApi.RealTimeBidding.V1.Model.UrlDownloadSize.t()),
          :totalDownloadSizeKb => integer()
        }

  field(:topUrlDownloadSizeBreakdowns,
    as: GoogleApi.RealTimeBidding.V1.Model.UrlDownloadSize,
    type: :list
  )

  field(:totalDownloadSizeKb)
end

defimpl Poison.Decoder, for: GoogleApi.RealTimeBidding.V1.Model.DownloadSizeEvidence do
  def decode(value, options) do
    GoogleApi.RealTimeBidding.V1.Model.DownloadSizeEvidence.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.RealTimeBidding.V1.Model.DownloadSizeEvidence do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
