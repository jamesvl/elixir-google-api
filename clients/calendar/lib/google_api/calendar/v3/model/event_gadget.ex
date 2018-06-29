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

defmodule GoogleApi.Calendar.V3.Model.EventGadget do
  @moduledoc """
  A gadget that extends this event.

  ## Attributes

  - display (String.t): The gadget&#39;s display mode. Optional. Possible values are:   - \&quot;icon\&quot; - The gadget displays next to the event&#39;s title in the calendar view.  - \&quot;chip\&quot; - The gadget displays when the event is clicked. Defaults to: `null`.
  - height (integer()): The gadget&#39;s height in pixels. The height must be an integer greater than 0. Optional. Defaults to: `null`.
  - iconLink (String.t): The gadget&#39;s icon URL. The URL scheme must be HTTPS. Defaults to: `null`.
  - link (String.t): The gadget&#39;s URL. The URL scheme must be HTTPS. Defaults to: `null`.
  - preferences (%{optional(String.t) &#x3D;&gt; String.t}): Preferences. Defaults to: `null`.
  - title (String.t): The gadget&#39;s title. Defaults to: `null`.
  - type (String.t): The gadget&#39;s type. Defaults to: `null`.
  - width (integer()): The gadget&#39;s width in pixels. The width must be an integer greater than 0. Optional. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :display => any(),
          :height => any(),
          :iconLink => any(),
          :link => any(),
          :preferences => map(),
          :title => any(),
          :type => any(),
          :width => any()
        }

  field(:display)
  field(:height)
  field(:iconLink)
  field(:link)
  field(:preferences, type: :map)
  field(:title)
  field(:type)
  field(:width)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.EventGadget do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.EventGadget.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.EventGadget do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
