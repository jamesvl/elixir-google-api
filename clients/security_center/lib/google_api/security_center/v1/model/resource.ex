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

defmodule GoogleApi.SecurityCenter.V1.Model.Resource do
  @moduledoc """
  Information related to the Google Cloud resource that is associated with this finding. LINT.IfChange

  ## Attributes

  *   `folders` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.Folder.t)`, *default:* `nil`) - Contains a Folder message for each folder in the assets ancestry. The first folder is the deepest nested folder, and the last folder is the folder directly under the Organization.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The full resource name of the resource. See: https://cloud.google.com/apis/design/resource_names#full_resource_name
  *   `parentDisplayName` (*type:* `String.t`, *default:* `nil`) - The human readable name of resource's parent.
  *   `parentName` (*type:* `String.t`, *default:* `nil`) - The full resource name of resource's parent.
  *   `projectDisplayName` (*type:* `String.t`, *default:* `nil`) - The human readable name of project that the resource belongs to.
  *   `projectName` (*type:* `String.t`, *default:* `nil`) - The full resource name of project that the resource belongs to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :folders => list(GoogleApi.SecurityCenter.V1.Model.Folder.t()),
          :name => String.t(),
          :parentDisplayName => String.t(),
          :parentName => String.t(),
          :projectDisplayName => String.t(),
          :projectName => String.t()
        }

  field(:folders, as: GoogleApi.SecurityCenter.V1.Model.Folder, type: :list)
  field(:name)
  field(:parentDisplayName)
  field(:parentName)
  field(:projectDisplayName)
  field(:projectName)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.Resource do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.Resource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.Resource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
