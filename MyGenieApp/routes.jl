using Genie
import Genie.Router:route 
import Genie.Renderer.Json:json
import Base.convert
# import Genie.Router: params




# Genie.config.run_as_server = true

convert(::Type{Int}, s::AbstractString) = parse(Int, s)

route("/sum") do
  (:total =>parse(Int, get(params(), :x, "0")) + parse(Int, get(params(), :y, "0")) + parse(Int, get(params(), :z, "0")))|>json
end
