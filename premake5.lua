workspace "HelloWorld"
    configurations { "Debug", "Realease" }

project "HelloWorld"
    location "HelloWorld"
    kind "ConsoleApp"
    language "C++"
    targetdir "bin/%{cfg.buildcfg}"

    files { "HelloWorld/src/**.h", "HelloWorld/src/**.cpp" }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "on"
        
    filter "configurations:Debug"
        defines { "NDEBUG" }
        optimize "on"
