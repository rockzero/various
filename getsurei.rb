require "time"
#d = Date.today
# ----- begin: Takao Kouji -----
if ARGV.length >= 1
  d = Time.parse(ARGV.shift)
else
  d = Time.now
end
puts d.strftime("%Y-%m-%d %H:%M:%S")
# ----- end: Takao Kouji -----
# 1.
toshinokazu = (d.year - 11) % 19 * 11
#2.
case d.month
  when 1, 3
    tsukinokazu = 0
  when 2, 4, 5
    tsukinokazu = 2
  else
    tsukinokazu = d.month - 2
end
#3,4.
getsurei = (tsukinokazu + d.day + toshinokazu) % 30

print "月齢",getsurei,"  "
case getsurei
  when 0
    print "新月\n"
  when 8,23
    print "半月\n"
  when 3,27
    print "三日月\n"
  when 15
    print "満月\n"
  else
    print "\n"
end

