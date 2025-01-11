local functions = require("control.functions")
local guimaker = require("gui.gui-maker")

local function crafted_item(event)
    local player = game.players[event.player_index]
    if not player then
        game.print("ERROR FATAL! REPORT TO DEVELOPER")
        return
    end

    local item_stack = event.item_stack
    if item_stack and item_stack.valid and item_stack.name == "quantum-teleporter-equipment" then
        guimaker.create_teleport_window(player)
    end
end

local function player_died_teleport(event)
    local player = game.players[event.player_index]
    if not player then
        game.print("ERROR FATAL! REPORT TO DEVELOPER")
        return
    end
    guimaker.close_teleport_window(player)
end

local function toggle_teleport_equipment(event)
    local player = game.players[event.player_index]
    local armor = player.get_inventory(defines.inventory.character_armor)[1]

    if armor and armor.valid_for_read and armor.grid then
        local grid = armor.grid
        local has_teleporter = grid.get_contents()["quantum-teleporter-equipment"]

        if has_teleporter then
            -- Equipamento foi adicionado ou ainda está presente
            if not player.gui.screen.teleport_window then
                -- Cria a janela de teleporte
                guimaker.create_teleport_window(player)
            end
        else
            -- Equipamento foi removido
            guimaker.close_teleport_window(player)
        end
    else
        -- Armadura removida, remove a janela de teleporte
        if not armor or not armor.valid_for_read then
            guimaker.close_teleport_window(player)
            return
        end
    end
end

local function check_teleport_equipment_on_respawn(event)
    local player = game.players[event.player_index]

    -- Verifica se o jogador tem uma armadura equipada
    local armor = player.get_inventory(defines.inventory.character_armor)[1]
    if not armor or not armor.valid_for_read then
        -- Sem armadura ou inválida
        guimaker.close_teleport_window(player)
        return
    end

    -- Verifica se a armadura tem o equipamento de teletransporte
    local grid = armor.grid
    if not grid then
        guimaker.close_teleport_window(player)
        return
    end

    local has_teleporter = grid.get_contents()["quantum-teleporter-equipment"]
    if has_teleporter then
        -- Reativa a janela de teletransporte
        if not player.gui.screen.teleport_window then
            guimaker.create_teleport_window(player)
        end
    end
end

-- teleport 2.0
local function teleport_cords(event)
    local player = game.players[event.player_index]
    local element = event.element

    -- Verifica se o elemento do evento é válido
    if not element or not element.valid then
        player.print("ERROR FATAL! REPORT TO DEVELOPER")
        return
    end

    if element.name == "confirm_button" then
        local teleport_window = player.gui.screen.teleport_window
        if not teleport_window then
            player.print("Erro: Janela de teletransporte não encontrada.")
            return
        end

        -- Captura a superfície selecionada no dropdown
        local surface_dropdown = teleport_window.surface_dropdown
        if not surface_dropdown then
            player.print("Erro: Dropdown de superfícies não encontrado.")
            return
        end

        local armor = player.get_inventory(defines.inventory.character_armor)[1]
        if armor and armor.valid_for_read and armor.grid then
            local grid = armor.grid
            local teleporter = grid.get_contents()["quantum-teleporter-equipment"]
            if teleporter then
                local selected_index = surface_dropdown.selected_index
                local surface_name = surface_dropdown.items[selected_index]

                -- Captura as coordenadas
                local coord_x = tonumber(teleport_window.coord_x.text) or 0
                local coord_y = tonumber(teleport_window.coord_y.text) or 0

                -- Realiza o teletransporte
                local energy_available = grid.available_in_batteries
                local energy_required = 50e6 -- Energia necessária para teletransporte
                if energy_available >= energy_required then
                    grid.drain_energy(energy_required) -- Consome energia
                    functions.teleport_to_planet_with_cords(player, surface_name, coord_x, coord_y)
                else
                    player.print("Energia insuficiente.")
                end
            else
                player.print("Equipamento de teletransporte não encontrado.")
            end
        else
            player.print("Nenhuma armadura equipada.")
        end
    end
end

-- teleport 1.0
local function teleport_planet(event)
    local player = game.players[event.player_index]
    local element = event.element
    if not element or not element.valid then
        return
    end

    if element.name == "confirm_button" then
        local surface_name = player.gui.screen.teleport_window.surface_name.text
        functions.Teleport_to_planet(player, surface_name)
    end
end

return {
    crafted_item = crafted_item,
    player_died_teleport = player_died_teleport,
    teleport_planet = teleport_planet,
    teleport_cords = teleport_cords,
    toggle_teleport_equipment = toggle_teleport_equipment,
    check_teleport_equipment_on_respawn = check_teleport_equipment_on_respawn
}
