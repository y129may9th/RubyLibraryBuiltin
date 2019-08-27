require 'nokogiri'
require 'open-uri'

class LibraryController < ApplicationController

  def get
    url = 'https://docs.ruby-lang.org/ja/2.6.0/library/_builtin.html'

    charset = nil

    html = open(url) do |f|
        charset = f.charset
        f.read
    end

    @library_url = []
    doc = Nokogiri::HTML.parse(html, nil, charset)
    doc.xpath('//td[@class="signature"]').each do |node|
    ahead_url = 'https://docs.ruby-lang.org/ja/2.6.0'
    relative_path = node.css('a').attribute('href').value.sub(/../, '')
    @library_url << ahead_url + relative_path
    end
  end
end
