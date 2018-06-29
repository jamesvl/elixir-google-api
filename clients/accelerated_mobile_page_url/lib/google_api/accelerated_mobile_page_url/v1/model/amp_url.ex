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

defmodule GoogleApi.AcceleratedMobilePageUrl.V1.Model.AmpUrl do
  @moduledoc """
  AMP URL response for a requested URL.

  ## Attributes

  - ampUrl (String.t): The AMP URL pointing to the publisher&#39;s web server. Defaults to: `null`.
  - cdnAmpUrl (String.t): The [AMP Cache URL](/amp/cache/overview#amp-cache-url-format) pointing to the cached document in the Google AMP Cache. Defaults to: `null`.
  - originalUrl (String.t): The original non-AMP URL. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ampUrl => any(),
          :cdnAmpUrl => any(),
          :originalUrl => any()
        }

  field(:ampUrl)
  field(:cdnAmpUrl)
  field(:originalUrl)
end

defimpl Poison.Decoder, for: GoogleApi.AcceleratedMobilePageUrl.V1.Model.AmpUrl do
  def decode(value, options) do
    GoogleApi.AcceleratedMobilePageUrl.V1.Model.AmpUrl.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AcceleratedMobilePageUrl.V1.Model.AmpUrl do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
