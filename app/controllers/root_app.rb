class RootApp
  include WebPipe

  compose :base, BaseApp.new

  plug :render

  private

  def render(conn)
    conn.render(
      template: 'root'
    )
  end
end
