workspace "glad"
    configurations { "Debug", "Release" }

project "glad"
    kind "StaticLib"
    language "C"
    targetdir "bin/%{cfg.buildcfg}"

    includedirs { "include" }
    files { "src/gl.c" }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"