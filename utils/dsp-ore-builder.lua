local LDA = require("__LDA-LIB__/init")
local dspOre = {}

--[[
  Helper temporário para Factorio 2.0+ / 2.1+:
  No Factorio 2.0+, `ItemPrototype::fuel_category` (string única) foi removido
  em favor de `ItemPrototype::fuel_categories` (tabela/array de strings).
  Enquanto a LDA-LIB não lança a correção em createOre, este helper
  chama LDA.createOre e normaliza o protótipo de item gerado.
]]

function dspOre.createOre(name, stack_size, fuel_category, fuel_value, order)
    local prototypes = LDA.createOre(name, stack_size, fuel_category, fuel_value, order)
    
    for _, proto in ipairs(prototypes) do
        if proto.type == "item" then
            if proto.fuel_category ~= nil then
                local cat = proto.fuel_category
                proto.fuel_category = nil
                proto.fuel_categories = {cat}
            end
        end
    end
    
    return prototypes
end

return dspOre
