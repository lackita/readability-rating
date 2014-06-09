class CodeSample < ActiveRecord::Base
  has_many :ratings

  def self.random
    CodeSample.first(offset: rand(CodeSample.count))
  end
end
