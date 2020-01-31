# Welcome to Sonic Pi v3.1
vocals = "C:/Users/amalia_perez/Desktop/Challenges/The Story/vocaltrythree.wav"
intro = "C:/Users/amalia_perez/Desktop/Challenges/The Story/thestoryintroguitar.wav"
vocalschorus = "C:/Users/amalia_perez/Desktop/Challenges/The Story/vocalschorus.wav"


print sample_duration intro
print sample_duration vocals
print sample_duration vocalschorus
##| use_bpm 142
use_bpm 106.5

use_synth :piano

sample vocals, amp: 2, decay: 3
sleep 19.5



x = 1
live_loop :chord do
  12.times do
    play :E3, sustain: 2, release: 1, amp: x
    play :G3, sustain: 2, release: 1, amp: x
    play :C4, sustain: 2, release: 1, amp: x
    sleep 2
    x= x+0.1
  end
  stop
end

#end part
live_loop :chords do
  sleep 24
  12.times do
    play :E3, sustain: 2, release: 1, amp: x
    play :G3, sustain: 2, release: 1, amp: x
    play :C4, sustain: 2, release: 1, amp: x
    sleep 2
    x= x-0.15
  end
  stop
end

sleep 8
2.times do
  play :C5
  sleep 1
  play :B4
  sleep 1
  3.times do
    play :A4
    sleep 1
    play :B4
    sleep 1
  end
  play :A4
  sleep 1
  play :G4
  sleep 1
  play :E4, attack: 2, sustain: 2
  sleep 1
  play :E4, attack: 2, sustain: 2
  sleep 2
end
#end part

z = 1
y = 4.5
live_loop :intro do
  15.times do
    print z
    sample intro, amp: 4, rate: 0.75
    sleep 5
    z = z+1
  end
  8.times do
    print z
    sample intro, amp: y, rate: 0.75
    y = y-0.5
    print y
    sleep 5
    z = z+1
  end
  stop
end

play :A4, amp: 0.5, attack: 1 #, sustain: 0.5
2.times do
  sleep 0.5
  play :F3, amp: 0.5, attack: 0.5, sustain: 1, decay: 0.5
  play :A3, attack: 0.5, sustain: 1, decay: 0.5
  play :C4, attack: 0.5, sustain: 1, decay: 0.5
  play :C5
  sleep 0.5
  play :C5
  sleep 0.5
  play :C5
  sleep 0.5
  play :B4
  sleep 0.5
  play :A4
  sleep 0.5
  play :G4
  sleep 0.5
  play :E3, attack: 0.5, sustain: 1, decay: 0.5
  play :G3, attack: 0.5, sustain: 1, decay: 0.5
  play :C4, attack: 0.5, sustain: 1, decay: 0.5
  play :E4, attack: 1, sustain: 1, decay: 1
  sleep 0.5
  play :E3, attack: 0.5, sustain: 1, decay: 0.5
  play :G3, attack: 0.5, sustain: 1, decay: 0.5
  play :C4, attack: 0.5, sustain: 1, decay: 0.5
  sleep 1
  play :E4
  sleep 0.5
  play :G4
  sleep 0.5
  play :E4
  sleep 0.5
  play :G4
  sleep 0.5
  play :G4
  sleep 0.5
  play :B4
  sleep 0.5
end

play :A4
sleep 4
sample vocalschorus, amp: 4
sleep 65


live_loop :melody do
  3.times do
    play :E3, attack: 0.5, sustain: 1, decay: 0.5, amp: 0.5
    play :G3, attack: 0.5, sustain: 1, decay: 0.5
    play :C4, attack: 0.5, sustain: 1, decay: 0.5
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
    play :F3, attack: 0.5, sustain: 1, decay: 0.5
    play :A3, attack: 0.5, sustain: 1, decay: 0.5
    play :C4, attack: 0.5, sustain: 1, decay: 0.5
    play :F4
    sleep 0.5
    play :A4
    sleep 0.5
    play :C5, sustain: 1
    sleep 1
  end
  stop
end
