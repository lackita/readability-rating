class CodeSample < ActiveRecord::Base
  has_many :ratings

  def self.random
    CodeSample.first(offset: rand(CodeSample.count))
  end

  def text_block
    "<pre class=\"prettyprint\">#{text}</pre>".html_safe
  end

  def timing
    average(timings) / 1000
  end

  def score
    s = average(scores)
    return "n/a" if s == 0
    s
  end

  private

  def average(list)
    valid_items = list.select {|i| i != nil}
    return 0 if valid_items.length == 0
    valid_items.sum / valid_items.length
  end

  def timings
    ratings.map {|r| r.timing}
  end

  def scores
    ratings.map {|r| r.score}
  end
end
