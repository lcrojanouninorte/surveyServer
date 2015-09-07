class Characterization < ActiveRecord::Base
  belongs_to :user

  def s1	  
  	@s1 = {:p1 => self.p1, :p2 => self.p2, :p3 => self.p3, :p4 => self.p4}
  end

  def s2
  	@s2 = {:p1 => self.p5, :p2 => self.p6, :p3 => self.p7, :p4 => self.p8, :p5 => self.p9}
  end

  def s3
  	@s3 = {:p1 => self.p10, :p2 => self.p11, :p3 => self.p12, :p4 => self.p13, :p5 => self.p14, :p6 => self.p15}
  end

  def s4
  	@s4 = {:p1 => self.p16, :p2 => self.p17, :p3 => self.p18, :p4=>self.p19}
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
  	@s8 = {:p1 => self.p30, :p2 => self.p31, :p3 => self.p32, :p4 => self.p33, :p5 => self.p34, :p6 => self.p35, :p7 => self.p36, :p8 => self.p37, :p9 => self.p38, :p10 => self.p39, :p11 => self.p40, :p12 => self.p41}
  end

  def s9
  	@s9 = {:p1 => self.p42, :p2 => self.p43, :p3 => self.p44, :p4 => self.p45, :p5 => self.p46, :p6 => self.p47, :p7 => self.p48, :p8 => self.p49, :p9 => self.p50, :p10 => self.p51, :p11 => self.p52, :p12 => self.p53, :p13 => self.p54, :p14 => self.p55}
  end

  def s10
  	@s10 = {:p1 => self.p56, :p2 => self.p57, :p3 => self.p58, :p4 => self.p59, :p5 => self.p60, :p6 => self.p61, :p7 => self.p62, :p8 => self.p63, :p9 => self.p64, :p10 => self.p65, :p11 => self.p66, :p12 => self.p67}
  end

  def s11
  	@s11 = {:p1 => self.p68, :p2 => self.p69, :p3 => self.p70, :p4 => self.p71, :p5 => self.p72, :p6 => self.p73, :p7 => self.p74, :p8 => self.p75, :p9 => self.p76, :p10 => self.p77, :p11 => self.p78, :p12 => self.p79, :p13 => self.p80, :p14 => self.p81, :p15 => self.p82, :p16 => self.p83, :p17 => self.p84, :p18 => self.p85, :p19 => self.p86, :p20 => self.p87, :p21 => self.p88, :p22 => self.p89, :p23 => self.p90}
  end

end
