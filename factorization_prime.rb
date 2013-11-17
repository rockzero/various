x = gets.to_i
y = []
pr = 2
y2 = Hash.new(0)
characteristic = []
number = []
until x == 1
  if (x % pr) ==0
    y.push(pr)
    x = x / pr
  else
    pr += 1
  end
end
y.each{|n|
  y2[n] += 1
}
y2.each{|n,c|
  characteristic.push(c)
  number.push(n)
}
characteristic.each_with_index{|c,i|
  if c == 1
    characteristic[i] =  ""
  end
}
print "\n"
characteristic.each {|c|
  print " "
  print c.to_s
  print "  "
} 
print "\n"
number.each_with_index {|n,i|
  print n.to_s
  print " " if characteristic[i] != ""
  print "・" unless n == number[-1]
}
print "1" if y == []
print "\n"
  