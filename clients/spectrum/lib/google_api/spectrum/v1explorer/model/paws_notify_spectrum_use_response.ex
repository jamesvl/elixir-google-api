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

defmodule GoogleApi.Spectrum.V1explorer.Model.PawsNotifySpectrumUseResponse do
  @moduledoc """
  An empty response to the notification.

  ## Attributes

  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;spectrum#pawsNotifySpectrumUseResponse\&quot;. Defaults to: `null`.
  - type (String.t): The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...).  Required field. Defaults to: `null`.
  - version (String.t): The PAWS version. Must be exactly 1.0.  Required field. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => any(),
          :type => any(),
          :version => any()
        }

  field(:kind)
  field(:type)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.Spectrum.V1explorer.Model.PawsNotifySpectrumUseResponse do
  def decode(value, options) do
    GoogleApi.Spectrum.V1explorer.Model.PawsNotifySpectrumUseResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spectrum.V1explorer.Model.PawsNotifySpectrumUseResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
