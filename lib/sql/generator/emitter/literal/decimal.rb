# encoding: utf-8

module SQL
  module Generator
    class Emitter
      class Literal

        # Literal decimal emitter
        class Decimal < self

          handle :decimal

        private

          # Perform dispatch
          #
          # @return [undefined]
          #
          # @api private
          def dispatch
            write(value.to_s('F'))
          end

        end # Decimal
      end # Literal
    end # Emitter
  end # Generator
end # SQL
