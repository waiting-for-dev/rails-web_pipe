module Articles
  class IndexApp
    include WebPipe

    compose :base, BaseApp.new

    plug :fetch_articles
    plug :render

    private
    
    def fetch_articles(conn)
      articles = [
        OpenStruct.new(name: 'Article 1'),
        OpenStruct.new(name: 'Article 2')
      ]
      conn.add(:articles, articles)
    end

    def render(conn)
      conn.render(
        template: 'articles/index',
        assigns: {
          articles: conn.fetch(:articles)
        }
      )
    end
  end
end
