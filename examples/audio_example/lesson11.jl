# This file transformed from Lazy Foo' Productions "Playing Sounds" tutorial:
# http://lazyfoo.net/SDL_tutorials/lesson11/index.php

using SimpleDirectMediaLayer
using SimpleDirectMediaLayer.LibSDL2
const SDL2 = SimpleDirectMediaLayer

SDL2.init()

#Load the music
aud_files = dirname(@__FILE__)
music = Mix_LoadMUS("$aud_files/beat.wav")

if (music == C_NULL)
    error("$aud_files/beat.wav not found.")
end

# scratch = Mix_LoadWAV_RW("$aud_files/scratch.wav")
# high = Mix_LoadWAV_RW("$aud_files/high.wav")
# med = Mix_LoadWAV("$aud_files/medium.wav")
# low = Mix_LoadWAV("$aud_files/low.wav")
# Mix_PlayChannelTimed( Int32(-1), med, Int32(0) )

Mix_PlayMusic(music, -1)
sleep(1)
Mix_PauseMusic()
sleep(1)
Mix_ResumeMusic()
sleep(1)
Mix_HaltMusic()
