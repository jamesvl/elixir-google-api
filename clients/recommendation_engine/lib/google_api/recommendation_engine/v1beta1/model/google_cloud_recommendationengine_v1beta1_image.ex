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

defmodule GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1Image do
  @moduledoc """
  Catalog item thumbnail/detail image.

  ## Attributes

  *   `height` (*type:* `integer()`, *default:* `nil`) - Optional. Height of the image in number of pixels.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - Required. URL of the image with a length limit of 5 KiB.
  *   `width` (*type:* `integer()`, *default:* `nil`) - Optional. Width of the image in number of pixels.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :height => integer(),
          :uri => String.t(),
          :width => integer()
        }

  field(:height)
  field(:uri)
  field(:width)
end

defimpl Poison.Decoder,
  for: GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1Image do
  def decode(value, options) do
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1Image.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1Image do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end