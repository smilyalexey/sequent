# frozen_string_literal: true

module Sequent
  module Core
    module Helpers
      module MessageMatchers
        ClassEquals = Struct.new(:expected_class) do
          def matches_message?(message)
            message.instance_of?(expected_class)
          end

          def matcher_description
            expected_class
          end
        end
      end
    end
  end
end

Sequent::Core::Helpers::MessageMatchers.register_matcher(
  :class_equals,
  Sequent::Core::Helpers::MessageMatchers::ClassEquals,
)
