today = DATEOBJECT

search(today)

get_page_results(date)
  doc = Nokogiri.stuff
  rows = get_todays_rows(d0c, date)

  filterlinks(rows, REGEX)


  +++++++++


  non nested

  today = ...
  doc = nokogiri



  a = get_page_results
    +get all nokogiri rows

  b = get_today_rows(a, today)
    +filter for Aug 12

  c = filter_links(b, regrex)
    + do regex on rows for Aug 12

  puts c