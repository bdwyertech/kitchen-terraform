# frozen_string_literal: true

# Copyright 2016-2021 Copado NCS LLC
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

require "dry/validation"

module Kitchen
  module Terraform
    module ConfigSchemas
      # A validation schema for a configuration attribute which is an optional string.
      #
      # @see http://dry-rb.org/gems/dry-validation/basics/working-with-schemas/ DRY Validation Working With Schemas
      OptionalString = ::Dry::Validation.Schema do
        required(:value)
          .maybe(
            :str?,
            :filled?
          )
      end.dup

      OptionalString.define_singleton_method :to_s do
        "Kitchen::Terraform::ConfigSchemas::OptionalString"
      end
    end
  end
end
