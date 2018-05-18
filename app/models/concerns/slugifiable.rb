
  module InstanceMethod
    def slug
      self.name.gsub(" ", "-").downcase
      # string = string.split(" ")
      # string = string.join("-")
      # string
    end
  end

  module ClassMethod
    def find_by_slug(string)
      self.all.find do |object|
        object.slug == string
      end
    end
  end
