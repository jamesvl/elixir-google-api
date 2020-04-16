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

defmodule GoogleApi.OSConfig.V1.Model.YumSettings do
  @moduledoc """
  Yum patching is performed by executing `yum update`. Additional options
  can be set to control how this is executed.

  Note that not all settings are supported on all platforms.

  ## Attributes

  *   `excludes` (*type:* `list(String.t)`, *default:* `nil`) - List of packages to exclude from update. These packages are excluded by
      using the yum `--exclude` flag.
  *   `exclusivePackages` (*type:* `list(String.t)`, *default:* `nil`) - An exclusive list of packages to be updated. These are the only packages
      that will be updated. If these packages are not installed, they will be
      ignored. This field must not be specified with any other patch
      configuration fields.
  *   `minimal` (*type:* `boolean()`, *default:* `nil`) - Will cause patch to run `yum update-minimal` instead.
  *   `security` (*type:* `boolean()`, *default:* `nil`) - Adds the `--security` flag to `yum update`. Not supported on
      all platforms.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :excludes => list(String.t()),
          :exclusivePackages => list(String.t()),
          :minimal => boolean(),
          :security => boolean()
        }

  field(:excludes, type: :list)
  field(:exclusivePackages, type: :list)
  field(:minimal)
  field(:security)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.YumSettings do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.YumSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.YumSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end