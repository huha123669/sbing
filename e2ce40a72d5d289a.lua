local genv = getgenv()

_G.FastAttack = true

game:GetService('VirtualInputManager')
game:GetService('CollectionService')

local _call7 = game:GetService('ReplicatedStorage')

game:GetService('TeleportService')

local _call11 = game:GetService('RunService')
local _LocalPlayer14 = game:GetService('Players').LocalPlayer
local _call16 = _call7:WaitForChild('Remotes')

_call16:WaitForChild('Validator')
_call16:WaitForChild('CommF_')
_call16:WaitForChild('CommE')
workspace:WaitForChild('ChestModels')

local _call26 = workspace:WaitForChild('_WorldOrigin')

workspace:WaitForChild('Characters')

local _call30 = workspace:WaitForChild('Enemies')

workspace:WaitForChild('Map')
_call26:WaitForChild('EnemySpawns')
_call26:WaitForChild('Locations')

local _ = _call11.RenderStepped
local _ = _call11.Heartbeat
local _ = _call11.Stepped
local _call43 = _call7:WaitForChild('Modules'):WaitForChild('Net')
local _ = genv.rz_FastAttack
local _call46 = _call43:WaitForChild('RE/RegisterAttack')
local _call48 = _call43:WaitForChild('RE/RegisterHit')

task.spawn(function(_51, _51_2, _51_3, _51_4)
    task.wait(1e-27)

    local _Character52 = _LocalPlayer14.Character

    _Character52:FindFirstChild('Humanoid')

    local _ = _Character52.Humanoid.Health

    error('line 1: attempt to compare number < table')
end)

genv.rz_FastAttack = {
    BladeHits = function(_57, _57_2, _57_3)
        local _Character58 = _LocalPlayer14.Character

        _Character58:FindFirstChild('Humanoid')

        local _ = _Character58.Humanoid.Health

        error('line 1: attempt to compare number < table')
    end,
    attackMobs = true,
    attackPlayers = true,
    Distance = 10000,
    AttackNearest = function(_63, _63_2, _63_3, _63_4, _63_5, _63_6)
        _call30:GetChildren()(nil, nil)
        error("line 1: attempt to index nil with 'FindFirstChild'")
    end,
    Attack = function(_67, _67_2, _67_3, _67_4, _67_5, _67_6, _67_7)
        local _ = #_67_3

        _call46:FireServer(1e-27)
        _call48:FireServer(_67_2, _67_3)
    end,
}
