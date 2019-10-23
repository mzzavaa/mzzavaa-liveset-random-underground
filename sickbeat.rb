live_loop :intro do
  #comment do
  
  with_fx :ixi_techno do
    with_fx :flanger, phase: 2, phase_slide: 2 do |e|
      use_synth :tri
      play 50, release: 2, attack: 2, amp: 0.5
      play 70, release: 2, attack: 2, amp: 0.5
      play 65, release: 2, attack: 2, amp: 0.5
      control e, phase: 0.025
    end
  end
  #end
  sleep 2
  
end
