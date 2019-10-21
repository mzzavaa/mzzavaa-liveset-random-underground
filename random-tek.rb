#download soundpack from: https://soundpacks.com/free-sound-packs/hardstyle-force-sample-pack/
#or replace by standard kicks (might sound different ;))
#change filepath at #todos

use_bpm 120

use_random_seed 10
notes =  (ring :b1, :b2, :e1, :e2, :b3, :e3)

live_loop :tron do
  with_synth :chipbass do
    with_bpm 90 do
      with_fx(:slicer, phase: [0.5,0.25].choose) do
        with_fx(:reverb, room: 0.5, mix: 0.5) do
          
          n1 = (chord notes.choose, :minor).choose
          n2 = (chord notes.choose, :minor).choose
          
          p = play n1, amp: 0.5, release: 8, note_slide: 6, cutoff: 30, cutoff_slide: 2, pan: -0.5, detune: rrand(0, 0.1)
          control p, note: rrand(20,30), cutoff: rrand(50,80)
        end
      end
    end
  end
  
  sleep 16
end

live_loop :accords do
  
  sleep 32
  sample :loop_weirdo
  sleep 16
  
end


live_loop :bassline do
  
  a = 0.5
  
  7.times do
    sample :drum_cymbal_pedal, amp: a
    sample :drum_cymbal_closed, amp: a
    #todo - change filepath
    #sample "---/hardstyle-force-sample-pack/Hardstyle_Force Sample_Kit/Gated Kicks/GTKick("+['01','02','03','04','05','06','07','08','09','10'].choose+").wav", amp: 0.5
    #sample "---/hardstyle-force-sample-pack/Hardstyle_Force Sample_Kit/FX/fx02.wav", rate: 1.1, amp: 1.1
    #sample "---/hardstyle-force-sample-pack/Hardstyle_Force Sample_Kit/FX/fx03.wav", rate: 1.1, amp: 1.1
    sleep 1
  end
  sleep 0.5
  sample :drum_cymbal_closed, amp: a
  2.times do
    sample :drum_cymbal_closed, amp: a
    #todo - change filepath
    #sample "---/hardstyle-force-sample-pack/Hardstyle_Force Sample_Kit/FX/fx02.wav", rate: 1.1, amp: 1.1
    sleep 0.25
  end
  sample :drum_cymbal_pedal, amp: a
  
end

live_loop :harder do
  
  kick = rrand_i(1,96)
  8.times do
    #todo - change filepath
    #sample "---/hardstyle-force-sample-pack/Hardstyle_Force Sample_Kit/Hardstyle Kicks/kick hardstyle ("+kick.to_s+").wav", amp: 0.5
    sleep 1
  end
  sleep 16
  
end

live_loop :drums do
  8.times do
    3.times do
      sleep 0.5
    end
    #sample :drum_bass_hard
    sleep 0.5
  end
  
end

live_loop :melody do
  sleep 16
  8.times do
    #todo - change filepath
    #sample "----/hardstyle-force-sample-pack/Hardstyle_Force Sample_Kit/Leads/nlead_"+['a3','a4','a5','4','5','6'].choose+".wav", release: 0.2, attack: 0.2, sustain: 9, amp: 0.5
    sleep 8
  end
  
end
