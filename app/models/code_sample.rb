class CodeSample < ActiveRecord::Base
  has_many :ratings

  def self.random
    CodeSample.first(offset: rand(CodeSample.count))
  end

  def text_block
    "<pre class=\"prettyprint\">#{text}</pre>".html_safe
  end

  def rating
    return 0 if ratings.length == 0
    ratings.map {|r| r.timing}.sum / ratings.length
  end
end
