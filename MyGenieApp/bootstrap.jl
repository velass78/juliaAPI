(pwd() != @__DIR__) && cd(@__DIR__) # allow starting app from bin/ dir

using MyGenieApp
push!(Base.modules_warned_for, Base.PkgId(MyGenieApp))
MyGenieApp.main()
