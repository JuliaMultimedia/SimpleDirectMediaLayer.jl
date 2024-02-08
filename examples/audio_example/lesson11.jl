# This file transformed from Lazy Foo' Productions "Playing Sounds" tutorial:
# http://lazyfoo.net/SDL_tutorials/lesson11/index.php

using SimpleDirectMediaLayer.LibSDL2

SDL_Init(SDL_INIT_AUDIO)

if(Mix_OpenAudio(44100, MIX_DEFAULT_FORMAT, 1, 1024) < 0)
    println("SDL_mixer could not initialize!", Mix_GetError())
end

#Load the music
aud_files = dirname(@__FILE__)
music = Mix_LoadMUS("$aud_files/beat.wav")

if (music == C_NULL)
    error("$aud_files/beat.wav not found.")
end

scratch = Mix_LoadWAV_RW(SDL_RWFromFile("$aud_files/scratch.wav", "rb"), 1)
high = Mix_LoadWAV_RW(SDL_RWFromFile("$aud_files/high.wav", "rb"), 1)
med = Mix_LoadWAV_RW(SDL_RWFromFile("$aud_files/medium.wav", "rb"), 1)
low = Mix_LoadWAV_RW(SDL_RWFromFile("$aud_files/low.wav", "rb"), 1)
Mix_PlayChannelTimed(-1, med, 0, -1)

Mix_PlayMusic(music, -1)
sleep(1)
Mix_PauseMusic()
sleep(1)
Mix_ResumeMusic()
sleep(1)
Mix_HaltMusic()
