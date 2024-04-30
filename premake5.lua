project "GLM"
	kind "SharedItems"
	language "C++"

	files
	{
        "glm/**.hpp",
        "glm/**.inl"
	}


	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"