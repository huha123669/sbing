-- 1. 预设白名单（同上，可直接替换）
local whitelist = {
    "YourUsername1",
    "TrustedFriend1",
    "AdminAccount001"
}

-- 2. 白名单校验函数（同上）
local function isWhitelisted(username)
    for _, whitelistedName in ipairs(whitelist) do
        if username == whitelistedName then
            return true
        end
    end
    return false
end

-- 3. 生成未授权提示UI（Roblox GUI创建）
local function createDeniedUI(player)
    local playerGui = player:WaitForChild("PlayerGui")
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "WhitelistDeniedUI"
    screenGui.Parent = playerGui

    -- 黑色半透明背景框
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 400, 0, 200)
    frame.Position = UDim2.new(0.5, -200, 0.5, -100)
    frame.BackgroundColor3 = Color3.new(0, 0, 0)
    frame.BackgroundTransparency = 0.5
    frame.BorderSizePixel = 2
    frame.BorderColor3 = Color3.new(1, 0, 0)
    frame.Parent = screenGui

    -- 提示文字
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(0.9, 0, 0.8, 0)
    textLabel.Position = UDim2.new(0.05, 0, 0.1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = "❌ 未授权访问\n\n你的用户名不在白名单内\n请联系管理员获取权限"
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.TextSize = 22
    textLabel.TextWrapped = true
    textLabel.Parent = frame
end

-- 4. 玩家加入时触发（校验+UI提示）
game.Players.PlayerAdded:Connect(function(player)
    local playerName = player.Name
    if isWhitelisted(playerName) then
        print("[白名单] " .. playerName .. " 授权成功")
        -- 启用核心功能（示例：加载你的主脚本）
        -- loadstring(game:HttpGet("你的核心功能链接"))()  -- 若需加载外部功能
    else
        print("[白名单] " .. playerName .. " 未授权")
        createDeniedUI(player)  -- 显示拒绝访问UI
        -- 可选：5秒后踢出
        -- wait(5)
        -- player:Kick("未授权访问")
    end
end)
