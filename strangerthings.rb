# Welcome to Sonic Pi v3.1

use_bpm 160
live_loop :theme do
  use_synth :fm
  use_synth :dsaw
  play :C2
  sleep 0.5
  play :E2
  sleep 0.5
  play :G2
  sleep 0.5
  play :B2
  sleep 0.5
  play :C3
  sleep 0.5
  play :B2
  sleep 0.5
  play :G2
  sleep 0.5
  play :E2
  sleep 0.5
end

sleep 2
live_loop :bass do
  sample :bass_hit_c
  sample :bass_thick_c
end

