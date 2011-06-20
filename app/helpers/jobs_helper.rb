module JobsHelper
  class Jobs
    def force_feed(attributes)
      self.send(:attributes=, attributes, false)
      self
    end
  end
end
