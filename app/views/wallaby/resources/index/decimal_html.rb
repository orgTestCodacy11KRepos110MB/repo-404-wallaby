# frozen_string_literal: true

module Wallaby
  module Resources
    module Index
      # Html cell
      class DecimalHtml < Cell
        # @return [String]
        def render
          value || null
        end
      end
    end
  end
end