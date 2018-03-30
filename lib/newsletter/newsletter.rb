class Newsletter

  attr_accessor :article, :issue_number, :issue_date

  def initialize
    @articles = []
  end

  def articles
    @articles.dup.freeze
  end

  def add_article(article)
      if !article.is_a?(Article) && !article.title.empty?
      #the && part is optional, you can define article however you want
      raise InvalidType, "must be an Article"
    else
      @articles << article
    end

    def first_article_url
      self.articles.first.url
    end

end
