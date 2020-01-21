# Welcome to Sonic Pi v3.1


use_bpm 80
##| live_loop :beginning do
use_synth :piano
2.times do
  play :E3, attack: 0.5, sustain: 1, decay: 0.5
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

play :A4, sustain: 1
2.times do
  sleep 0.5
  play :F3, attack: 0.5, sustain: 1, decay: 0.5
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
