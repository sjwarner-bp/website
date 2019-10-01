class ChangelogEntry
  class ReferenceableType < SimpleDelegator
    def all
      super.map { |obj| Referenceable.for(obj) }
    end
  end
end
