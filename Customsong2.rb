# Welcome to Sonic Pi v3.1
use_bpm 106.5
use_synth :piano

a = [:E3, :G3, :C4]
a = a

play a, sustain: 2, release: 1
play :E4
sleep 0.5
play :G4
sleep 0.5
play :C5, sustain: 1
sleep 1
play :G4
sleep 1
play :E4
sleep 1
play :F3, attack: 0.5, sustain: 1, decay: 0.5, amp: 0.5
play :A3, attack: 0.5, sustain: 1, decay: 0.5, amp: 0.5
play :C4, attack: 0.5, sustain: 1, decay: 0.5
play :F4, amp: 0.5
sleep 0.5
play :A4, amp: 0.5
sleep 0.5
play :C5, sustain: 1, amp: 0.25
sleep 1
play :A4, amp: 0.5

use_bpm 110
s = 0.75
play :C4, amp: s #5
sleep 0.5
play :D4, amp: s #5
sleep 0.5
play :E4, amp: s #5
sleep 0.5
play :D4, amp: s #5
sleep 1.5
play :C4, amp: s #5
sleep 0.5
play :A4, amp: s #5
sleep 0.5
s = s-0.25
print "s"

use_bpm 120
s = 0.75
play :C4, amp: s #5
sleep 0.5
play :D4, amp: s #5
sleep 0.5
play :E4, amp: s #5
sleep 0.5
play :D4, amp: s #5
sleep 1.5
play :C4, amp: s #5
sleep 0.5
play :A4, amp: s #5
sleep 0.5
s = s-0.25
print "s"

sample :glitch_bass_g
sleep 2
#Second Song

intro = "C:/Users/amalia_perez/Desktop/Second song/intro.wav"
snap = "C:/Users/amalia_perez/Desktop/Second song/snap1.wav"
clap = "C:/Users/amalia_perez/Desktop/Second song/Clap sound effect.wav"

print sample_duration intro
print sample_duration :drum_bass_hard

define :chords do |n1, n2, n3|
  2.times do
    play n1, amp: 0.5
    play n2, amp: 0.5
    play n3, amp: 0.5
    ##| play n4
    sleep 1.5
  end
  
  play n1
  play n2
  play n3
  sleep 1
end

define :triplets do |n1, n2, n3|
  play n1
  sleep 0.5
  play n2
  sleep 0.5
  play n3
  sleep 1
end

define :sevenths do |n1, n2|
  3.times do
    play n1
    sleep 0.5
  end
  play n2
  sleep 0.5
end

define :chorus do
  C = 3
  sleep 1.5
  play :E4 #5
  sleep 0.5
  play :A4 #5
  play :A3 #4
  sleep 1
  play :G4 #5
  sleep 0.5
  play :E4 #5
  sleep 0.5
  
  play :A4 #5
  play :A3 #4
  sleep 2
  play :E4 #5
  play :E3 #4
  sleep 2
  
  play :D4 #5
  play :D3 #4
  sleep 2
  play :C4 #5
  play 0.5
  play :D4 #5
  play 0.5
  play :E4 #5
  sleep 1
  
  play :E4 #5
  sleep 0.5
  play :E4 #5
  sleep 0.5
  play :D4 #5
  sleep 0.5
  play :C4 #5
  sleep 0.5
  triplets :D4, :C4, :C4
  #5,5,5
  
  play :C4 #5
  sleep 1
  play :E4 #5
  sleep 0.5
  play :A4 #5
  play :A3 #4
  sleep 1.5
  play :G4 #5
  sleep 0.5
  play :E4 #5
  sleep 0.5
  
  play :A4 #5
  play :A3 #4
  sleep 1.5
  play :E4 #5
  sleep 0.5
  play :D4 #5
  sleep 0.5
  play :C4 #5
  sleep 0.5
  play :A3 #4
  sleep 1
  
  play :A3 #4
  sleep 2
  play :C4 #5
  sleep 0.5
  play :D4 #5
  sleep 0.5
  play :E4 #5
  sleep 1
  
  play :E4 #5
  sleep 1
  play :G4 #5
  sleep 0.5
  play :E4 #5
  sleep 0.5
  triplets :D4, :C4, :C4
  #5,5,5
  
  play :C4 #5
  sleep 2
  play :A4 #5
  sleep 1
  play :G4 #5
  sleep 1
  play :G4 #5
  sleep 0.5
  play :A4 #5
  sleep 0.5
  
  play :C5 #6
  play :C4 #5
  sleep 2
  play :A4 #5
  play :A3 #4
  sleep 2
  
  play :E5 #6
  play :E4 #5
  sleep 4.5
  
  play :E5 #6
  play :E4 #5
  sleep 0.5
  
  play :D5 #6
  play :D4 #5
  sleep 0.5
  
  play :C5 #6
  play :C4 #5
  sleep 0.5
  
  play :D5 #6
  play :D4 #5
  sleep 0.5
  
  play :C5 #6
  play :C4 #5
  sleep 0.5
  
  play :C5 #6
  play :C4 #5
  sleep 3
  
  play :A4 #5
  sleep 0.5
  play :G4 #5
  sleep 0.5
  play :G4 #5
  sleep 0.5
  play :E4 #5
  sleep 0.5
  
  play :A4 #5
  play :A3 #4
  sleep 1.5
  play :E4 #5
  sleep 0.5
  play :D4 #5
  sleep 0.5
  play :C4 #5
  sleep 0.5
  play :A3 #4
  sleep 1
  
  2.times do
    play :C4 #5
    sleep 0.5
    play :D4 #5
    sleep 0.5
    play :E4 #5
    sleep 0.5
    play :D4 #5
    sleep 1.5
    play :C4 #5
    sleep 0.5
    play :A4 #5
    sleep 0.5
  end
end


define :bridge do
  sevenths :E5, :G5
  sevenths :D5, :E5
  
  sevenths :C5, :D5
  play :B4
  sleep 0.5
  play :C5
  sleep 0.5
  play :A4
  sleep 0.5
  play :G4
  sleep 0.5
  
  play :A4
  sleep 4
end

use_bpm 140

live_loop :intro do
  sample intro
  stop
end
sleep 16

sample :bd_pure, amp: 2
sleep 1.5

#measure 1
triplets :C5, :B4, :A4

use_synth :dsaw


live_loop :drum do
  sample :drum_bass_hard, amp: 0.5
  sleep 1
  ##| if c = 5
  ##|   stop
  ##| end
end

time = [2, 4, 3, 2.5]
t = 0
live_loop :samples do
  4.times do
    sample [snap, :ambi_choir, clap].choose
    sleep time[t]
    #sleep 1.5
    t = t+1
    print t
  end
  t = 0
end

live_loop :melody do
  a = [ :A4, :C5, :E5]
  a = a
  if c = 1
    print "a"
    4.times do
      chords :D4, :F4, :A4
      print "end"
      chords :G4, :B4, :D4
      print "end"
      chords :C4, :E4, :G4
      print "end"
      2.times do
        play a
        sleep 1
        play :C5
        sleep 1
      end
    end
  end
  if c = 2
    print "b"
    chords :D4, :F4, :A4
    chords :D4, :F4, :Ab4
    chords :C4, :E4, :G4
    2.times do
      play a
      sleep 1
      play :C5
      sleep 1
    end
    chords :D4, :F4, :A4
    chords :Ds4, :Fs4, :A4
    chords :G4, :A4, :D5
  end
  if c = 3
    print "c"
    play :G4
    play :B4
    play :D4
    sleep 4
    4.times do
      chords :A4, :C5, :E5
      chords :D4, :Fs4, :A4
      chords :F4, :A4, :C4
      chords :C4, :E4, :G4
    end
  end
  if c = 4
    print "d"
    sleep 32
    chords :A4, :C5, :E5
    chords :D4, :Fs4, :A4
    chords :F4, :A4, :C4
    chords :C4, :E4, :G4
  end
  if c = 5
    stop
  end
end

#measure 2
print "2"
play :C5
sleep 1.5
play :D4
sleep 0.5
play :D4
play :D4
sleep 2


#measure 3
print "3"
sleep 2
triplets :A4, :B4, :A4

#measure 4
print "4"
play :B4
sleep 0.5
play :E4
sleep 1
play :E4
sleep 1
play :D4
sleep 1
play :E4
sleep 0.5

#measure 5
print "5"
play :E4
sleep 2
triplets :C5, :B4, :A4

#measure 6
print "6"
play :C5
sleep 1.5
play :D4
sleep 0.5
play :D4
sleep 2

#measure 7
print "7"
play :C5
sleep 0.5
play :B4
sleep 1
play :A4
sleep 1
play :G4
sleep 0.5
play :E4
sleep 0.5

#measer 8
play :E4
sleep 4

#measure 9
print "9"
sleep 2
triplets :C5, :D5, :E5

#measure 10
play :D5
sleep 1.5
play :A4
sleep 0.5
play :A4
sleep 2

#measure 11
print "11"
sleep 2
triplets :B4, :C5, :D5

#measure 12
play :D5
sleep 0.5
play :C5
sleep 0.5
play :G4
sleep 3

#measure 13
print "13"
sleep 1
play :A4
sleep 0.5
play :B4
sleep 0.5
play :C5
sleep 0.5
play :B4
sleep 0.5
play :A4
sleep 0.5
play :C5
sleep 0.5

#measure 14
play :C5
sleep 1
play :G4
sleep 0.5
play :A4
sleep 0.5
play :B4
sleep 0.5
play :A4
sleep 0.5
play :G4
sleep 0.5
play :B4
sleep 0.5

#measure 15
print "15"
play :B4
sleep 1
play :G4
sleep 0.5
play :A4
sleep 0.5
triplets :B4, :A4, :G4

#measure 16
play :G4
sleep 0.5
play :B4
sleep 0.5
play :E4
sleep 3

#prechorus
sleep 1.5
play :A4
sleep 0.5
triplets :C5, :D5, :E5

c=2

play :D5
sleep 1.5
play :A4
sleep 0.5
play :A4
sleep 2

sleep 2
triplets :B4, :C5, :D5

play :D5
sleep 0.5
play :C5
sleep 0.5
play :G4
sleep 3

sleep 1.5
play :A4
sleep 0.5
triplets :C5, :B4, :A4

play :C5
sleep 2
triplets :C5, :B4, :A4

play :C5
sleep 2
triplets :A4, :B4, :C5

play :C5
sleep 2
play :G5
play :G4
sleep 2

c=3

chorus

c = 4

triplets :E5, :D5, :C5
play :C5
sleep 2.5

bridge
play :A4
sleep 4

bridge

play :A5
sleep 1
play :E5
sleep 1
play :C5
sleep 0.5
play :E4
sleep 0.5
play :G4
sleep 0.25
play :A4
sleep 0.25
play :C5
sleep 0.25
play :D5
sleep 0.25

bridge

play :A4
sleep 1
play :C4
sleep 0.25
play :D4
sleep 0.25
play :E4
sleep 0.25
play :G4
sleep 0.25
play :A4
sleep 0.25
play :C5
sleep 0.25

bridge

c=3

chorus

3.times do
  s = 0.75
  play :C4, amp: s #5
  sleep 0.5
  play :D4, amp: s #5
  sleep 0.5
  play :E4, amp: s #5
  sleep 0.5
  play :D4, amp: s #5
  sleep 1.5
  play :C4, amp: s #5
  sleep 0.5
  play :A4, amp: s #5
  sleep 0.5
  s = s-0.25
  print "s"
end

c = 5
