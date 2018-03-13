# This file transformed from Lazy Foo' Productions "Playing Sounds" tutorial:
# http://lazyfoo.net/SDL_tutorials/lesson11/index.php

cd(joinpath(Pkg.dir(),"SDL2/src/"))

using SDL2

SDL2.init()

#Load the music
aud_files = "examples/audio_example/"
music = SDL2.Mix_LoadMUS( "$aud_files/beat.wav" );
if (music == C_NULL)
    #error
end

scratch = SDL2.Mix_LoadWAV( "$aud_files/scratch.wav" );
high = SDL2.Mix_LoadWAV( "$aud_files/high.wav" );
med = SDL2.Mix_LoadWAV( "$aud_files/medium.wav" );
low = SDL2.Mix_LoadWAV( "$aud_files/low.wav" );


SDL2.Mix_PlayChannel( Int32(-1), med, Int32(0) )
SDL2.Mix_PlayMusic( music, Int32(-1) )
sleep(1)
SDL2.Mix_PauseMusic()
sleep(1)
SDL2.Mix_ResumeMusic()

sleep(1)
SDL2.Mix_HaltMusic()
