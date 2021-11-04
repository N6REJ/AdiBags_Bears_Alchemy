-- Q&A for how to do things from addon dev groups... --

Q: "how can you add? per character settings... "
A: in the .toc add

## SavedVariablesPerCharacter: Choose_A_Name_For_Your_Saved_Variables

then in your addon code .lua main file you can just do something along these lines
if not Choose_A_Name_For_Your_Saved_Variables then
  Choose_A_Name_For_Your_Saved_Variables = {}
end

Choose_A_Name_For_Your_Saved_Variables.SettingForSomething = "foo"

-- Like this --
