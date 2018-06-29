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

defmodule GoogleApi.Spectrum.V1explorer.Model.PawsGetSpectrumResponse do
  @moduledoc """
  The response message for the available spectrum query which contains a schedule of available spectrum for the device.

  ## Attributes

  - databaseChange (DbUpdateSpec): A database may include the databaseChange parameter to notify a device of a change to its database URI, providing one or more alternate database URIs. The device should use this information to update its list of pre-configured databases by (only) replacing its entry for the responding database with the list of alternate URIs. Defaults to: `null`.
  - deviceDesc (DeviceDescriptor): The database must return, in its available spectrum response, the device descriptor information it received in the master device&#39;s available spectrum request. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;spectrum#pawsGetSpectrumResponse\&quot;. Defaults to: `null`.
  - maxContiguousBwHz (float()): The database may return a constraint on the allowed maximum contiguous bandwidth (in Hertz). A regulatory domain may require the database to return this parameter. When this parameter is present in the response, the device must apply this constraint to its spectrum-selection logic to ensure that no single block of spectrum has bandwidth that exceeds this value. Defaults to: `null`.
  - maxTotalBwHz (float()): The database may return a constraint on the allowed maximum total bandwidth (in Hertz), which need not be contiguous. A regulatory domain may require the database to return this parameter. When this parameter is present in the available spectrum response, the device must apply this constraint to its spectrum-selection logic to ensure that total bandwidth does not exceed this value. Defaults to: `null`.
  - needsSpectrumReport (boolean()): For regulatory domains that require a spectrum-usage report from devices, the database must return true for this parameter if the spectrum schedule list is not empty; otherwise, the database will either return false or omit this parameter. If this parameter is present and its value is true, the device must send a spectrum use notify message to the database; otherwise, the device must not send the notification. Defaults to: `null`.
  - rulesetInfo (RulesetInfo): The database should return ruleset information, which identifies the applicable regulatory authority and ruleset for the available spectrum response. If included, the device must use the corresponding ruleset to interpret the response. Values provided in the returned ruleset information, such as maxLocationChange, take precedence over any conflicting values provided in the ruleset information returned in a prior initialization response sent by the database to the device. Defaults to: `null`.
  - spectrumSchedules ([SpectrumSchedule]): The available spectrum response must contain a spectrum schedule list. The list may be empty if spectrum is not available. The database may return more than one spectrum schedule to represent future changes to the available spectrum. How far in advance a schedule may be provided depends on the applicable regulatory domain. Defaults to: `null`.
  - timestamp (String.t): The database includes a timestamp of the form YYYY-MM-DDThh:mm:ssZ (Internet timestamp format per RFC3339) in its available spectrum response. The timestamp should be used by the device as a reference for the start and stop times specified in the response spectrum schedules. Defaults to: `null`.
  - type (String.t): The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...).  Required field. Defaults to: `null`.
  - version (String.t): The PAWS version. Must be exactly 1.0.  Required field. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :databaseChange => GoogleApi.Spectrum.V1explorer.Model.DbUpdateSpec.t(),
          :deviceDesc => GoogleApi.Spectrum.V1explorer.Model.DeviceDescriptor.t(),
          :kind => any(),
          :maxContiguousBwHz => any(),
          :maxTotalBwHz => any(),
          :needsSpectrumReport => any(),
          :rulesetInfo => GoogleApi.Spectrum.V1explorer.Model.RulesetInfo.t(),
          :spectrumSchedules => list(GoogleApi.Spectrum.V1explorer.Model.SpectrumSchedule.t()),
          :timestamp => any(),
          :type => any(),
          :version => any()
        }

  field(:databaseChange, as: GoogleApi.Spectrum.V1explorer.Model.DbUpdateSpec)
  field(:deviceDesc, as: GoogleApi.Spectrum.V1explorer.Model.DeviceDescriptor)
  field(:kind)
  field(:maxContiguousBwHz)
  field(:maxTotalBwHz)
  field(:needsSpectrumReport)
  field(:rulesetInfo, as: GoogleApi.Spectrum.V1explorer.Model.RulesetInfo)
  field(:spectrumSchedules, as: GoogleApi.Spectrum.V1explorer.Model.SpectrumSchedule, type: :list)
  field(:timestamp)
  field(:type)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.Spectrum.V1explorer.Model.PawsGetSpectrumResponse do
  def decode(value, options) do
    GoogleApi.Spectrum.V1explorer.Model.PawsGetSpectrumResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spectrum.V1explorer.Model.PawsGetSpectrumResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
