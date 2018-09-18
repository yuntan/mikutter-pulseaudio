# -*- coding: utf-8 -*-
# paplayコマンドで音を鳴らす

Plugin.create :pulseaudio do

  paplay_exist = command_exist?('paplay')

  defsound :pulseaudio, 'PulseAudio' do |filename|
    FileTest.exist?(filename) && paplay_exist or next
    bg_system('paplay', filename)
  end
end
