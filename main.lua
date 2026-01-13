-- Sctx Converter By Daniil Sivi
-- WARNING! Else you user Linux, install wine
-- Tool By W1ckedOneshot

--locals
local sctx_name, lang, select_os
local lang = {
    SctxTexture = "Write name SCTX Texture: ",
    Select_System = "Your Select: "
}

--writing
io.write(lang['SctxTexture'], "") local sctx_name = io.read()
print("Select Your System:", '\n', "1. Windows", '\n', "2. Linux")
io.write(lang['Select_System'], "") local select_os = io.read()

--conditions
if select_os == "1" then
	os.execute("SctxConverter.exe decode" .. " " .. sctx_name)
    print("Done!" .. " " .. sctx_name .. " " .. "converted" )
elseif select_os == "2" then
    os.execute("wine SctxConverter.exe decode" .. " " .. sctx_name)
    print("Done!" .. " " .. sctx_name .. " " .. "converted" )
else
    print("Select System Error")
end
