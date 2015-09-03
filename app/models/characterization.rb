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
  	@s4 = {:p1 => self.p15, :p2 => self.p16, :p3 => self.p17}
  end

  def s5
  	@s5 = {:p1 => self.p18, :p2 => self.p18, :p3 => self.p20}
  end

   def s6
  	@s6 = {:p1 => self.p21, :p2 => self.p22, :p3 => self.p23}
  end

  def s7
  	@s7 = {:p1 => self.p24, :p2 => self.p25, :p3 => self.p26, :p4 => self.p27, :p5 => self.p28}
  end

  def s8
  	@s8 = {:p1 => self.p29, :p2 => self.p30, :p3 => self.p31, :p4 => self.p32, :p5 => self.p33, :p6 => self.p34, :p7 => self.p35, :p8 => self.p36, :p9 => self.p37, :p10 => self.p38, :p11 => self.p39, :p12 => self.p40}
  end

  def s9
  	@s9 = {:p1 => self.p41, :p2 => self.p42, :p3 => self.p43, :p4 => self.p44, :p5 => self.p45, :p6 => self.p46, :p7 => self.p47, :p8 => self.p48, :p9 => self.p49, :p10 => self.p50, :p11 => self.p51, :p12 => self.p52, :p13 => self.p53, :p14 => self.p54}
  end

  def s10
  	@s10 = {:p1 => self.p55, :p2 => self.p56, :p3 => self.p57, :p4 => self.p58, :p5 => self.p59, :p6 => self.p60, :p7 => self.p61, :p8 => self.p62, :p9 => self.p63, :p10 => self.p64, :p11 => self.p65, :p12 => self.p66}
  end

  def s11
  	@s11 = {:p1 => self.p67, :p2 => self.p68, :p3 => self.p69, :p4 => self.p70, :p5 => self.p71, :p6 => self.p72, :p7 => self.p73, :p8 => self.p74, :p9 => self.p75, :p10 => self.p76, :p11 => self.p77, :p12 => self.p78, :p13 => self.p79, :p14 => self.p80, :p15 => self.p81, :p16 => self.p82, :p17 => self.p83, :p18 => self.p84, :p19 => self.p85, :p20 => self.p86, :p21 => self.p87, :p22 => self.p88, :p23 => self.p89}
  end

end
