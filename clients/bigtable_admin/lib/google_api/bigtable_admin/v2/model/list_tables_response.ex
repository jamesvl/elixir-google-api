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

defmodule GoogleApi.BigtableAdmin.V2.Model.ListTablesResponse do
  @moduledoc """
  Response message for
  google.bigtable.admin.v2.BigtableTableAdmin.ListTables

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Set if not all tables could be returned in a single response.
      Pass this value to `page_token` in another request to get the next
      page of results.
  *   `tables` (*type:* `list(GoogleApi.BigtableAdmin.V2.Model.Table.t)`, *default:* `nil`) - The tables present in the requested instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :tables => list(GoogleApi.BigtableAdmin.V2.Model.Table.t())
        }

  field(:nextPageToken)
  field(:tables, as: GoogleApi.BigtableAdmin.V2.Model.Table, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.ListTablesResponse do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.ListTablesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.ListTablesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end