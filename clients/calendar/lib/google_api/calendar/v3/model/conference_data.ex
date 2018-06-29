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

defmodule GoogleApi.Calendar.V3.Model.ConferenceData do
  @moduledoc """


  ## Attributes

  - parameters (ConferenceParameters): Additional properties related to a conference. An example would be a solution-specific setting for enabling video streaming. Defaults to: `null`.
  - conferenceId (String.t): The ID of the conference. Can be used by developers to keep track of conferences, should not be displayed to users. Values for solution types:   - \&quot;eventHangout\&quot;: unset. - \&quot;eventNamedHangout\&quot;: the name of the Hangout. - \&quot;hangoutsMeet\&quot;: the 10-letter meeting code, for example \&quot;aaa-bbbb-ccc\&quot;.  Optional. Defaults to: `null`.
  - conferenceSolution (ConferenceSolution): The conference solution, such as Hangouts or Hangouts Meet. Unset for a conference with a failed create request. Either conferenceSolution and at least one entryPoint, or createRequest is required. Defaults to: `null`.
  - createRequest (CreateConferenceRequest): A request to generate a new conference and attach it to the event. The data is generated asynchronously. To see whether the data is present check the status field. Either conferenceSolution and at least one entryPoint, or createRequest is required. Defaults to: `null`.
  - entryPoints ([EntryPoint]): Information about individual conference entry points, such as URLs or phone numbers. All of them must belong to the same conference. Either conferenceSolution and at least one entryPoint, or createRequest is required. Defaults to: `null`.
  - notes (String.t): Additional notes (such as instructions from the domain administrator, legal notices) to display to the user. Can contain HTML. The maximum length is 2048 characters. Optional. Defaults to: `null`.
  - signature (String.t): The signature of the conference data. Genereated on server side. Must be preserved while copying the conference data between events, otherwise the conference data will not be copied. Unset for a conference with a failed create request. Optional for a conference with a pending create request. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parameters => GoogleApi.Calendar.V3.Model.ConferenceParameters.t(),
          :conferenceId => any(),
          :conferenceSolution => GoogleApi.Calendar.V3.Model.ConferenceSolution.t(),
          :createRequest => GoogleApi.Calendar.V3.Model.CreateConferenceRequest.t(),
          :entryPoints => list(GoogleApi.Calendar.V3.Model.EntryPoint.t()),
          :notes => any(),
          :signature => any()
        }

  field(:parameters, as: GoogleApi.Calendar.V3.Model.ConferenceParameters)
  field(:conferenceId)
  field(:conferenceSolution, as: GoogleApi.Calendar.V3.Model.ConferenceSolution)
  field(:createRequest, as: GoogleApi.Calendar.V3.Model.CreateConferenceRequest)
  field(:entryPoints, as: GoogleApi.Calendar.V3.Model.EntryPoint, type: :list)
  field(:notes)
  field(:signature)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.ConferenceData do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.ConferenceData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.ConferenceData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
