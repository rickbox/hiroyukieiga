require 'mechanize'

agent = Mechanize.new
page = agent.get("http://hiroyukieiga.html.xdomain.jp/matome100.html")
elements = page.search('li')

elements.each do |ele|

  arr = ele.inner_text.split("【")
  title = arr[0]
  arr = title.split("（")
  title = arr[0]

  puts "<a href=""https://www.amazon.co.jp/s?k=#{title}"" target=""_blank"">#{title}</a>"
  puts "<br>"
end
