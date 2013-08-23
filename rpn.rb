# coding: utf-8

$rary = []
def r_pu
    r = gets
    r.chomp!
    case r
    when /^(\d)+$/
        n = r.to_i
        $rary.push(n)
        p $rary
        print "\n"
    when "+"
    rp
    when "-"
    rm
    when "*"
    rt
    when "/"
    rd
    when "q"
    exit
    when "c"
    $rary = []
    p $rary
    puts "\n"
    #when "s+"
    #rsp
    #when "s-"
    #rsm
    else
       puts "数字を入力して下さい。"	
    end
end

def rp
    n1 = $rary.pop
    n2 = $rary.pop
    n3 = n2 + n1
    $rary.push(n3)
    puts n3
    p $rary
    print "\n"
end

def rm
    n1 = $rary.pop
    n2 = $rary.pop
    n3 = n2 - n1
    $rary.push(n3)
    puts n3
    p $rary
    print "\n"
end

def rt
    n1 = $rary.pop
    n2 = $rary.pop
    n3 = n2 * n1
    $rary.push(n3)
    puts n3
    p $rary
    print "\n"
end

def rd
    n1 = $rary.pop
    n2 = $rary.pop
    n3 = n2 / n1
    $rary.push(n3)
    puts n3
    p $rary
    print "\n"
end

=begin
def rsp
    $rary.each{|n1|
       n2 = 0
       n2 += n1
       $rary.delete(n1)
    }
    $rary.push(n2)
    puts n2
    p $rary
    print "\n"
end

def rsm
    n2 = $rary.shift
    $rary.each{|n1|
       n2 -= n1
       $rary.delete(n1)
    }
    $rary.push(n2)
    puts n2
    p $rary
    print "\n"
end
=end

loop{
   r_pu
}
