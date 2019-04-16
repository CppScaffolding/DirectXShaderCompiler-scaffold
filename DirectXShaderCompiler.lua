-- scaffold geniefile for DirectXShaderCompiler

DirectXShaderCompiler_script = path.getabsolute(path.getdirectory(_SCRIPT))
DirectXShaderCompiler_root = path.join(DirectXShaderCompiler_script, "DirectXShaderCompiler")

DirectXShaderCompiler_includedirs = {
	path.join(DirectXShaderCompiler_script, "config"),
	DirectXShaderCompiler_root,
}

DirectXShaderCompiler_libdirs = {}
DirectXShaderCompiler_links = {}
DirectXShaderCompiler_defines = {}

----
return {
	_add_includedirs = function()
		includedirs { DirectXShaderCompiler_includedirs }
	end,

	_add_defines = function()
		defines { DirectXShaderCompiler_defines }
	end,

	_add_libdirs = function()
		libdirs { DirectXShaderCompiler_libdirs }
	end,

	_add_external_links = function()
		links { DirectXShaderCompiler_links }
	end,

	_add_self_links = function()
		links { "DirectXShaderCompiler" }
	end,

	_create_projects = function()

project "DirectXShaderCompiler"
	kind "StaticLib"
	language "C++"
	flags {}

	includedirs {
		DirectXShaderCompiler_includedirs,
	}

	defines {}

	files {
		path.join(DirectXShaderCompiler_script, "config", "**.h"),
		path.join(DirectXShaderCompiler_root, "**.h"),
		path.join(DirectXShaderCompiler_root, "**.cpp"),
	}

end, -- _create_projects()
}

---
