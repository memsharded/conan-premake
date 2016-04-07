#!lua

require 'conanpremake'

-- A solution contains projects, and defines the available configurations
solution "MyApplication"
   configurations { "Debug", "Release" }
   includedirs { conan_includedirs }
   libdirs { conan_libdirs }
   links { conan_libs }
   -- A project defines one build target
   project "MyApplication"
      kind "ConsoleApp"
      language "C++"
      files { "**.h", "**.cpp" }
 

      configuration "Debug"
         defines { "DEBUG" }
         flags { "Symbols" }

      configuration "Release"
         defines { "NDEBUG" }
         flags { "Optimize" }