#!/usr/bin/env ruby

blog.map { |entry| entry.mood }

Popup.make do
  h1 "My Blog"
  blog.each do |entry|
    h2 entry.title
    p entry.fulltext
  end
end
