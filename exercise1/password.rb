module Exercise1
  class Password
    def initialize(string)
      @valid = string.length == 12
    end

    def valid?
      @valid
    end
  end
end

