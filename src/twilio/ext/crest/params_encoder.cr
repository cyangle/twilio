module Crest
  module ParamsEncoder
    extend self
    # Transform deeply nested params containers into a flat hash of `key => value`.
    #
    # ```
    # Crest::ParamsEncoder.flatten_params({:key1 => {:arr => ["1", "2", "3"]}})
    # # => [{"key1[arr]", "1"}, {"key1[arr]", "2"}, {"key1[arr]", "3"}]
    # ```
    def flatten_params(object : Array, parent_key = nil) : Array(Tuple(String, ParamsValue))
      object.reduce([] of Tuple(String, ParamsValue)) do |memo, item|
        k = :""
        v = item

        processed_key = parent_key ? "#{parent_key}" : k.to_s
        memo << {processed_key, v}

        memo
      end
    end
  end
end
