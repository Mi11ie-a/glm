project "GLM"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "glm/**.hpp",
        "glm/**.inl"
	}

    excludes {
        "glm/gtx/dual_quaternion.hpp"
    }

    defines {
        "GLM_ENABLE_EXPERIMENTAL"
    }

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"