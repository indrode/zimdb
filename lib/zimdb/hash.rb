class Hash
  # Transforms hash keys into symbols.
  # 
  # @return [Hash] the transformed hash
  def symbolize_keys
    t = self.dup
    self.clear
    t.each_pair{|k, v| self[k.downcase.to_sym] = v}
    self
  end
end