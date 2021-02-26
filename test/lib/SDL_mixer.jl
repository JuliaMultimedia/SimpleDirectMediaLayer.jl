using SimpleDirectMediaLayer.LibSDL2
using Test

SDL2_pkg_dir = joinpath(@__DIR__, "..", "..")
audio_example_assets_dir = joinpath(SDL2_pkg_dir, "examples", "audio_example")

# check that an audio device if available
SDL_Init(SDL_INIT_VIDEO)
device = Mix_OpenAudio(22050, MIX_DEFAULT_FORMAT, 2, 1024)

if device == 0
    Mix_CloseAudio()
    SDL_Quit()

    @testset "Init+Quit" begin
        # Test that you can init and quit SDL_mixer multiple times correctly.
        @test SDL_Init(SDL_INIT_VIDEO) == 0
        @test Mix_OpenAudio(22050, MIX_DEFAULT_FORMAT, 2, 1024) == 0
        Mix_CloseAudio()
        SDL_Quit()

        @test SDL_Init(SDL_INIT_VIDEO) == 0
        @test Mix_OpenAudio(22050, MIX_DEFAULT_FORMAT, 2, 1024) == 0
        Mix_CloseAudio()
        SDL_Quit()
    end

    @testset "Sounds" begin
        SDL_Init(0)
        Mix_OpenAudio(22050, MIX_DEFAULT_FORMAT, 2, 1024)

        med = Mix_LoadWAV_RW(SDL_RWFromFile(joinpath(audio_example_assets_dir, "medium.wav"), "rb"), 1)
        @test med != C_NULL
        @test Mix_PlayChannelTimed(-1, med, 0, 500) != -1
        # Test that can play multiple times successfully
        # (Note that if a sound overlaps with a previous sound, it will play on a
        # different channel. The return value is which channel it plays on.)
        @test Mix_PlayChannelTimed(-1, med, 0, 500) != -1
        @test Mix_PlayChannelTimed(-1, med, 0, 500) != -1

        # Test different overlapping sounds
        scratch = Mix_LoadWAV_RW(SDL_RWFromFile(joinpath(audio_example_assets_dir, "scratch.wav"), "rb"), 1)
        @test scratch != C_NULL
        @test Mix_PlayChannelTimed(-1, scratch, 0, 500) != -1
        @test Mix_PlayChannelTimed(-1, med, 0, 500) != -1
        @test Mix_PlayChannelTimed(-1, scratch, 0, 500) != -1

        Mix_CloseAudio()
        SDL_Quit()
    end

    @testset "Music" begin
        SDL_Init(0)
        Mix_OpenAudio(22050, MIX_DEFAULT_FORMAT, 2, 1024)

        # Load the music
        music = Mix_LoadMUS(joinpath(audio_example_assets_dir, "beat.wav"))
        @test music != C_NULL

        # Test playing/pausing the music
        @test Mix_PlayMusic(music, -1) == 0
        Mix_PauseMusic()
        Mix_ResumeMusic()
        @test Mix_HaltMusic() == 0


        # Test noops if no music is playing.
        @test Mix_HaltMusic() == 0
        Mix_PauseMusic()
        Mix_ResumeMusic()

        # Test playing multiple times
        @test Mix_PlayMusic(music, -1) == 0
        @test Mix_PlayMusic(music, -1) == 0

        Mix_CloseAudio()
        SDL_Quit()
    end

end
SDL_Quit()
