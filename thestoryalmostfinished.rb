# Welcome to Sonic Pi v3.1
vocals = "C:/Users/amalia_perez/Desktop/vocaltrythree.wav"
intro = "C:/Users/amalia_perez/Desktop/thestoryintroguitar.wav"
vocalschorus = "C:/Users/amalia_perez/Desktop/Challenges/The Story/vocalschorus.wav"

print sample_duration intro
print sample_duration vocals
print sample_duration vocalschorus
use_bpm 65

use_synth :piano


live_loop :intro do
  sample intro, rate: 0.75, amp: 4, decay: 1
  sleep 5
end

live_loop :vocals do
  sample vocals, amp: 2
  stop
end

sleep 12
play :A4, amp: 0.5, attack: 0.5, sustain: 0.5
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

sample vocalschorus, amp: 2
sleep 38

live_loop :melody do
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
  play :A4, sustain: 1
  sleep 1
end