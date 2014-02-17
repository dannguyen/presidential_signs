class CongressionalNumber

  def self.info_for(num)
    NUM_HASH[num]
  end


  def self.span_for(num)
    i = info_for(num)

    return Time.parse(i.start_date)..Time.parse(i.end_date)
  end


  def self.for_date(date)
    t = Time.parse(date.to_s).strftime("%Y-%m-%d")

    NUM_HASH.select{|k,v| v[:start_date] <= t && v[:end_date] >= t}.keys.first
  end

  NUM_HASH = {1=>{:start_date=>"1790-01-04", :end_date=>"1791-03-03"},
 2=>{:start_date=>"1791-03-04", :end_date=>"1793-03-02"},
 3=>{:start_date=>"1793-03-04", :end_date=>"1795-03-03"},
 4=>{:start_date=>"1795-06-08", :end_date=>"1797-03-03"},
 5=>{:start_date=>"1797-03-04", :end_date=>"1799-03-03"},
 6=>{:start_date=>"1799-12-02", :end_date=>"1801-03-03"},
 7=>{:start_date=>"1801-03-04", :end_date=>"1803-03-03"},
 8=>{:start_date=>"1803-10-17", :end_date=>"1805-03-03"},
 9=>{:start_date=>"1805-12-02", :end_date=>"1807-03-03"},
 10=>{:start_date=>"1807-10-26", :end_date=>"1809-03-03"},
 11=>{:start_date=>"1809-03-04", :end_date=>"1811-03-03"},
 12=>{:start_date=>"1811-11-04", :end_date=>"1813-03-03"},
 13=>{:start_date=>"1813-05-24", :end_date=>"1815-03-03"},
 14=>{:start_date=>"1815-12-04", :end_date=>"1817-03-03"},
 15=>{:start_date=>"1817-03-04", :end_date=>"1819-03-03"},
 16=>{:start_date=>"1819-12-06", :end_date=>"1821-03-03"},
 17=>{:start_date=>"1821-12-03", :end_date=>"1823-03-03"},
 18=>{:start_date=>"1823-12-01", :end_date=>"1825-03-03"},
 19=>{:start_date=>"1825-03-04", :end_date=>"1827-03-03"},
 20=>{:start_date=>"1827-12-03", :end_date=>"1829-03-03"},
 21=>{:start_date=>"1829-03-04", :end_date=>"1831-03-03"},
 22=>{:start_date=>"1831-12-05", :end_date=>"1833-03-02"},
 23=>{:start_date=>"1833-12-02", :end_date=>"1835-03-03"},
 24=>{:start_date=>"1835-12-07", :end_date=>"1837-03-03"},
 25=>{:start_date=>"1837-03-04", :end_date=>"1839-03-03"},
 26=>{:start_date=>"1839-12-02", :end_date=>"1841-03-03"},
 27=>{:start_date=>"1841-03-04", :end_date=>"1843-03-03"},
 28=>{:start_date=>"1843-12-04", :end_date=>"1845-03-03"},
 29=>{:start_date=>"1845-03-04", :end_date=>"1847-03-03"},
 30=>{:start_date=>"1847-12-06", :end_date=>"1849-03-03"},
 31=>{:start_date=>"1849-03-05", :end_date=>"1851-03-03"},
 32=>{:start_date=>"1851-03-04", :end_date=>"1853-03-03"},
 33=>{:start_date=>"1853-03-04", :end_date=>"1855-03-03"},
 34=>{:start_date=>"1855-12-03", :end_date=>"1857-03-03"},
 35=>{:start_date=>"1857-03-04", :end_date=>"1859-03-03"},
 36=>{:start_date=>"1859-03-04", :end_date=>"1861-03-03"},
 37=>{:start_date=>"1861-03-04", :end_date=>"1863-03-03"},
 38=>{:start_date=>"1863-03-04", :end_date=>"1865-03-03"},
 39=>{:start_date=>"1865-03-04", :end_date=>"1867-03-03"},
 40=>{:start_date=>"1867-03-04", :end_date=>"1869-03-03"},
 41=>{:start_date=>"1869-03-04", :end_date=>"1871-03-03"},
 42=>{:start_date=>"1871-03-04", :end_date=>"1873-03-03"},
 43=>{:start_date=>"1873-03-04", :end_date=>"1875-03-03"},
 44=>{:start_date=>"1875-03-05", :end_date=>"1877-03-03"},
 45=>{:start_date=>"1877-03-05", :end_date=>"1879-03-03"},
 46=>{:start_date=>"1879-03-18", :end_date=>"1881-03-03"},
 47=>{:start_date=>"1881-03-04", :end_date=>"1883-03-03"},
 48=>{:start_date=>"1883-12-03", :end_date=>"1885-03-03"},
 49=>{:start_date=>"1885-03-04", :end_date=>"1887-03-03"},
 50=>{:start_date=>"1887-12-05", :end_date=>"1889-03-03"},
 51=>{:start_date=>"1889-03-04", :end_date=>"1891-03-03"},
 52=>{:start_date=>"1891-12-07", :end_date=>"1893-03-03"},
 53=>{:start_date=>"1893-03-04", :end_date=>"1895-03-03"},
 54=>{:start_date=>"1895-12-02", :end_date=>"1897-03-03"},
 55=>{:start_date=>"1897-03-04", :end_date=>"1899-03-03"},
 56=>{:start_date=>"1899-12-04", :end_date=>"1901-03-03"},
 57=>{:start_date=>"1901-03-04", :end_date=>"1903-03-03"},
 58=>{:start_date=>"1903-03-05", :end_date=>"1905-03-03"},
 59=>{:start_date=>"1905-03-04", :end_date=>"1907-03-03"},
 60=>{:start_date=>"1907-12-02", :end_date=>"1909-03-03"},
 61=>{:start_date=>"1909-03-04", :end_date=>"1911-03-03"},
 62=>{:start_date=>"1911-04-04", :end_date=>"1913-03-03"},
 63=>{:start_date=>"1913-03-04", :end_date=>"1915-03-03"},
 64=>{:start_date=>"1915-12-06", :end_date=>"1917-03-03"},
 65=>{:start_date=>"1917-03-05", :end_date=>"1919-03-03"},
 66=>{:start_date=>"1919-05-19", :end_date=>"1921-03-03"},
 67=>{:start_date=>"1921-03-04", :end_date=>"1923-03-03"},
 68=>{:start_date=>"1923-12-03", :end_date=>"1925-03-03"},
 69=>{:start_date=>"1925-03-04", :end_date=>"1927-03-04"},
 70=>{:start_date=>"1927-12-05", :end_date=>"1929-03-03"},
 71=>{:start_date=>"1929-03-04", :end_date=>"1931-03-03"},
 72=>{:start_date=>"1931-12-07", :end_date=>"1933-03-03"},
 73=>{:start_date=>"1933-03-04", :end_date=>"1934-06-18"},
 74=>{:start_date=>"1935-01-03", :end_date=>"1936-06-20"},
 75=>{:start_date=>"1937-01-05", :end_date=>"1938-06-16"},
 76=>{:start_date=>"1939-01-03", :end_date=>"1941-01-03"},
 77=>{:start_date=>"1941-01-03", :end_date=>"1942-12-16"},
 78=>{:start_date=>"1943-01-06", :end_date=>"1944-12-19"},
 79=>{:start_date=>"1945-01-03", :end_date=>"1946-08-02"},
 80=>{:start_date=>"1947-01-03", :end_date=>"1948-12-31"},
 81=>{:start_date=>"1949-01-03", :end_date=>"1951-01-02"},
 82=>{:start_date=>"1951-01-03", :end_date=>"1952-07-07"},
 83=>{:start_date=>"1953-01-03", :end_date=>"1954-12-02"},
 84=>{:start_date=>"1955-01-05", :end_date=>"1956-07-27"},
 85=>{:start_date=>"1957-01-03", :end_date=>"1958-08-24"},
 86=>{:start_date=>"1959-01-07", :end_date=>"1960-09-01"},
 87=>{:start_date=>"1961-01-03", :end_date=>"1962-10-13"},
 88=>{:start_date=>"1963-01-09", :end_date=>"1964-10-03"},
 89=>{:start_date=>"1965-01-04", :end_date=>"1966-10-22"},
 90=>{:start_date=>"1967-01-10", :end_date=>"1968-10-14"},
 91=>{:start_date=>"1969-01-03", :end_date=>"1971-01-02"},
 92=>{:start_date=>"1971-01-21", :end_date=>"1972-10-18"},
 93=>{:start_date=>"1973-01-03", :end_date=>"1974-12-20"},
 94=>{:start_date=>"1975-01-14", :end_date=>"1976-10-01"},
 95=>{:start_date=>"1977-01-04", :end_date=>"1978-10-15"},
 96=>{:start_date=>"1979-01-15", :end_date=>"1980-12-16"},
 97=>{:start_date=>"1981-01-05", :end_date=>"1982-12-23"},
 98=>{:start_date=>"1983-01-03", :end_date=>"1984-10-12"},
 99=>{:start_date=>"1985-01-03", :end_date=>"1986-10-18"},
 100=>{:start_date=>"1987-01-06", :end_date=>"1988-10-22"},
 101=>{:start_date=>"1989-01-03", :end_date=>"1990-10-28"},
 102=>{:start_date=>"1991-01-03", :end_date=>"1992-10-09"},
 103=>{:start_date=>"1993-01-05", :end_date=>"1994-12-01"},
 104=>{:start_date=>"1995-01-04", :end_date=>"1996-10-04"},
 105=>{:start_date=>"1997-01-07", :end_date=>"1998-12-19"},
 106=>{:start_date=>"1999-01-06", :end_date=>"2000-12-15"},
 107=>{:start_date=>"2001-01-03", :end_date=>"2002-11-22"},
 108=>{:start_date=>"2003-01-07", :end_date=>"2004-12-08"},
 109=>{:start_date=>"2005-01-04", :end_date=>"2006-12-09"},
 110=>{:start_date=>"2007-01-04", :end_date=>"2009-01-03"},
 111=>{:start_date=>"2009-01-06", :end_date=>"2010-12-22"},
 112=>{:start_date=>"2011-01-05", :end_date=>"2013-01-03"},
 113=>{:start_date=>"2013-01-05", :end_date=>"2015-01-03"}}



end