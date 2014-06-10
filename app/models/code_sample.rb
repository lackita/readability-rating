class CodeSample < ActiveRecord::Base
  has_many :ratings

  def self.random
    CodeSample.first(offset: rand(CodeSample.count))
  end

  def text_block
    "<pre class=\"prettyprint\">#{text}</pre>".html_safe
  end

  def rating
    ratings.map {|r| r.timing}.sum / ratings.length
  end
end
