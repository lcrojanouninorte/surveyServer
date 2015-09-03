class Characterization < ActiveRecord::Base
  belongs_to :user

  def s1	  
  	@s1 = {:p1 => self.p1, :p2 => self.p2, :p3 => self.p3, :p4 => self.p4}
  end

  def s2
  	@s2 = {:p1 => self.p5, :p2 => self.p6, :p3 => self.p7, :p4 => self.p8, :p5 => self.p9}
  end

  def s3
  	@s3 = {:p1 => self.p10, :p2 => self.p11, :p3 => self.p12, :p4 => self.p13, :p5 => self.p14, :p6 => self.p15, :p7 => self.p16}
  end

  def s4
  	@s4 = {:p1 => self.p17, :p2 => self.p18, :p3 => self.p19}
  end

  def s5
  	@s5 = {:p1 => self.p20, :p2 => self.p21, :p3 => self.p22}
  end

   def s6
  	@s6 = {:p1 => self.p23, :p2 => self.p24, :p3 => self.p25}
  end

  def s7
  	@s7 = {:p1 => self.p26, :p2 => self.p27, :p3 => self.p28, :p4 => self.p29, :p5 => self.p30}
  end

  def s8
  	@s8 = {:p1 => self.p31, :p2 => self.p32, :p3 => self.p33, :p4 => self.p34, :p5 => self.p35, :p6 => self.p36, :p7 => self.p37, :p8 => self.p38, :p9 => self.p39, :p10 => self.p40, :p11 => self.p41, :p12 => self.p42}
  end

  def s9
  	@s9 = {:p1 => self.p43, :p2 => self.p44, :p3 => self.p45, :p4 => self.p46, :p5 => self.p47, :p6 => self.p48, :p7 => self.p49, :p8 => self.p50, :p9 => self.p51, :p10 => self.p52, :p11 => self.p53, :p12 => self.p54, :p13 => self.p55, :p14 => self.p56}
  end

  def s10
  	@s10 = {:p1 => self.p57, :p2 => self.p58, :p3 => self.p59, :p4 => self.p60, :p5 => self.p61, :p6 => self.p62, :p7 => self.p63, :p8 => self.p64, :p9 => self.p65, :p10 => self.p66, :p11 => self.p67, :p12 => self.p68, :p13 => self.p69}
  end

  def s11
  	@s11 = {:p1 => self.p70, :p2 => self.p71, :p3 => self.p72, :p4 => self.p73, :p5 => self.p74, :p6 => self.p75, :p7 => self.p76, :p8 => self.p77, :p9 => self.p78, :p10 => self.p79, :p11 => self.p80, :p12 => self.p81, :p13 => self.p82, :p14 => self.p83, :p15 => self.p84, :p16 => self.p85, :p17 => self.p86, :p18 => self.p87, :p19 => self.p88, :p20 => self.p89, :p21 => self.p90, :p22 => self.p91, :p23 => self.p92, :p24 => self.p93, :p25 => self.p94}
  end

end
