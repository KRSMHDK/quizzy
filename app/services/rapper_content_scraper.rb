class RapperContentScraper < WikipediaContentScraper
  def generate
    doc = Nokogiri::HTML(URI.open('https://en.wikipedia.org/wiki/List_of_hip_hop_musicians'))
    li_elements = doc.css('.div-col ul li')
    rapper_pic_present_existed = false

    while rapper_pic_present_existed == false
      li = li_elements.to_a.sample
      a_element = li.at_css('a')
      next unless a_element.present?

      title = a_element['title']
      href = a_element['href']
      rapper_url = Nokogiri::HTML(URI.open("https://en.wikipedia.org#{href}"))
      rapper_pic = rapper_url.at_css('.infobox-image .mw-file-element')

      next unless rapper_pic.present?

      rapper_pic_present_existed = true
      pic_src = rapper_pic['src']
      @rapper = { title:, href: "https://en.wikipedia.org#{href}", pic: pic_src }

    end
    @rapper
  end
end
