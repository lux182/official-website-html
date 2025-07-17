# 优品电商产品图片收集脚本
# 使用方法: 在PowerShell中运行此脚本

Write-Host🚀 优品电商产品图片收集工具 -ForegroundColor Green
Write-Host "===================================== -ForegroundColor Green

# 创建目录结构
function Create-Directories [object Object]    Write-Host "📁 创建目录结构... -ForegroundColor Yellow
    
    $directories = @(
     appliances/kitchen",
        appliances/living", 
   appliances/personal",
      clothing/men",
        clothing/women",
      clothing/accessories,
     sports/wear,
       sports/equipment,
    sports/accessories",
       camping/tents",
       camping/cookware",
       camping/lighting"
    )
    
    foreach ($dir in $directories)[object Object]
        $path = images/products/$dir"
        if (!(Test-Path $path)) [object Object]          New-Item -ItemType Directory -Path $path -Force | Out-Null
            Write-Host✅创建目录: $path -ForegroundColor Green
        } else {
            Write-Host📁 目录已存在: $path -ForegroundColor Blue
        }
    }
}

# 显示收集任务
function Show-CollectionTasks [object Object]
    Write-Host `n📋 今日收集任务 (高优先级) -ForegroundColor Cyan
    Write-Host "================================ -ForegroundColor Cyan
    
    $tasks = @(
        @{Category=厨房电器"; Products=@("德龙咖啡机, 松下电饭煲, 飞利浦榨汁机,美的面包机", 苏泊尔空气炸锅"); Time=1小时        @{Category=男装; Products=@(优衣库休闲衬衫, 李维斯牛仔裤", 耐克运动裤,北面夹克, 无印良品毛衣"); Time=1小时        @{Category=运动服饰; Products=@(阿迪达斯运动鞋",耐克运动内衣,安德玛运动裤, "北面运动外套",耐克运动袜"); Time=1小时        @{Category=帐篷用品; Products=@("牧高笛帐篷, 探路者睡袋",迪卡侬防潮垫", 山力士帐篷灯", 牧高笛帐篷配件"); Time=1小时"}
    )
    
    foreach ($task in $tasks)[object Object]        Write-Host "`n🎯 $($task.Category) ($($task.Time)) -ForegroundColor Yellow
        foreach ($product in $task.Products) {
            Write-Host "  • $product -ForegroundColor White
        }
    }
}

# 显示搜索链接
function Show-SearchLinks [object Object]
    Write-Host "`n🔍 快速搜索链接 -ForegroundColor Cyan
    Write-Host======================== -ForegroundColor Cyan
    
    $searchLinks = @(
        @{Product="德龙咖啡机"; URL=https://search.jd.com/Search?keyword=德龙咖啡机"},
        @{Product="松下电饭煲"; URL=https://search.jd.com/Search?keyword=松下电饭煲"},
        @{Product="飞利浦榨汁机"; URL=https://search.jd.com/Search?keyword=飞利浦榨汁机"},
        @{Product="优衣库衬衫"; URL=https://search.jd.com/Search?keyword=优衣库衬衫"},
        @{Product="李维斯牛仔裤"; URL=https://search.jd.com/Search?keyword=李维斯牛仔裤"},
        @{Product="阿迪达斯运动鞋"; URL=https://search.jd.com/Search?keyword=阿迪达斯运动鞋"},
        @{Product="牧高笛帐篷"; URL=https://search.jd.com/Search?keyword=牧高笛帐篷"}
    )
    
    foreach ($link in $searchLinks)[object Object]        Write-Host "🔗 $($link.Product): $($link.URL) -ForegroundColor Blue
    }
}

# 显示图片要求
function Show-ImageRequirements [object Object]
    Write-Host "`n📋 图片质量要求 -ForegroundColor Cyan
    Write-Host======================== -ForegroundColor Cyan
    
    $requirements = @(
       分辨率: 800x80px 或更高,
      文件大小: 小于50KB,
   背景: 白色或透明",
     格式: JPG (主图) / PNG (需要透明背景),
       风格: 日系清新，简约自然,
    角度: 产品正面展示,
      清晰度: 无模糊，细节清晰"
    )
    
    foreach ($req in $requirements)[object Object]        Write-Host "✅ $req -ForegroundColor Green
    }
}

# 显示命名规范
function Show-NamingConvention [object Object]
    Write-Host`n📝 命名规范 -ForegroundColor Cyan
    Write-Host======================== -ForegroundColor Cyan
    
    $examples = @(
        @{Original=德龙咖啡机; Named="coffee_machine_delong_01.jpg"},
        @{Original="松下电饭煲"; Named="rice_cooker_panasonic_01.jpg"},
        @{Original=优衣库衬衫"; Named="shirt_uniqlo_01.jpg"},
        @{Original=阿迪达斯运动鞋; Named="shoes_adidas_01.jpg"},
        @{Original="牧高笛帐篷; Named="tent_mobigarden_01.jpg"}
    )
    
    foreach ($example in $examples)[object Object]        Write-Host "📦 $($example.Original) → $($example.Named) -ForegroundColor White
    }
}

# 显示收集步骤
function Show-CollectionSteps [object Object]
    Write-Host`n🔄 收集步骤 -ForegroundColor Cyan
    Write-Host======================== -ForegroundColor Cyan
    
    $steps = @(
        1. 打开京东商城或天猫商城",
    2. 搜索产品关键词",
    3. 选择高质量主图,
    4. 右键另存为图片",
     5.重命名为规范格式,        6. 使用TinyPNG压缩,
    7. 保存到对应目录",
        8. 更新进度清单"
    )
    
    foreach ($step in $steps)[object Object]        Write-Host $step -ForegroundColor White
    }
}

# 显示工具链接
function Show-ToolLinks [object Object]
    Write-Host `n🛠️ 实用工具 -ForegroundColor Cyan
    Write-Host======================== -ForegroundColor Cyan
    
    $tools = @(
        @{Name=图片压缩"; URL="https://tinypng.com"; Desc=在线压缩图片},
        @{Name=京东商城"; URL="https://www.jd.com"; Desc="高质量商品图片},
        @{Name=天猫商城"; URL=https://www.tmall.com; Desc="品牌旗舰店},
        @{Name="批量重命名"; URL=""; Desc=使用PowerShell脚本"}
    )
    
    foreach ($tool in $tools) {
        if ($tool.URL) {
            Write-Host 🔗 $($tool.Name): $($tool.URL) - $($tool.Desc) -ForegroundColor Blue
        } else {
            Write-Host 📝 $($tool.Name): $($tool.Desc) -ForegroundColor Blue
        }
    }
}

# 主函数
function Start-ImageCollection [object Object]
    Write-Host `n🎯 开始图片收集流程... -ForegroundColor Green
    
    # 创建目录
    Create-Directories
    
    # 显示任务
    Show-CollectionTasks
    
    # 显示搜索链接
    Show-SearchLinks
    
    # 显示要求
    Show-ImageRequirements
    
    # 显示命名规范
    Show-NamingConvention
    
    # 显示步骤
    Show-CollectionSteps
    
    # 显示工具
    Show-ToolLinks
    
    Write-Host `n🚀 准备就绪！开始收集第一个产品吧！ -ForegroundColor Green
    Write-Host💡 建议从德龙咖啡机开始，搜索关键词：德龙咖啡机 -ForegroundColor Yellow
    Write-Host "📁 保存到：images/products/appliances/kitchen/coffee_machine_delong_01 -ForegroundColor Yellow
}

# 运行脚本
Start-ImageCollection

# 等待用户输入
Write-Host "`n按任意键继续... -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey(NoEcho,IncludeKeyDown") 