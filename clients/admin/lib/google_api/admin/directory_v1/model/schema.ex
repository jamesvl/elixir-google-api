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

defmodule GoogleApi.Admin.Directory_v1.Model.Schema do
  @moduledoc """
  JSON template for Schema resource in Directory API.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Display name for the schema.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `fields` (*type:* `list(GoogleApi.Admin.Directory_v1.Model.SchemaFieldSpec.t)`, *default:* `nil`) - Fields of Schema
  *   `kind` (*type:* `String.t`, *default:* `admin#directory#schema`) - Kind of resource this is.
  *   `schemaId` (*type:* `String.t`, *default:* `nil`) - Unique identifier of Schema (Read-only)
  *   `schemaName` (*type:* `String.t`, *default:* `nil`) - Schema name
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t(),
          :etag => String.t(),
          :fields => list(GoogleApi.Admin.Directory_v1.Model.SchemaFieldSpec.t()),
          :kind => String.t(),
          :schemaId => String.t(),
          :schemaName => String.t()
        }

  field(:displayName)
  field(:etag)
  field(:fields, as: GoogleApi.Admin.Directory_v1.Model.SchemaFieldSpec, type: :list)
  field(:kind)
  field(:schemaId)
  field(:schemaName)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.Schema do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.Schema.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.Schema do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end