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

defmodule GoogleApi.IAP.V1.Model.AccessDeniedPageSettings do
  @moduledoc """
  Custom content configuration for access denied page.
  IAP allows customers to define a custom URI to use as the error page when
  access is denied to users. If IAP prevents access to this page, the default
  IAP error page will be displayed instead.

  ## Attributes

  *   `accessDeniedPageUri` (*type:* `String.t`, *default:* `nil`) - The URI to be redirected to when access is denied.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessDeniedPageUri => String.t()
        }

  field(:accessDeniedPageUri)
end

defimpl Poison.Decoder, for: GoogleApi.IAP.V1.Model.AccessDeniedPageSettings do
  def decode(value, options) do
    GoogleApi.IAP.V1.Model.AccessDeniedPageSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAP.V1.Model.AccessDeniedPageSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end