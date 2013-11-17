$rary = []
def r_pu
    r = gets
    r.chomp!
    case r
    when /^(?:\d)+$/
        n = r.to_i
        $rary.push(n)
        p $rary
        print "\n"
   when /^((?:\d)*)\+$/
    rp($1)
    when /^((?:\d)*)\-$/
    rm($1)
    when /^((?:\d)*)\*$/
    rt($1)
    when /^((?:\d)*)\/$/
    rd($1)
    when "q"
    exit
    when "c"
    $rary = []
    p $rary
    puts "\n"
     else
       puts "数字を入力して下さい。"	
    end
end

def rp_seed
    n1 = $rary.pop if $rary.size != 0
    n2 = $rary.pop if $rary.size != 0
    if n1
    if n2
    n3 = n2 + n1
    else
    n3 = n1
    end
    elsif n2
    n3 = n2
    end
    if n1 || n2
    $rary.push(n3)
    else
    $rary = []
    end
 end

def rm_seed
    n1 = $rary.pop if $rary.size != 0
    n2 = $rary.pop if $rary.size != 0
    if n1
    if n2
    n3 = n2 - n1
    else
    n3 = n1
    end
    elsif n2
    n3 = n2
    end
    if n1 || n2
    $rary.push(n3)
    else
    $rary = []
    end
 end

def rt_seed
    n1 = $rary.pop if $rary.size != 0
    n2 = $rary.pop if $rary.size != 0
    if n1
    if n2
    n3 = n2 * n1
    else
    n3 = n1
    end
    elsif n2
    n3 = n2
    end
    if n1 || n2
    $rary.push(n3)
    else
    $rary = []
    end
 end

def rd_seed
    n1 = $rary.pop if $rary.size != 0
    n2 = $rary.pop if $rary.size != 0
    if n1
    if n2
    n3 = Rational(n2, n1)
    else
    n3 = n1
    end
    elsif n2
    n3 = n2
    end
    if n1 || n2
    $rary.push(n3)
    else
    $rary = []
    end
 end

def rm(n)
    m = n.empty? ? 1 : n.to_i - 1
    m.times{
      rm_seed
    }
    puts $rary[-1] if $rary.size > 1
    p $rary
    print "\n"
end

def rt(n)
    m = n.empty? ? 1 : n.to_i - 1
    m.times{
      rt_seed
    }
    puts $rary[-1] if $rary.size > 1
    p $rary
    print "\n"
end


def rd(n)
   m = n.empty? ? 1 : n.to_i - 1
    m.times{
      rd_seed
    }
    puts $rary[-1] if $rary.size > 1
    p $rary
    print "\n"
end

def rp(n)
    m = n.empty? ? 1 : n.to_i - 1
    m.times{
      rp_seed
    }
    puts $rary[-1] if $rary.size > 1
    p $rary
    print "\n"
end
=begin

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