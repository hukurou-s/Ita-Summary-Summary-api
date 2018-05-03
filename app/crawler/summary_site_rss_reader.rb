require 'rss'

boards = Board.all

boards.each do |b|
  rss = RSS::Parser.parse(b.url)

  rss.items.each do |r|

    Article.create(
      name: r.title,
      url: r.link,
      board_id: b.id,
      date: r.dc_date
    )

  end

end

