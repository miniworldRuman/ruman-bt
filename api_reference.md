# 蛋仔派对 API 参考文档

> 本文档由 eggpy 工具从 `EggyAPI.lua` 自动生成。

---

## 目录

### API 类

- **Ability**
  - [Ability](#Ability)
- **AbilityComp**
  - [AbilityComp](#AbilityComp)
- **Actor**
  - [Actor](#Actor)
- **AttrComp**
  - [AttrComp](#AttrComp)
- **BuffStateComp**
  - [BuffStateComp](#BuffStateComp)
- **Camp**
  - [Camp](#Camp)
- **Character**
  - [Character](#Character)
- **CharacterComp**
  - [CharacterComp](#CharacterComp)
- **Creature**
  - [Creature](#Creature)
- **CustomTriggerSpace**
  - [CustomTriggerSpace](#CustomTriggerSpace)
- **Damage**
  - [Damage](#Damage)
- **DebugAPI**
  - [DebugAPI](#DebugAPI)
- **DisplayComp**
  - [DisplayComp](#DisplayComp)
- **EVENT**
  - [EVENT](#EVENT)
- **Equipment**
  - [Equipment](#Equipment)
- **EquipmentComp**
  - [EquipmentComp](#EquipmentComp)
- **ExprDeviceComp**
  - [ExprDeviceComp](#ExprDeviceComp)
- **GameAPI**
  - [GameAPI](#GameAPI)
- **GlobalAPI**
  - [GlobalAPI](#GlobalAPI)
- **ItemBox**
  - [ItemBox](#ItemBox)
- **JointAssistantComp**
  - [JointAssistantComp](#JointAssistantComp)
- **JumpComp**
  - [JumpComp](#JumpComp)
- **KVBase**
  - [KVBase](#KVBase)
- **LevelComp**
  - [LevelComp](#LevelComp)
- **LifeComp**
  - [LifeComp](#LifeComp)
- **LifeEntity**
  - [LifeEntity](#LifeEntity)
- **LiftComp**
  - [LiftComp](#LiftComp)
- **LiftedComp**
  - [LiftedComp](#LiftedComp)
- **LuaAPI**
  - [LuaAPI](#LuaAPI)
- **Modifier**
  - [Modifier](#Modifier)
- **ModifierComp**
  - [ModifierComp](#ModifierComp)
- **MoveStatusComp**
  - [MoveStatusComp](#MoveStatusComp)
- **Obstacle**
  - [Obstacle](#Obstacle)
- **OwnerComp**
  - [OwnerComp](#OwnerComp)
- **Quaternion**
  - [Quaternion](#Quaternion)
- **Role**
  - [Role](#Role)
- **RollComp**
  - [RollComp](#RollComp)
- **RushComp**
  - [RushComp](#RushComp)
- **SceneUI**
  - [SceneUI](#SceneUI)
- **Timer**
  - [Timer](#Timer)
- **TriggerSpace**
  - [TriggerSpace](#TriggerSpace)
- **TriggerSystem**
  - [TriggerSystem](#TriggerSystem)
- **Unit**
  - [Unit](#Unit)
- **UnitInteractVolumeComp**
  - [UnitInteractVolumeComp](#UnitInteractVolumeComp)
- **Vector3**
  - [Vector3](#Vector3)
- **VehicleComp**
  - [VehicleComp](#VehicleComp)
- **VirtualEquipment**
  - [VirtualEquipment](#VirtualEquipment)
- **dict**
  - [dict](#dict)
- **math**
  - [math](#math)

### 枚举

- [Enums.AIBasicCommand](#Enums_AIBasicCommand)
- [Enums.AbilityLimitation](#Enums_AbilityLimitation)
- [Enums.AbilityPointerType](#Enums_AbilityPointerType)
- [Enums.AbilityTargetType](#Enums_AbilityTargetType)
- [Enums.ArchiveType](#Enums_ArchiveType)
- [Enums.AxisType](#Enums_AxisType)
- [Enums.BindType](#Enums_BindType)
- [Enums.BuffState](#Enums_BuffState)
- [Enums.CameraBindMode](#Enums_CameraBindMode)
- [Enums.CameraDragType](#Enums_CameraDragType)
- [Enums.CameraProjectionType](#Enums_CameraProjectionType)
- [Enums.CameraPropertyType](#Enums_CameraPropertyType)
- [Enums.CameraShakeCurve](#Enums_CameraShakeCurve)
- [Enums.CameraShakeType](#Enums_CameraShakeType)
- [Enums.CampRelationType](#Enums_CampRelationType)
- [Enums.CollisionLimitType](#Enums_CollisionLimitType)
- [Enums.ColorPaintAreaType](#Enums_ColorPaintAreaType)
- [Enums.CommonUnitType](#Enums_CommonUnitType)
- [Enums.CoordinateSystemType](#Enums_CoordinateSystemType)
- [Enums.DirectionType](#Enums_DirectionType)
- [Enums.DropType](#Enums_DropType)
- [Enums.EquipmentSlotType](#Enums_EquipmentSlotType)
- [Enums.EquipmentType](#Enums_EquipmentType)
- [Enums.FixedRoundType](#Enums_FixedRoundType)
- [Enums.FriendshipType](#Enums_FriendshipType)
- [Enums.GameResult](#Enums_GameResult)
- [Enums.HpBarDisplayMode](#Enums_HpBarDisplayMode)
- [Enums.InteractBtnType](#Enums_InteractBtnType)
- [Enums.JointAssistantKey](#Enums_JointAssistantKey)
- [Enums.JointAssistantProperty](#Enums_JointAssistantProperty)
- [Enums.ModelSocket](#Enums_ModelSocket)
- [Enums.MoveMode](#Enums_MoveMode)
- [Enums.NavMode](#Enums_NavMode)
- [Enums.OrientationType](#Enums_OrientationType)
- [Enums.PatrolType](#Enums_PatrolType)
- [Enums.PlaneType](#Enums_PlaneType)
- [Enums.QuestStatus](#Enums_QuestStatus)
- [Enums.RigidBodyType](#Enums_RigidBodyType)
- [Enums.SearchEnemyPriority](#Enums_SearchEnemyPriority)
- [Enums.SkyBoxGradualType](#Enums_SkyBoxGradualType)
- [Enums.TriggerSpaceEventType](#Enums_TriggerSpaceEventType)
- [Enums.UnitType](#Enums_UnitType)
- [Enums.ValueType](#Enums_ValueType)
- [Enums.WindFieldShapeType](#Enums_WindFieldShapeType)

### 类型别名

- `AbilityAnchorID` = `string 技能锚点ID`
- `AbilitySlot` = `integer 技能槽位`
- `AnimKey` = `integer 动画编号`
- `BattleShopKey` = `integer 商店`
- `CharacterKey` = `LifeEntityKey 角色编号`
- `Color` = `integer 颜色`
- `CommodityInfo` = `{[1]: UgcCommodity, [2]: integer}  {商品项目ID, 道具数量}`
- `CustomTriggerSpaceID` = `UnitID 触发区域ID`
- `DamageSchema` = `integer 伤害方案`
- `DecorationKey` = `UnitKey 装饰物编号`
- `E3DLayer` = `string 场景UI实例`
- `EAnimationState` = `integer UI动画状态`
- `EButton` = `ENode UI按钮节点`
- `EImage` = `ENode UI图片节点`
- `ELabel` = `ENode UI文本节点`
- `ENodeTouchEventType` = `integer 界面交互事件类型`
- `EmojiKey` = `integer 气泡表情编号`
- `EquipmentKey` = `integer 物品编号`
- `FontKey` = `integer 字体key`
- `InteractBtnID` = `integer 交互按钮编号`
- `JointAssistantType` = `integer 关节类型`
- `LifeEntityKey` = `UnitKey 生命体编号`
- `MontageKey` = `string 剧情动画编号`
- `ObstacleKey` = `UnitKey 组件编号`
- `PathID` = `UnitID 路径ID`
- `RoleID` = `integer 玩家ID`
- `SfxKey` = `integer 特效编号`
- `Skeleton` = `string 骨骼`
- `SoundID` = `integer 音效ID`
- `Timestamp` = `integer 时间戳`
- `UIPreset` = `string UIPreset`
- `UgcGoods` = `string 商品`
- `UnitGroupKey` = `UnitKey 组件组编号`
- `UnitKey` = `integer 单位编号`
- `VehicleKey` = `UnitKey 单位编号(载具)`

---

## Ability

### 方法

#### `Ability:ability_active_cd`

技能激活冷却

#### `Ability:ability_api_change_affect_radius`

修改技能作用半径

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_delta_affect_radius` | `Fixed` | 是 | 修改技能作用半径 |

#### `Ability:ability_api_change_affect_width`

修改技能作用宽度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_delta_affect_width` | `Fixed` | 是 | 修改技能作用宽度 |

#### `Ability:ability_api_change_max_release_distance`

修改技能施法距离

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_delta_level` | `Fixed` | 是 | 修改技能施法距离 |

#### `Ability:ability_api_decrease_ability_level`

降级技能等级

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_delta_level` | `integer` | 是 | 降低的技能等级 |

#### `Ability:ability_api_get_ability_level`

获取技能的等级

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 技能等级 |

#### `Ability:ability_api_get_ability_max_level`

获取技能的最大等级

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 技能最大等级 |

#### `Ability:ability_api_get_affect_radius`

获取技能的作用半径

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 施法距离 |

#### `Ability:ability_api_get_affect_width`

获取技能的作用宽度

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 施法距离 |

#### `Ability:ability_api_get_max_release_distance`

获取技能的施法距离

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 施法距离 |

#### `Ability:ability_api_increase_ability_level`

增加技能等级

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_delta_level` | `integer` | 是 | 增加的技能等级 |

#### `Ability:ability_api_set_ability_level`

设置技能等级

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_new_level` | `integer` | 是 | 技能等级 |

#### `Ability:ability_api_set_ability_max_level`

设置技能最大等级

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_new_max_level` | `integer` | 是 | 技能最大等级 |

#### `Ability:ability_api_set_affect_radius`

设置技能的作用半径

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_new_affect_radius` | `Fixed` | 是 | 作用半径 |

#### `Ability:ability_api_set_affect_width`

设置技能的作用宽度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_new_affect_width` | `Fixed` | 是 | 作用宽度 |

#### `Ability:ability_api_set_max_release_distance`

设置技能的施法距离

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_new_max_release_distance` | `Fixed` | 是 | 施法距离 |

#### `Ability:add_state_to_target`

技能给单位添加状态

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 对象 |
| `_state_id` | `Enums.BuffState` | 是 | 状态 |

#### `Ability:begin_cast`

技能开始释放

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_dir_info` | `Vector3?` | 否 | 方向 |
| `_target_point` | `Vector3?` | 否 | 坐标点 |
| `_target_unit` | `Unit?` | 否 | 目标单位 |

#### `Ability:break_accumulate`

打断蓄力

#### `Ability:break_cast`

打断技能施法

#### `Ability:change_affect_radius`

修改技能作用半径

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_delta_affect_radius` | `Fixed` | 是 | 修改技能作用半径 |

#### `Ability:change_affect_width`

修改技能作用宽度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_delta_affect_width` | `Fixed` | 是 | 修改技能作用宽度 |

#### `Ability:change_max_release_distance`

修改技能施法距离

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_delta_level` | `Fixed` | 是 | 修改技能施法距离 |

#### `Ability:downgrade_ability_level`

降级技能等级

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_delta_level` | `integer` | 是 | 降低的技能等级 |

#### `Ability:enter_cd`

技能激活冷却

#### `Ability:get_ability_can_affect_character_list_v2`

获取技能可以作用的角色列表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_height` | `Fixed` | 是 | 高度差 |
| `_use_fixed_release_point` | `boolean?` | 否 | 施法点是否固定 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Character[]` | 可以影响的角色列表 |

#### `Ability:get_ability_can_affect_creature_list_v2`

获取技能可以作用的生物列表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_height` | `Fixed` | 是 | 高度差 |
| `_use_fixed_release_point` | `boolean?` | 否 | 施法点是否固定 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Creature[]` | 可以影响的生物列表 |

#### `Ability:get_ability_can_affect_life_entity_list_v2`

获取技能可以作用的生命体列表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_height` | `Fixed` | 是 | 高度差 |
| `_use_fixed_release_point` | `boolean?` | 否 | 施法点是否固定 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `LifeEntity[]` | 可以影响的生命体列表 |

#### `Ability:get_ability_can_affect_obstacle_list_v2`

获取技能可以作用的组件列表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_height` | `Fixed` | 是 | 高度差 |
| `_use_fixed_release_point` | `boolean?` | 否 | 施法点是否固定 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Obstacle[]` | 可以影响的组件列表 |

#### `Ability:get_ability_index`

获取技能所在槽位

**返回值:**

| 类型 | 说明 |
|------|------|
| `AbilitySlot` | 技能槽位 |

#### `Ability:get_ability_level`

获取技能的等级

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 技能等级 |

#### `Ability:get_ability_max_level`

获取技能的最大等级

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 技能最大等级 |

#### `Ability:get_ability_slot`

获取技能所在槽位

**返回值:**

| 类型 | 说明 |
|------|------|
| `AbilitySlot` | 技能槽位 |

#### `Ability:get_accumulate_ratio`

获取技能蓄力百分比

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 技能蓄力百分比 |

#### `Ability:get_affect_character_list`

获取技能可以作用的角色列表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_height` | `Fixed` | 是 | 高度差 |
| `_use_fixed_release_point` | `boolean?` | 否 | 施法点是否固定 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Character[]` | 可以影响的角色列表 |

#### `Ability:get_affect_creature_list`

获取技能可以作用的生物列表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_height` | `Fixed` | 是 | 高度差 |
| `_use_fixed_release_point` | `boolean?` | 否 | 施法点是否固定 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Creature[]` | 可以影响的生物列表 |

#### `Ability:get_affect_lifeentity_list`

获取技能可以作用的生命体列表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_height` | `Fixed` | 是 | 高度差 |
| `_use_fixed_release_point` | `boolean?` | 否 | 施法点是否固定 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `LifeEntity[]` | 可以影响的生命体列表 |

#### `Ability:get_affect_obstacle_list`

获取技能可以作用的组件列表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_height` | `Fixed` | 是 | 高度差 |
| `_use_fixed_release_point` | `boolean?` | 否 | 施法点是否固定 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Obstacle[]` | 可以影响的组件列表 |

#### `Ability:get_affect_radius`

获取技能的作用半径

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 施法距离 |

#### `Ability:get_affect_width`

获取技能的作用宽度

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 施法距离 |

#### `Ability:get_cd_time`

获取技能冷却时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 技能冷却时间 |

#### `Ability:get_charge_time`

获取技能充能时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 充能时间 |

#### `Ability:get_cur_release_num`

获取技能当前使用次数

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 使用次数 |

#### `Ability:get_desc`

获取技能描述

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 技能描述 |

#### `Ability:get_is_in_cd`

技能是否在冷却中

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 剩余冷却时间 |

#### `Ability:get_is_in_charge`

技能是否在充能中

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 技能是否在冷却中 |

#### `Ability:get_key`

获取技能编号

**返回值:**

| 类型 | 说明 |
|------|------|
| `AbilityKey` | 技能编号 |

#### `Ability:get_left_cd_time`

获取技能剩余冷却时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 剩余冷却时间 |

#### `Ability:get_left_charge_time`

获取技能剩余充能时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 剩余充能时间 |

#### `Ability:get_limitation_active`

获取技能使用限制是否激活

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_limit` | `Enums.AbilityLimitation` | 是 | 使用限制 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否激活 |

#### `Ability:get_lock_obstacle`

获取技能锁定目标

**返回值:**

| 类型 | 说明 |
|------|------|
| `Obstacle` | 获取技能锁定目标 |

#### `Ability:get_lock_target`

获取技能锁定目标

**返回值:**

| 类型 | 说明 |
|------|------|
| `LifeEntity` | 获取技能锁定目标 |

#### `Ability:get_lock_target_char`

获取技能锁定角色

**返回值:**

| 类型 | 说明 |
|------|------|
| `Character` | 角色 |

#### `Ability:get_lock_target_creature`

获取技能锁定生物

**返回值:**

| 类型 | 说明 |
|------|------|
| `Creature` | 生物 |

#### `Ability:get_max_release_distance`

获取技能的施法距离

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 施法距离 |

#### `Ability:get_max_release_num`

获取技能最大使用次数

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 最大使用次数 |

#### `Ability:get_name`

获取技能名称

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 技能名称 |

#### `Ability:get_owner`

获取技能拥有者

**返回值:**

| 类型 | 说明 |
|------|------|
| `LifeEntity` | 技能拥有者 |

#### `Ability:get_owner_character`

获取技能拥有角色

**返回值:**

| 类型 | 说明 |
|------|------|
| `Unit` | 角色 |

#### `Ability:get_owner_creature`

获取技能拥有生物

**返回值:**

| 类型 | 说明 |
|------|------|
| `Unit` | 生物 |

#### `Ability:get_owner_equipment`

获取拥有技能的物品

**返回值:**

| 类型 | 说明 |
|------|------|
| `Equipment` | 技能拥有者 |

#### `Ability:get_owner_unit`

获取技能拥有者

**返回值:**

| 类型 | 说明 |
|------|------|
| `LifeEntity` | 技能拥有者 |

#### `Ability:get_pointer_type`

获取技能指示器类型

**返回值:**

| 类型 | 说明 |
|------|------|
| `Enums.AbilityPointerType` | 指示器类型 |

#### `Ability:get_release_dir`

获取技能释放方向

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 方向 |

#### `Ability:get_release_direction`

获取技能释放方向

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 方向 |

#### `Ability:get_release_direction_list`

获取技能复数释放方向

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3[]` | 方向 |

#### `Ability:get_release_point`

获取技能释放坐标点

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 坐标点 |

#### `Ability:get_release_point_list`

获取技能复数释放坐标点

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3[]` | 坐标点 |

#### `Ability:is_in_cd`

技能是否在冷却中

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 剩余冷却时间 |

#### `Ability:is_in_charge`

技能是否在充能中

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 技能是否在冷却中 |

#### `Ability:is_limitation_enabled`

获取技能使用限制是否激活

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_limit` | `Enums.AbilityLimitation` | 是 | 使用限制 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否激活 |

#### `Ability:play_countdown_ui`

播放倒计时ui效果

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_time` | `Fixed` | 是 | 持续时间 |

#### `Ability:remove_state_to_target`

技能给单位移除状态

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 对象 |
| `_state_id` | `Enums.BuffState` | 是 | 状态 |

#### `Ability:set_ability_level`

设置技能等级

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_new_level` | `integer` | 是 | 技能等级 |

#### `Ability:set_ability_max_level`

设置技能最大等级

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_new_max_level` | `integer` | 是 | 技能最大等级 |

#### `Ability:set_affect_radius`

设置技能的作用半径

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_new_affect_radius` | `Fixed` | 是 | 作用半径 |

#### `Ability:set_affect_width`

设置技能的作用宽度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_new_affect_width` | `Fixed` | 是 | 作用宽度 |

#### `Ability:set_cur_release_num`

设置技能当前使用次数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_release_num` | `integer` | 是 | 使用次数 |

#### `Ability:set_left_cd_time`

设置技能剩余冷却

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_cd_time` | `Fixed` | 是 | 冷却时间 |

#### `Ability:set_left_charge_time`

设置技能剩余充能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_cd_time` | `Fixed` | 是 | 充能时间 |

#### `Ability:set_max_release_distance`

设置技能的施法距离

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_new_max_release_distance` | `Fixed` | 是 | 施法距离 |

#### `Ability:set_max_release_num`

设置技能最大使用次数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_release_num_max` | `integer` | 是 | 最大使用次数 |

#### `Ability:upgrade_ability_level`

增加技能等级

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_delta_level` | `integer` | 是 | 增加的技能等级 |


## AbilityComp

### 方法

#### `AbilityComp:add_ability_to_slot`

添加向技能槽位添加UGC技能能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_index` | `AbilitySlot` | 是 | 技能槽位 |
| `_ability_id` | `AbilityKey` | 是 | 技能编号 |
| `_kv_args` | `table?` | 否 | 自定义参数值 |
| `_kv_types` | `table?` | 否 | 自定义参数类型 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Ability` | 添加上的技能 |

#### `AbilityComp:add_item_ability_with_check`

添加道具技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_id` | `AbilityKey` | 是 | 技能编号 |
| `_kv_args` | `table?` | 否 | 自定义参数值 |
| `_kv_types` | `table?` | 否 | 自定义参数类型 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Ability` | 添加上的技能 |

#### `AbilityComp:add_prop_ability`

添加道具技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_id` | `AbilityKey` | 是 | 技能编号 |
| `_kv_args` | `table?` | 否 | 自定义参数值 |
| `_kv_types` | `table?` | 否 | 自定义参数类型 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Ability` | 添加上的技能 |

#### `AbilityComp:break_ability_accumulate`

打断技能蓄力

#### `AbilityComp:cast_ability_by_ability_slot_and_direction`

控制角色对目标方向释放指定槽位技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_direction` | `Vector3` | 是 | 方向 |
| `_ability_slot` | `AbilitySlot` | 是 | 技能槽位 |
| `_duration` | `Fixed` | 是 | 时间 |

#### `AbilityComp:cast_ability_by_ability_slot_and_position`

控制角色对目标坐标释放指定槽位技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_position` | `Vector3` | 是 | 坐标 |
| `_ability_slot` | `AbilitySlot` | 是 | 技能槽位 |
| `_duration` | `Fixed` | 是 | 时间 |

#### `AbilityComp:cast_ability_by_ability_slot_and_target`

控制角色对目标单位释放指定槽位技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target` | `LifeEntity` | 是 | 目标 |
| `_ability_slot` | `AbilitySlot` | 是 | 技能槽位 |
| `_duration` | `Fixed` | 是 | 时间 |

#### `AbilityComp:cast_ability_by_direction`

控制角色对指定方向执行释放指定预设技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_key` | `AbilityKey` | 是 | 技能编号 |
| `_duration` | `Fixed` | 是 | 时间 |
| `_direction` | `Vector3` | 是 | 方向 |
| `_ability_slot` | `AbilitySlot?` | 否 | 技能槽位 |

#### `AbilityComp:cast_ability_by_position`

控制角色对指定坐标执行释放预设技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_key` | `AbilityKey` | 是 | 技能编号 |
| `_duration` | `Fixed` | 是 | 时间 |
| `_position` | `Vector3` | 是 | 坐标 |
| `_ability_slot` | `AbilitySlot?` | 否 | 技能槽位 |

#### `AbilityComp:cast_ability_by_target`

控制角色对指定目标执行释放指定预设技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_key` | `AbilityKey` | 是 | 技能编号 |
| `_duration` | `Fixed` | 是 | 时间 |
| `_target` | `LifeEntity` | 是 | 目标 |
| `_ability_slot` | `AbilitySlot?` | 否 | 技能槽位 |

#### `AbilityComp:destroy_ability`

销毁技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability` | `Ability` | 是 | 技能对象 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否成功移除 |

#### `AbilityComp:get_abilities`

获取单位所有技能

**返回值:**

| 类型 | 说明 |
|------|------|
| `Ability[]` | 技能对象 |

#### `AbilityComp:get_ability_by_slot`

获取对应槽位技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_slot` | `AbilitySlot` | 是 | 技能槽位 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Ability` | 技能对象 |

#### `AbilityComp:get_ability_list`

获取单位所有技能

**返回值:**

| 类型 | 说明 |
|------|------|
| `Ability[]` | 技能列表 |

#### `AbilityComp:get_prop_ability`

获取道具技能

**返回值:**

| 类型 | 说明 |
|------|------|
| `Ability` | 技能对象 |

#### `AbilityComp:interrupt_ability`

打断技能施法

#### `AbilityComp:remove_ability`

移除槽位上的技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_slot` | `AbilitySlot` | 是 | 技能槽位 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否成功移除 |

#### `AbilityComp:remove_ability_by_key`

根据技能编号移除技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_key` | `AbilityKey` | 是 | 技能编号 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否成功移除 |

#### `AbilityComp:remove_prop_ability`

移除道具技能

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否成功移除 |

#### `AbilityComp:reset_ability_cd`

重置指定槽位技能CD

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_index` | `AbilitySlot` | 是 | 技能槽位 |

#### `AbilityComp:set_ability_enabled_on_vehicle`

设置是否能在载具上使用用技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 是否能用技能 |

#### `AbilityComp:set_ability_to_slot`

替换技能槽位(UGC槽位)

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability` | `Ability` | 是 | 技能对象 |
| `_ability_index` | `AbilitySlot` | 是 | 技能槽位 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Ability` | 被替换的旧技能 |


## Actor

### 方法

#### `Actor:get_id`

获取单位ID

**返回值:**

| 类型 | 说明 |
|------|------|
| `UnitID` | 单位ID |


## AttrComp

### 方法

#### `AttrComp:change_attr_bonus_fixed`

改变属性的额外固定值(复杂模式)

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `string` | 是 | 属性名 |
| `_value` | `Fixed` | 是 | 额外固定值 |

#### `AttrComp:change_attr_ratio_fixed`

改变属性的倍率值(复杂模式)

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `string` | 是 | 属性名 |
| `_value` | `Fixed` | 是 | 倍率值 |

#### `AttrComp:change_attr_raw_fixed`

改变属性的基础值(复杂模式)

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `string` | 是 | 属性名 |
| `_value` | `Fixed` | 是 | 基础值 |

#### `AttrComp:get_attr_base_extra_fixed`

获取属性的基础加成值(复杂模式)

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `string` | 是 | 属性名 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 基础加成值 |

#### `AttrComp:get_attr_bonus_fixed`

获取属性的额外固定值(复杂模式)

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `string` | 是 | 属性名 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 额外固定值 |

#### `AttrComp:get_attr_by_type`

获取属性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value_type` | `Enums.ValueType` | 是 | 值类型 |
| `_key` | `string` | 是 | 属性名 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `any` | 属性值 |

#### `AttrComp:get_attr_ratio_fixed`

获取属性的倍率值(复杂模式)

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `string` | 是 | 属性名 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 倍率值 |

#### `AttrComp:get_attr_raw_fixed`

获取属性的基础值(复杂模式)

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `string` | 是 | 属性名 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 基础值 |

#### `AttrComp:set_attr_bonus_fixed`

设置属性的额外固定值(复杂模式)

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `string` | 是 | 属性名 |
| `_value` | `Fixed` | 是 | 额外固定值 |

#### `AttrComp:set_attr_by_type`

设置属性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value_type` | `Enums.ValueType` | 是 | 值类型 |
| `_key` | `string` | 是 | 属性名 |
| `_val` | `any` | 是 | 属性值 |

#### `AttrComp:set_attr_ratio_fixed`

设置属性的倍率值(复杂模式)

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `string` | 是 | 属性名 |
| `_value` | `Fixed` | 是 | 倍率值 |

#### `AttrComp:set_attr_raw_fixed`

设置属性的基础值(复杂模式)

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `string` | 是 | 属性名 |
| `_value` | `Fixed` | 是 | 基础值 |


## BuffStateComp

### 方法

#### `BuffStateComp:add_state`

为对象添加状态

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_state_id` | `Enums.BuffState` | 是 | 状态 |

#### `BuffStateComp:clear_state`

清空对象身上所有状态

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_state_id` | `Enums.BuffState` | 是 | 状态 |

#### `BuffStateComp:get_state_count`

获取限制状态计数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_state_id` | `Enums.BuffState` | 是 | 状态 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 状态计数 |

#### `BuffStateComp:get_state_list`

获取所有限制状态

**返回值:**

| 类型 | 说明 |
|------|------|
| `Enums.BuffState[]` | 状态列表 |

#### `BuffStateComp:remove_state`

从对象移除指定状态

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_state_id` | `Enums.BuffState` | 是 | 状态 |


## Camp

### 方法

#### `Camp:change_camp_score`

改变阵营积分

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_add_score` | `integer` | 是 | 变化积分 |

#### `Camp:get_camp_role_list`

获取阵营内玩家列表

**返回值:**

| 类型 | 说明 |
|------|------|
| `Role[]` | 玩家列表 |

#### `Camp:get_camp_score`

获取阵营积分

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 积分 |

#### `Camp:get_name`

获取阵营名称

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 名称 |

#### `Camp:get_roles`

获取阵营内玩家列表

**返回值:**

| 类型 | 说明 |
|------|------|
| `Role[]` | 玩家列表 |

#### `Camp:set_camp_score`

设置阵营积分

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_score` | `integer` | 是 | 积分 |


## Character

### 方法

#### `Character:change_character_prefab`

改变角色预设

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_c_key` | `CharacterKey` | 是 | 角色预设 |
| `_reset_prop` | `boolean` | 是 | 重置属性 |
| `_reset_trigger_system` | `boolean` | 是 | 重置蛋码 |
| `_reset_model` | `boolean` | 是 | 重置外观 |

#### `Character:change_custom_model_by_creature`

根据生物修改角色所有外观部位自定义模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_creature` | `Creature` | 是 | 生物 |

#### `Character:change_custom_model_by_creature_key`

根据生物预设修改角色所有外观部位自定义模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_creature_key` | `CreatureKey` | 是 | 生物编号 |

#### `Character:change_model_by_creature`

根据生物设置模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_creature` | `Creature` | 是 | 生物 |
| `_include_custom_model` | `boolean?` | 否 | 是否包含自定义形象 |
| `_inherit_scale` | `boolean?` | 否 | 是否继承缩放 |
| `_inherit_capsule_size` | `boolean?` | 否 | 是否继承胶囊体尺寸 |

#### `Character:change_target_socket_model`

修改角色指定外观部位为自定义模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_model_socket` | `Enums.ModelSocket` | 是 | 外观部位 |
| `_creature` | `Creature` | 是 | 生物 |
| `_creature_model_socket` | `Enums.ModelSocket` | 是 | 外观部位 |

#### `Character:change_target_socket_model_by_creature_key`

修改角色指定外观部位为自定义模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_model_socket` | `Enums.ModelSocket` | 是 | 外观部位 |
| `_creature_key` | `CreatureKey` | 是 | 生物编号 |
| `_creature_model_socket` | `Enums.ModelSocket` | 是 | 外观部位 |

#### `Character:change_ugc_model_by_creature`

根据生物修改角色所有外观部位自定义模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_creature` | `Creature` | 是 | 生物 |

#### `Character:change_ugc_model_by_creature_key`

根据生物预设修改角色所有外观部位自定义模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_creature_key` | `CreatureKey` | 是 | 生物编号 |

#### `Character:cmd_lift`

命令角色抓举

#### `Character:cmd_move_to_pos`

命令角色移动到坐标点

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target_pos` | `Vector3` | 是 | 坐标点 |
| `_duration` | `Fixed` | 是 | 持续时间 |

#### `Character:cmd_rush`

命令角色前扑

#### `Character:destroy_buff`

销毁效果

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_modifier` | `Modifier` | 是 | 效果对象 |

#### `Character:enable_aim_move_mode`

开关角色靶向移动

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 开关 |

#### `Character:fling_rush`

命令角色前扑

#### `Character:get_ability_point`

获取技能点

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 技能点 |

#### `Character:get_buff`

获取单位效果

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_modifier_id` | `ModifierKey` | 是 | 效果ID |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Modifier` | 效果对象 |

#### `Character:get_buffs`

获取单位所有效果

**返回值:**

| 类型 | 说明 |
|------|------|
| `Modifier[]` | 效果 |

#### `Character:get_camp_role`

获取控制角色的玩家

**返回值:**

| 类型 | 说明 |
|------|------|
| `Role` | 玩家 |

#### `Character:get_climb_obstacle`

获取角色攀爬的组件

**返回值:**

| 类型 | 说明 |
|------|------|
| `Obstacle` | 攀爬的组件 |

#### `Character:get_ctrl_role`

获取控制角色的玩家

**返回值:**

| 类型 | 说明 |
|------|------|
| `Role` | 玩家 |

#### `Character:get_face_dir`

获取生命实体的朝向

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 方向 |

#### `Character:get_joystick_direction`

获取角色原始输入前进方向

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 摇杆控制前进方向 |

#### `Character:increase_ability_point`

增加技能点

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_increase` | `integer` | 是 | 技能点 |

#### `Character:is_forced_moving`

是否正在强制位移

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否正在强制位移 |

#### `Character:is_ghost_mode`

生命体是否进入魂蛋模式

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否处于魂蛋模式 |

#### `Character:is_have_buff_with_id`

是否拥有指定编号的效果

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_modifier_key` | `ModifierKey` | 是 | 效果编号 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否拥有 |

#### `Character:jump`

命令角色跳跃

#### `Character:lift`

命令角色抓举

#### `Character:recover_model`

还原模型变化

#### `Character:recover_target_socket_model`

还原角色指定外观部位变化

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_model_socket` | `Enums.ModelSocket` | 是 | 外观部位 |

#### `Character:remove_buff`

移除效果

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_modifier_id` | `ModifierKey` | 是 | 效果编号 |

#### `Character:reset_target_socket_model`

还原角色指定外观部位变化

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_model_socket` | `Enums.ModelSocket` | 是 | 外观部位 |

#### `Character:set_aim_move_enabled`

开关角色靶向移动

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 开关 |

#### `Character:set_aim_move_mode`

开关角色靶向移动

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 开关 |

#### `Character:set_character_act_voice_enabled`

设置角色配音是否生效

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enabled` | `boolean` | 是 | 是否启用 |

#### `Character:set_character_prefab`

改变角色预设

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_c_key` | `CharacterKey` | 是 | 角色预设 |
| `_reset_prop` | `boolean` | 是 | 重置属性 |
| `_reset_trigger_system` | `boolean` | 是 | 重置蛋码 |
| `_reset_model` | `boolean` | 是 | 重置外观 |

#### `Character:set_climb_enabled`

设置角色是否开启攀爬

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 是否开启攀爬 |

#### `Character:set_climb_max_angle`

设置角色攀爬的最大角度（弧度）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_angle` | `Fixed` | 是 | 角度（弧度） |

#### `Character:set_climb_min_angle`

设置角色攀爬的最小角度（弧度）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_angle` | `Fixed` | 是 | 角度（弧度） |

#### `Character:set_climb_speed`

设置角色攀爬速度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_speed` | `Fixed` | 是 | 攀爬速度 |

#### `Character:set_mass_bar_visible`

设置质量条是否显示

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_visible` | `boolean` | 是 | 是否显示 |

#### `Character:set_socket_model`

修改角色指定外观部位为自定义模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_model_socket` | `Enums.ModelSocket` | 是 | 外观部位 |
| `_creature` | `Creature` | 是 | 生物 |
| `_creature_model_socket` | `Enums.ModelSocket` | 是 | 外观部位 |

#### `Character:set_socket_model_by_creature_key`

修改角色指定外观部位为自定义模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_model_socket` | `Enums.ModelSocket` | 是 | 外观部位 |
| `_creature_key` | `CreatureKey` | 是 | 生物编号 |
| `_creature_model_socket` | `Enums.ModelSocket` | 是 | 外观部位 |

#### `Character:set_voice_enabled`

设置角色配音是否生效

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enabled` | `boolean` | 是 | 是否启用 |

#### `Character:start_forced_move`

开始强制位移

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_vel` | `Vector3` | 是 | 移动速度 |
| `_duration` | `Fixed` | 是 | 持续时间 |
| `_enable_phy` | `boolean?` | 否 | 是否保留物理 |

#### `Character:start_move_to_pos`

命令角色移动到坐标点

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target_pos` | `Vector3` | 是 | 坐标点 |
| `_duration` | `Fixed` | 是 | 持续时间 |

#### `Character:stop_forced_move`

退出当前强制位移

#### `Character:try_enter_ugcvehicle`

生命体尝试上载具

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_vehicle` | `Vehicle` | 是 | 载具 |

#### `Character:try_enter_vehicle`

生命体尝试上载具

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_vehicle` | `Vehicle` | 是 | 载具 |

#### `Character:try_exit_ugcvehicle`

生命体尝试下载具

#### `Character:try_exit_vehicle`

生命体尝试下载具


## CharacterComp

### 方法

#### `CharacterComp:get_scale_ratio`

获取缩放倍率

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 缩放倍率 |

#### `CharacterComp:is_forced_moving`

是否正在强制位移

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否正在强制位移 |

#### `CharacterComp:set_face_dir`

设置生命实体的朝向

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_face_dir` | `Vector3` | 是 | 方向 |

#### `CharacterComp:start_forced_move`

开始强制位移

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_vel` | `Vector3` | 是 | 移动速度 |
| `_duration` | `Fixed` | 是 | 持续时间 |
| `_enable_phy` | `boolean?` | 否 | 是否保留物理 |

#### `CharacterComp:stop_forced_move`

退出当前强制位移


## Creature

### 方法

#### `Creature:change_model_by_creature`

根据生物设置模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_creature` | `Creature` | 是 | 生物 |
| `_include_custom_model` | `boolean?` | 否 | 是否包含自定义形象 |
| `_inherit_scale` | `boolean?` | 否 | 是否继承缩放 |
| `_inherit_capsule_size` | `boolean?` | 否 | 是否继承胶囊体尺寸 |

#### `Creature:change_target_socket_model`

修改生物指定外观部位为自定义模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_model_socket` | `Enums.ModelSocket` | 是 | 外观部位 |
| `_creature` | `Creature` | 是 | 生物 |
| `_creature_model_socket` | `Enums.ModelSocket` | 是 | 外观部位 |

#### `Creature:change_target_socket_model_by_creature_key`

修改生物指定外观部位为自定义模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_model_socket` | `Enums.ModelSocket` | 是 | 外观部位 |
| `_creature_key` | `CreatureKey` | 是 | 生物编号 |
| `_creature_model_socket` | `Enums.ModelSocket` | 是 | 外观部位 |

#### `Creature:force_start_move`

命令生物移动

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_direction` | `Vector3` | 是 | 方向 |
| `_t` | `Fixed` | 是 | 时间 |

#### `Creature:force_stop_move`

命令生物停止移动

#### `Creature:get_face_dir`

获取生命实体的朝向

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 方向 |

#### `Creature:is_drag_enable`

获取生命体是否可拖动

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否可拖动 |

#### `Creature:is_touch_enable`

获取生命体是否可点击

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否可点击 |

#### `Creature:recover_model`

还原模型变化

#### `Creature:recover_target_socket_model`

还原生物指定外观部位变化

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_model_socket` | `Enums.ModelSocket` | 是 | 外观部位 |

#### `Creature:reset_target_socket_model`

还原生物指定外观部位变化

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_model_socket` | `Enums.ModelSocket` | 是 | 外观部位 |

#### `Creature:set_drag_enable`

设置生物是否可拖动

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 是否可拖动 |

#### `Creature:set_draggable`

设置生物是否可拖动

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 是否可拖动 |

#### `Creature:set_dragged_plane_type`

设置生物拖动平面

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value` | `Enums.PlaneType` | 是 | 拖动平面 |

#### `Creature:set_mass_bar_visible`

设置质量条是否显示

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_visible` | `boolean` | 是 | 是否显示 |

#### `Creature:set_name`

设置生物的显示名称

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_name` | `string` | 是 | 显示名称 |

#### `Creature:set_name_visible`

设置生物是否显示名称

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_visible` | `boolean` | 是 | 是否显示名称 |

#### `Creature:set_socket_model`

修改生物指定外观部位为自定义模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_model_socket` | `Enums.ModelSocket` | 是 | 外观部位 |
| `_creature` | `Creature` | 是 | 生物 |
| `_creature_model_socket` | `Enums.ModelSocket` | 是 | 外观部位 |

#### `Creature:set_socket_model_by_creature_key`

修改生物指定外观部位为自定义模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_model_socket` | `Enums.ModelSocket` | 是 | 外观部位 |
| `_creature_key` | `CreatureKey` | 是 | 生物编号 |
| `_creature_model_socket` | `Enums.ModelSocket` | 是 | 外观部位 |

#### `Creature:set_touch_drag_plane`

设置生物拖动平面

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value` | `Enums.PlaneType` | 是 | 拖动平面 |

#### `Creature:set_touch_enable`

设置生物是否可点击

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 是否可点击 |

#### `Creature:set_touchable`

设置生物是否可点击

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 是否可点击 |


## CustomTriggerSpace

### 方法

#### `CustomTriggerSpace:random_point`

获取触发区域内的随机坐标

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 坐标 |


## Damage


## DebugAPI

### 方法

#### `DebugAPI:draw_line`

绘制线段（调试）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_start_pos` | `Vector3` | 是 | 起点 |
| `_end_pos` | `Vector3` | 是 | 终点 |
| `_color` | `Color` | 是 | 颜色 |
| `_duration` | `Fixed` | 是 | 时长 |

#### `DebugAPI:draw_text`

绘制文本（调试）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_pos` | `Vector3` | 是 | 位置 |
| `_text` | `string` | 是 | 文本 |


## DisplayComp

### 方法

#### `DisplayComp:add_banned_anim`

临时屏蔽部分动画的播放

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_anim_name` | `string` | 是 | 动画名 |

#### `DisplayComp:api_add_banned_anim`

临时屏蔽部分动画的播放

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_anim_name` | `string` | 是 | 动画名 |

#### `DisplayComp:api_clear_banned_anim`

清除动画屏蔽

#### `DisplayComp:api_remove_banned_anim`

解除部分动画的播放屏蔽

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_anim_name` | `string` | 是 | 动画名 |

#### `DisplayComp:bind_model`

添加绑定模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_model_id` | `UnitKey` | 是 | 单位编号 |
| `_socket` | `Enums.ModelSocket` | 是 | 挂点 |
| `_offset` | `Vector3?` | 否 | 偏移 |
| `_rot` | `Quaternion?` | 否 | 旋转 |
| `_scale` | `Vector3?` | 否 | 缩放 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 绑定ID |

#### `DisplayComp:bind_model_by_unit`

添加绑定模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位 |
| `_socket` | `Enums.ModelSocket` | 是 | 挂点 |
| `_offset` | `Vector3?` | 否 | 偏移 |
| `_rot` | `Quaternion?` | 否 | 旋转 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 绑定ID |

#### `DisplayComp:clear_banned_anim`

清除动画屏蔽

#### `DisplayComp:force_play_animation_by_anim_key`

强制播放动画

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_anim_key` | `AnimKey` | 是 | 动画编号 |
| `_start_time` | `Fixed?` | 否 | 开始时间 |
| `_play_time` | `Fixed?` | 否 | 持续时间 |
| `_play_rate` | `Fixed?` | 否 | 播放速率 |
| `_is_loop` | `boolean?` | 否 | 是否循环 |

#### `DisplayComp:play_body_anim_by_id`

播放全身动画

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_anim_id` | `AnimKey` | 是 | 动画编号 |
| `_start_time` | `Fixed?` | 否 | 开始时间 |
| `_play_time` | `Fixed?` | 否 | 持续时间 |
| `_is_loop` | `boolean?` | 否 | 是否循环 |

#### `DisplayComp:play_upper_anim_by_id`

播放上半身动画

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_anim_id` | `AnimKey` | 是 | 动画编号 |
| `_start_time` | `Fixed?` | 否 | 开始时间 |
| `_play_time` | `Fixed?` | 否 | 持续时间 |
| `_is_loop` | `boolean?` | 否 | 是否循环 |

#### `DisplayComp:remove_banned_anim`

解除部分动画的播放屏蔽

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_anim_name` | `string` | 是 | 动画名 |

#### `DisplayComp:remove_bind_model`

移除绑定模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_bind_id` | `string` | 是 | 绑定ID |

#### `DisplayComp:set_anim_rate`

设置播放速率

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_anim_rate` | `Fixed` | 是 | 播放速率 |

#### `DisplayComp:set_skeleton_scale`

修改骨骼缩放

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_skeleton` | `Skeleton` | 是 | 骨骼 |
| `_scale` | `Vector3` | 是 | 缩放比例 |

#### `DisplayComp:stop_anim`

停止播放动画

#### `DisplayComp:stop_play_body_anim`

停止播放全身动画

#### `DisplayComp:stop_play_body_anim_by_id`

停止播放全身动画）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_anim_id` | `AnimKey` | 是 | 动画编号 |

#### `DisplayComp:stop_play_body_anim_with_id`

停止播放全身动画）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_anim_id` | `AnimKey` | 是 | 动画编号 |

#### `DisplayComp:stop_play_upper_anim`

停止播放上半身动画

#### `DisplayComp:stop_play_upper_anim_by_id`

停止播放上半身动画

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_anim_id` | `AnimKey` | 是 | 动画编号 |

#### `DisplayComp:stop_play_upper_anim_with_id`

停止播放上半身动画

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_anim_id` | `AnimKey` | 是 | 动画编号 |

#### `DisplayComp:ugc_add_bind_model`

添加绑定模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_model_id` | `UnitKey` | 是 | 单位编号 |
| `_socket` | `Enums.ModelSocket` | 是 | 挂点 |
| `_offset` | `Vector3?` | 否 | 偏移 |
| `_rot` | `Quaternion?` | 否 | 旋转 |
| `_scale` | `Vector3?` | 否 | 缩放 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 绑定ID |

#### `DisplayComp:unbind_model`

移除绑定模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_bind_id` | `string` | 是 | 绑定ID |


## EVENT

### 字段

| 字段名 | 类型 | 说明 |
|--------|------|------|
| `ABILITY_BULLET_HIT` | `"ABILITY_BULLET_HIT"` | 子弹命中 事件主体 Ability 技能 事件回调参数 ability Ability 触发技能 事件回调参数 unit Unit 技能拥有者 事件回调参数 target_unit Unit 目标对象 事件回调参数 dmg Fixed 伤害值 |
| `ABILITY_SWITCH_IN` | `"ABILITY_SWITCH_IN"` | 技能切入 事件主体 Ability 技能 事件回调参数 ability Ability 触发技能 事件回调参数 unit Unit 技能拥有者 事件回调参数 switch_out_ability Ability 切换前的技能 |
| `ABILITY_SWITCH_OUT` | `"ABILITY_SWITCH_OUT"` | 技能切出 事件主体 Ability 技能 事件回调参数 ability Ability 触发技能 事件回调参数 unit Unit 技能拥有者 事件回调参数 switch_in_ability Ability 切换后的技能 |
| `ABILITY_ACCUMULATE_BEGIN` | `"ABILITY_ACCUMULATE_BEGIN"` | 技能蓄力阶段开始 事件主体 Ability 技能 事件回调参数 ability Ability 触发技能 事件回调参数 unit Unit 技能拥有者 |
| `ABILITY_ACCUMULATE_INTERRUPT` | `"ABILITY_ACCUMULATE_INTERRUPT"` | 技能蓄力阶段被打断 事件主体 Ability 技能 事件回调参数 ability Ability 触发技能 事件回调参数 unit Unit 技能拥有者 |
| `ABILITY_ACCUMULATE_END` | `"ABILITY_ACCUMULATE_END"` | 技能蓄力阶段结束 事件主体 Ability 技能 事件回调参数 ability Ability 触发技能 事件回调参数 unit Unit 技能拥有者 |
| `ABILITY_CAST_BEGIN` | `"ABILITY_CAST_BEGIN"` | 技能施法阶段开始 事件主体 Ability 技能 事件回调参数 ability Ability 触发技能 事件回调参数 unit Unit 技能拥有者 |
| `ABILITY_CAST_BREAK` | `"ABILITY_CAST_BREAK"` | 技能施法阶段被打断 事件主体 Ability 技能 事件回调参数 ability Ability 触发技能 事件回调参数 unit Unit 技能拥有者 |
| `ABILITY_CAST_END` | `"ABILITY_CAST_END"` | 技能施法阶段结束 事件主体 Ability 技能 事件回调参数 ability Ability 触发技能 事件回调参数 unit Unit 技能拥有者 |
| `ABILITY_CD_END` | `"ABILITY_CD_END"` | 技能冷却完成 事件主体 Ability 技能 事件回调参数 ability Ability 触发技能 事件回调参数 unit Unit 技能拥有者 |
| `ABILITY_CHARGE_END` | `"ABILITY_CHARGE_END"` | 技能充能完成 事件主体 Ability 技能 事件回调参数 ability Ability 触发技能 事件回调参数 unit Unit 技能拥有者 |
| `ABILITY_DOWNGRADE` | `"ABILITY_DOWNGRADE"` | 技能降级 事件主体 Ability 技能 事件回调参数 ability Ability 触发技能 |
| `ABILITY_REMOVE` | `"ABILITY_REMOVE"` | 失去技能 事件主体 Ability 技能 事件回调参数 ability Ability 触发技能 事件回调参数 unit Unit 技能拥有者 |
| `ABILITY_ADD` | `"ABILITY_ADD"` | 获得技能 事件主体 Ability 技能 事件回调参数 ability Ability 触发技能 事件回调参数 unit Unit 技能拥有者 |
| `ABILITY_SPEC_ANCHOR_BEGIN` | `"ABILITY_SPEC_ANCHOR_BEGIN"` | 技能指定锚点开始 事件主体 Ability 技能 注册参数 _anchor AbilityAnchorID ABILITY_ANCHOR 事件回调参数 ability Ability 触发技能 |
| `ABILITY_SPEC_ANCHOR_BREAK` | `"ABILITY_SPEC_ANCHOR_BREAK"` | 技能指定锚点被打断 事件主体 Ability 技能 注册参数 _anchor AbilityAnchorID ABILITY_ANCHOR 事件回调参数 ability Ability 触发技能 |
| `ABILITY_SPEC_ANCHOR_END` | `"ABILITY_SPEC_ANCHOR_END"` | 技能指定锚点结束 事件主体 Ability 技能 注册参数 _anchor AbilityAnchorID ABILITY_ANCHOR 事件回调参数 ability Ability 触发技能 |
| `ABILITY_SPEC_ANCHOR_STOP` | `"ABILITY_SPEC_ANCHOR_STOP"` | 技能指定锚点停止 事件主体 Ability 技能 注册参数 _anchor AbilityAnchorID ABILITY_ANCHOR 事件回调参数 ability Ability 触发技能 |
| `ABILITY_UPGRADE` | `"ABILITY_UPGRADE"` | 技能升级 事件主体 Ability 技能 事件回调参数 ability Ability 触发技能 事件回调参数 unit Unit 技能拥有者 |
| `ANY_CAMP_SCORE_UPDATE` | `"ANY_CAMP_SCORE_UPDATE"` | 阵营积分变化 事件主体 Global 全局触发器 事件回调参数 camp Camp 触发阵营 事件回调参数 old_camp_score integer 得分前积分 事件回调参数 new_camp_score integer 得分后积分 |
| `ANY_CUSTOMTRIGGERSPACE_CREATE` | `"ANY_CUSTOMTRIGGERSPACE_CREATE"` | 任意触发区域创建 事件主体 Global 全局触发器 事件回调参数 unit CustomTriggerSpace 被创建的触发区域 |
| `ANY_CUSTOMTRIGGERSPACE_DESTROY` | `"ANY_CUSTOMTRIGGERSPACE_DESTROY"` | 任意触发区域销毁 事件主体 Global 全局触发器 事件回调参数 unit CustomTriggerSpace 被销毁的触发区域 |
| `ANY_EQUIPMENT_CHANGE_SLOT` | `"ANY_EQUIPMENT_CHANGE_SLOT"` | 任意物品位置发生变化 事件主体 Global 全局触发器 事件回调参数 equipment Equipment 触发事件的物品 事件回调参数 owner LifeEntity 持有者 事件回调参数 old_slot_type Enums.EquipmentSlotType 旧槽位类型 事件回调参数 old_index integer 旧槽位索引 事件回调参数 new_slot_type Enums.EquipmentSlotType 新槽位类型 事件回调参数 new_index integer 新槽位索引 |
| `ANY_EQUIPMENT_TRIGGER_SPACE` | `"ANY_EQUIPMENT_TRIGGER_SPACE"` | 任意物品进出区域事件 事件主体 Global 全局触发器 注册参数 _trigger_event_type Enums.TriggerSpaceEventType 触发类型 注册参数 _customtriggerspace_id CustomTriggerSpaceID 触发区域ID 事件回调参数 event_unit Equipment 触发物品 事件回调参数 event_unit_id EquipmentID TRIGGER_EQUIPMENT_ID 事件回调参数 trigger_event_type Enums.TriggerSpaceEventType 触发类型 事件回调参数 trigger_zone_id CustomTriggerSpaceID 触发区域ID 事件回调参数 trigger_zone CustomTriggerSpace 事件触发区域 |
| `ANY_LIFEENTITY_TRIGGER_SPACE` | `"ANY_LIFEENTITY_TRIGGER_SPACE"` | 任意生命体进出区域事件 事件主体 Global 全局触发器 注册参数 _trigger_event_type Enums.TriggerSpaceEventType 触发类型 注册参数 _trigger_zone_id CustomTriggerSpaceID 触发区域ID 事件回调参数 event_unit LifeEntity 触发角色/生物 事件回调参数 event_unit_id UnitID 触发角色/生物ID 事件回调参数 trigger_event_type Enums.TriggerSpaceEventType 触发类型 事件回调参数 trigger_zone_id CustomTriggerSpaceID 触发区域ID 事件回调参数 trigger_zone CustomTriggerSpace 事件触发区域 |
| `ANY_OBSTACLE_CREATE` | `"ANY_OBSTACLE_CREATE"` | 任意组件创建 事件主体 Global 全局触发器 事件回调参数 unit Obstacle 被创建的组件 |
| `ANY_OBSTACLE_DESTROY` | `"ANY_OBSTACLE_DESTROY"` | 任意组件销毁 事件主体 Global 全局触发器 事件回调参数 unit Obstacle 被销毁的组件 |
| `ANY_OBSTACLE_LIFTED_BEGAN` | `"ANY_OBSTACLE_LIFTED_BEGAN"` | 任意组件被举起 事件主体 Global 全局触发器 事件回调参数 lift_unit Unit 抓举者 事件回调参数 lifted_unit Obstacle 被抓举者 |
| `ANY_OBSTACLE_LIFTED_ENDED` | `"ANY_OBSTACLE_LIFTED_ENDED"` | 任意组件被放下 事件主体 Global 全局触发器 事件回调参数 lift_unit Unit 抓举者 事件回调参数 lifted_unit Obstacle 被抓举者 |
| `ANY_OBSTACLE_TRIGGER_SPACE` | `"ANY_OBSTACLE_TRIGGER_SPACE"` | 任意组件进出触发区域 事件主体 Global 全局触发器 注册参数 _trigger_event_type Enums.TriggerSpaceEventType 触发类型 注册参数 _trigger_zone_id CustomTriggerSpaceID 触发区域ID 事件回调参数 event_unit Obstacle 触发组件 事件回调参数 event_unit_id ObstacleID 触发组件ID 事件回调参数 trigger_event_type Enums.TriggerSpaceEventType 触发类型 事件回调参数 trigger_zone_id CustomTriggerSpaceID 触发区域ID 事件回调参数 trigger_zone CustomTriggerSpace 事件触发区域 |
| `ANY_ROLE_LOW_FPS` | `"ANY_ROLE_LOW_FPS"` | 任意玩家低帧率 事件主体 Global 全局触发器 注册参数 _frame_rate integer 当前帧数 事件回调参数 role Role 目标玩家 事件回调参数 frame_rate integer 当前帧数 |
| `ANY_ROLE_SCORE_UPDATE` | `"ANY_ROLE_SCORE_UPDATE"` | 玩家积分变化 事件主体 Global 全局触发器 事件回调参数 role Role 触发玩家 事件回调参数 old_role_score integer 得分前积分 事件回调参数 new_role_score integer 得分后积分 |
| `ANY_TRIGGERSPACE_CREATE` | `"ANY_TRIGGERSPACE_CREATE"` | 任意逻辑体创建 事件主体 Global 全局触发器 事件回调参数 unit TriggerSpace 被创建的逻辑体 |
| `ANY_TRIGGERSPACE_DESTROY` | `"ANY_TRIGGERSPACE_DESTROY"` | 任意逻辑体销毁 事件主体 Global 全局触发器 事件回调参数 unit TriggerSpace 被销毁的逻辑体 |
| `CUSTOM_EVENT` | `"CUSTOM_EVENT"` | 自定义事件 事件主体 Default 多类型 注册参数 _name string 自定义事件 |
| `ENV_TIME_REACHED` | `"ENV_TIME_REACHED"` | 环境时间到达指定时刻 事件主体 Global 全局触发器 注册参数 _target_time Fixed TARGET_MAP_TIME |
| `UI_INPUT_TEXT_END_EVENT` | `"UI_INPUT_TEXT_END_EVENT"` | 输入框输入完成 事件主体 Default 多类型 注册参数 _eui_input_text EInputField 输入框 事件回调参数 role Role 触发玩家 事件回调参数 content string 内容 |
| `EUI_NODE_TOUCH_EVENT` | `"EUI_NODE_TOUCH_EVENT"` | 界面控件触摸交互事件 事件主体 Default 多类型 注册参数 _node ENode 触发事件的界面控件 注册参数 _touch_event_type ENodeTouchEventType T 事件回调参数 role Role 触发事件的玩家 事件回调参数 eui_node_id ENode 触发事件的界面控件 |
| `GAME_END` | `"GAME_END"` | 游戏结束 事件主体 Global 全局触发器 |
| `GAME_INIT` | `"GAME_INIT"` | 游戏初始化 事件主体 Global 全局触发器 |
| `LEVEL_BEGIN` | `"LEVEL_BEGIN"` | 进入关卡 事件主体 Default 多类型 事件回调参数 level_key LevelKey 当前关卡 |
| `LEVEL_END` | `"LEVEL_END"` | 离开关卡 事件主体 Default 多类型 事件回调参数 level_key LevelKey 当前关卡 |
| `MODIFIER_OBTAIN` | `"MODIFIER_OBTAIN"` | 获得效果 事件主体 Modifier 效果 事件回调参数 from_unit_id UnitID 效果来源ID 事件回调参数 modifier Modifier 触发效果 事件回调参数 unit Unit 效果拥有者 |
| `MODIFIER_REOBTAIN` | `"MODIFIER_REOBTAIN"` | 覆盖效果 事件主体 Modifier 效果 事件回调参数 modifier Modifier 触发效果 事件回调参数 unit Unit 效果拥有者 |
| `MODIFIER_STACK_COUNT_CHANGE` | `"MODIFIER_STACK_COUNT_CHANGE"` | 效果层数变化 事件主体 Modifier 效果 事件回调参数 stack_count_change integer 变化层数 事件回调参数 modifier Modifier 触发效果 事件回调参数 unit Unit 效果拥有者 |
| `ON_MONTAGE_BEGIN` | `"ON_MONTAGE_BEGIN"` | 剧情动画开始播放事件 事件主体 Default 多类型 事件回调参数 play_role Role 触发角色 事件回调参数 montage_id MontageKey 触发的剧情动画 事件回调参数 start_time Fixed start_time 事件回调参数 play_to_end boolean play_to_end 事件回调参数 play_time Fixed play_time 事件回调参数 transform_origin table transform_origin |
| `ON_MONTAGE_END` | `"ON_MONTAGE_END"` | 剧情动画结束播放事件 事件主体 Default 多类型 事件回调参数 play_role Role 触发角色 事件回调参数 montage_id MontageKey 触发的剧情动画 |
| `ON_PLAYER_ENTER_TAKE_PHOTO` | `"ON_PLAYER_ENTER_TAKE_PHOTO"` | 玩家进入拍照 事件主体 Global 全局触发器 事件回调参数 role Role 触发玩家 |
| `ON_PLAYER_LEAVE_TAKE_PHOTO` | `"ON_PLAYER_LEAVE_TAKE_PHOTO"` | 玩家退出拍照 事件主体 Global 全局触发器 事件回调参数 role Role 触发玩家 |
| `ON_PLAYER_TAKE_PHOTO` | `"ON_PLAYER_TAKE_PHOTO"` | 玩家拍照 事件主体 Global 全局触发器 事件回调参数 role Role 触发玩家 |
| `REPEAT_TIMEOUT` | `"REPEAT_TIMEOUT"` | 周期性计时器超时 事件主体 Default 多类型 注册参数 _delay Fixed 延时 |
| `ON_SKY_ENV_CHANGE` | `"ON_SKY_ENV_CHANGE"` | 天空环境变化 事件主体 Global 全局触发器 |
| `SPEC_CHARACTER_CLIMB_BEGIN` | `"SPEC_CHARACTER_CLIMB_BEGIN"` | 指定角色开始攀爬 事件主体 Character 角色 事件回调参数 unit Character 触发角色 事件回调参数 climb_target Obstacle 攀爬对象 |
| `SPEC_CHARACTER_CLIMB_END` | `"SPEC_CHARACTER_CLIMB_END"` | 指定角色结束攀爬 事件主体 Character 角色 事件回调参数 unit Character 触发角色 |
| `SPEC_CHARACTER_SELECT_EQUIPMENT_SLOT` | `"SPEC_CHARACTER_SELECT_EQUIPMENT_SLOT"` | 指定角色选中物品格 事件主体 Character 角色 注册参数 _slot_type Enums.EquipmentSlotType 物品格类型 注册参数 _slot_index integer EQUIPMENT_SLOT_INDEX 事件回调参数 event_unit Character 触发角色 |
| `SPEC_COMMODITY_OBTAIN` | `"SPEC_COMMODITY_OBTAIN"` | 指定道具被获取 事件主体 Default 多类型 注册参数 _commodity_id UgcCommodity 商城道具 事件回调参数 commodity_id UgcCommodity 商城道具 事件回调参数 camp_role_owner Role 携带道具的玩家 事件回调参数 commodity_num integer 获得数量 |
| `SPEC_LIFEENTITY_INTERACTED` | `"SPEC_LIFEENTITY_INTERACTED"` | 指定生物互动按钮被按下 事件主体 Creature 生物 事件回调参数 interact_lifeentity LifeEntity 互动触发者 事件回调参数 interact_unit Creature 互动目标 事件回调参数 interact_id InteractBtnID 互动按钮 |
| `SPEC_CREATURE_TOUCH_BEGIN` | `"SPEC_CREATURE_TOUCH_BEGIN"` | 指定生物被点击开始 事件主体 Creature 生物 事件回调参数 touch_unit Role 点击玩家 事件回调参数 touched_unit Creature 被点击的物体 事件回调参数 touch_pos Vector3 点击位置 |
| `SPEC_CREATURE_TOUCH_END` | `"SPEC_CREATURE_TOUCH_END"` | 指定生物被点击结束 事件主体 Creature 生物 事件回调参数 touch_unit Role 点击玩家 事件回调参数 touched_unit Creature 被点击的物体 事件回调参数 touch_pos Vector3 松开位置 |
| `SPEC_CUSTOMTRIGGERSPACE_DESTROY` | `"SPEC_CUSTOMTRIGGERSPACE_DESTROY"` | 指定触发区域销毁 事件主体 CustomTriggerSpace 触发区域 |
| `SPEC_EQUIPMENT_BATCH_USE_BEFORE` | `"SPEC_EQUIPMENT_BATCH_USE_BEFORE"` | 指定物品即将被批量使用 事件主体 Equipment 物品 事件回调参数 equipment Equipment 当前物品 事件回调参数 equipment_user LifeEntity 使用物品的角色/生物 事件回调参数 slot_type Enums.EquipmentSlotType 物品槽位类型 事件回调参数 slot_index integer 物品槽位索引 事件回调参数 use_count integer 批量使用次数 事件回调参数 cost_count integer 批量使用消耗数 |
| `SPEC_EQUIPMENT_CHANGE_SLOT` | `"SPEC_EQUIPMENT_CHANGE_SLOT"` | 指定物品位置发生变化 事件主体 Equipment 物品 事件回调参数 equipment Equipment 当前物品 事件回调参数 owner LifeEntity 持有者 事件回调参数 old_slot_type Enums.EquipmentSlotType 旧槽位类型 事件回调参数 old_index integer 旧槽位索引 事件回调参数 new_slot_type Enums.EquipmentSlotType 新槽位类型 事件回调参数 new_index integer 新槽位索引 |
| `SPEC_EQUIPMENT_DESTROY` | `"SPEC_EQUIPMENT_DESTROY"` | 指定物品销毁事件 事件主体 Equipment 物品 事件回调参数 equipment Equipment 当前物品 |
| `SPEC_EQUIPMENT_ENTER_CHAR_SLOT` | `"SPEC_EQUIPMENT_ENTER_CHAR_SLOT"` | 指定物品进入角色栏位 事件主体 Equipment 物品 注册参数 _slot_type Enums.EquipmentSlotType 物品格类型 事件回调参数 equipment Equipment 当前物品 事件回调参数 slot_type Enums.EquipmentSlotType 物品格类型 事件回调参数 owner Character 触发事件的角色 |
| `SPEC_EQUIPMENT_LEAVE_CHAR_SLOT` | `"SPEC_EQUIPMENT_LEAVE_CHAR_SLOT"` | 指定物品离开角色栏位 事件主体 Equipment 物品 注册参数 _slot_type Enums.EquipmentSlotType 物品格类型 事件回调参数 equipment Equipment 当前物品 事件回调参数 slot_type Enums.EquipmentSlotType 物品格类型 事件回调参数 owner Character 触发事件的角色 |
| `SPEC_EQUIPMENT_LOST` | `"SPEC_EQUIPMENT_LOST"` | 指定物品被失去 事件主体 Equipment 物品 事件回调参数 equipment Equipment 当前物品 事件回调参数 owner LifeEntity 持有者 事件回调参数 slot_type Enums.EquipmentSlotType 物品槽位类型 事件回调参数 slot_index integer 物品槽位索引 |
| `SPEC_EQUIPMENT_OBTAIN` | `"SPEC_EQUIPMENT_OBTAIN"` | 指定物品被获得 事件主体 Equipment 物品 事件回调参数 equipment Equipment 当前物品 事件回调参数 owner LifeEntity 持有者 事件回调参数 count integer 获得数量 |
| `SPEC_EQUIPMENT_SELECT` | `"SPEC_EQUIPMENT_SELECT"` | 指定物品被选中 事件主体 Equipment 物品 事件回调参数 equipment Equipment 当前物品 |
| `SPEC_EQUIPMENT_STACK_NUM_CHANGE` | `"SPEC_EQUIPMENT_STACK_NUM_CHANGE"` | 指定物品堆叠层数变化 事件主体 Equipment 物品 事件回调参数 equipment Equipment 当前物品 事件回调参数 variation integer 变化层数 |
| `SPEC_EQUIPMENT_SWAP_SLOT` | `"SPEC_EQUIPMENT_SWAP_SLOT"` | 指定物品发生位置交换 事件主体 Equipment 物品 事件回调参数 equipment Equipment 当前物品 |
| `SPEC_EQUIPMENT_UNSELECT` | `"SPEC_EQUIPMENT_UNSELECT"` | 指定物品被取消选中 事件主体 Equipment 物品 事件回调参数 equipment Equipment 当前物品 |
| `SPEC_EQUIPMENT_USE` | `"SPEC_EQUIPMENT_USE"` | 指定物品被使用 事件主体 Equipment 物品 事件回调参数 equipment Equipment 当前物品 |
| `SPEC_EQUIPMENT_USE_BEFORE` | `"SPEC_EQUIPMENT_USE_BEFORE"` | 指定物品被使用前 事件主体 Equipment 物品 事件回调参数 equipment Equipment 当前物品 事件回调参数 equipment_user LifeEntity 使用物品的角色/生物 |
| `SPEC_LIFEENTITY_ABILITY_DOWNGRADE` | `"SPEC_LIFEENTITY_ABILITY_DOWNGRADE"` | 指定生命体技能降级 事件主体 LifeEntity 生命体 事件回调参数 unit LifeEntity 技能拥有者 事件回调参数 ability Ability 触发技能 |
| `SPEC_LIFEENTITY_ABILITY_OBTAIN` | `"SPEC_LIFEENTITY_ABILITY_OBTAIN"` | 指定生命体获得技能 事件主体 LifeEntity 生命体 事件回调参数 unit LifeEntity 技能拥有者 事件回调参数 ability Ability 触发技能 |
| `SPEC_LIFEENTITY_ABILITY_REMOVE` | `"SPEC_LIFEENTITY_ABILITY_REMOVE"` | 指定生命体失去技能 事件主体 LifeEntity 生命体 事件回调参数 unit LifeEntity 技能拥有者 事件回调参数 ability Ability 触发技能 |
| `SPEC_LIFEENTITY_ABILITY_UPGRADE` | `"SPEC_LIFEENTITY_ABILITY_UPGRADE"` | 指定生命体技能升级 事件主体 LifeEntity 生命体 事件回调参数 unit LifeEntity 技能拥有者 事件回调参数 ability Ability 触发技能 |
| `SPEC_LIFEENTITY_CONTACT_BEGIN` | `"SPEC_LIFEENTITY_CONTACT_BEGIN"` | 指定生命体发生碰撞开始 事件主体 LifeEntity 生命体 事件回调参数 unit1 LifeEntity 碰撞者 事件回调参数 unit2 Unit 被碰撞者 |
| `SPEC_LIFEENTITY_CONTACT_END` | `"SPEC_LIFEENTITY_CONTACT_END"` | 指定生命体发生碰撞结束 事件主体 LifeEntity 生命体 事件回调参数 unit1 LifeEntity 碰撞者 事件回调参数 unit2 Unit 被碰撞者 |
| `SPEC_LIFEENTITY_DEFEAT` | `"SPEC_LIFEENTITY_DEFEAT"` | 指定生命体击败其他生命体 事件主体 LifeEntity 生命体 事件回调参数 dmg_unit LifeEntity 伤害来源 事件回调参数 die_unit LifeEntity 被击败者 |
| `SPEC_LIFEENTITY_DESTROY` | `"SPEC_LIFEENTITY_DESTROY"` | 指定生命体被销毁 事件主体 LifeEntity 生命体 |
| `SPEC_LIFEENTITY_DIE` | `"SPEC_LIFEENTITY_DIE"` | 指定生命体被击败 事件主体 LifeEntity 生命体 事件回调参数 die_unit LifeEntity 被击败者 事件回调参数 dmg_unit LifeEntity 伤害来源 |
| `SPEC_LIFEENTITY_DIE_BEFORE` | `"SPEC_LIFEENTITY_DIE_BEFORE"` | 指定生命体被击败前 事件主体 LifeEntity 生命体 事件回调参数 unit LifeEntity 被击败者 事件回调参数 dmg_unit Unit 伤害来源 |
| `SPEC_LIFEENTITY_DMGED_AFTER` | `"SPEC_LIFEENTITY_DMGED_AFTER"` | 指定生命体受到伤害后 事件主体 LifeEntity 生命体 事件回调参数 _dmg_schema DamageSchema DAMAGE_TYPE 事件回调参数 _src Unit 伤害来源 事件回调参数 _dst LifeEntity 伤害目标 事件回调参数 _dmg Damage DAMAGE_OBJ 事件回调参数 _shield_value Fixed 被吸收的伤害值 |
| `SPEC_LIFEENTITY_DMGED_BEFORE` | `"SPEC_LIFEENTITY_DMGED_BEFORE"` | 指定生命体受到伤害前 事件主体 LifeEntity 生命体 事件回调参数 _dmg_schema DamageSchema DAMAGE_TYPE 事件回调参数 _src Unit 伤害来源 事件回调参数 _dst LifeEntity 伤害目标 事件回调参数 _dmg Damage DAMAGE_OBJ |
| `SPEC_LIFEENTITY_DMG_AFTER` | `"SPEC_LIFEENTITY_DMG_AFTER"` | 指定生命体造成伤害后 事件主体 LifeEntity 生命体 事件回调参数 _dmg_schema DamageSchema DAMAGE_TYPE 事件回调参数 _src LifeEntity 伤害来源 事件回调参数 _dst LifeEntity 伤害目标 事件回调参数 _dmg Damage DAMAGE_OBJ 事件回调参数 _shield_value Fixed 被吸收的伤害值 |
| `SPEC_LIFEENTITY_DMG_BEFORE` | `"SPEC_LIFEENTITY_DMG_BEFORE"` | 指定生命体造成伤害前 事件主体 LifeEntity 生命体 事件回调参数 _dmg_schema DamageSchema DAMAGE_TYPE 事件回调参数 _src LifeEntity 伤害来源 事件回调参数 _dst LifeEntity 伤害目标 事件回调参数 _dmg Damage DAMAGE_OBJ |
| `SPEC_LIFEENTITY_ENTER_VEHICLE` | `"SPEC_LIFEENTITY_ENTER_VEHICLE"` | 指定生命体上载具 事件主体 LifeEntity 生命体 事件回调参数 unit LifeEntity 触发角色/生物 事件回调参数 vehicle Vehicle 触发载具 |
| `SPEC_LIFEENTITY_EQUIPMENT_SLOT_CHANGE` | `"SPEC_LIFEENTITY_EQUIPMENT_SLOT_CHANGE"` | 指定生命体持有物品槽位发生变化 事件主体 LifeEntity 生命体 事件回调参数 equipment Equipment 触发物品 事件回调参数 old_slot_type Enums.EquipmentSlotType 旧槽位类型 事件回调参数 old_index integer 旧槽位索引 事件回调参数 new_slot_type Enums.EquipmentSlotType 新槽位类型 事件回调参数 new_index integer 新槽位索引 |
| `SPEC_LIFEENTITY_EXIT_VEHICLE` | `"SPEC_LIFEENTITY_EXIT_VEHICLE"` | 指定生命体下载具 事件主体 LifeEntity 生命体 事件回调参数 unit LifeEntity 触发角色/生物 事件回调参数 vehicle Vehicle 触发载具 |
| `SPEC_LIFEENTITY_GAIN_EXP` | `"SPEC_LIFEENTITY_GAIN_EXP"` | 生命体获得经验 事件主体 LifeEntity 生命体 事件回调参数 unit LifeEntity 获得者 事件回调参数 exp Fixed 经验值 |
| `SPEC_LIFEENTITY_GET_ITEMBOX` | `"SPEC_LIFEENTITY_GET_ITEMBOX"` | 指定生命体获得道具箱 事件主体 LifeEntity 生命体 事件回调参数 life_entity LifeEntity 获得道具的角色/生物 |
| `SPEC_LIFEENTITY_JUMP` | `"SPEC_LIFEENTITY_JUMP"` | 指定生命体跳跃 事件主体 LifeEntity 生命体 事件回调参数 unit LifeEntity 跳跃者 |
| `SPEC_LIFEENTITY_LEVEL_UP` | `"SPEC_LIFEENTITY_LEVEL_UP"` | 生命体升级 事件主体 LifeEntity 生命体 事件回调参数 unit LifeEntity 获得者 事件回调参数 level integer 当前等级 事件回调参数 ori_level integer 升级前等级 |
| `SPEC_LIFEENTITY_LIFTED_BEGIN` | `"SPEC_LIFEENTITY_LIFTED_BEGIN"` | 指定生命体被其他单位举起 事件主体 LifeEntity 生命体 事件回调参数 lift_unit Unit 抓举者 事件回调参数 lifted_unit LifeEntity 被抓举者 |
| `SPEC_LIFEENTITY_LIFTED_END` | `"SPEC_LIFEENTITY_LIFTED_END"` | 指定生命体被其他单位放下 事件主体 LifeEntity 生命体 事件回调参数 lift_unit Unit 抓举者 事件回调参数 lifted_unit LifeEntity 被抓举者 |
| `SPEC_LIFEENTITY_LIFT_BEGIN` | `"SPEC_LIFEENTITY_LIFT_BEGIN"` | 指定生命体举起其他单位 事件主体 LifeEntity 生命体 事件回调参数 lift_unit LifeEntity 抓举者 事件回调参数 lifted_unit Unit 被抓举者 |
| `SPEC_LIFEENTITY_LIFT_END` | `"SPEC_LIFEENTITY_LIFT_END"` | 指定生命体放下其他单位 事件主体 LifeEntity 生命体 事件回调参数 lift_unit LifeEntity 抓举者 事件回调参数 lifted_unit Unit 被抓举者 |
| `SPEC_LIFEENTITY_MOVE_BEGIN` | `"SPEC_LIFEENTITY_MOVE_BEGIN"` | 指定生命体移动开始 事件主体 LifeEntity 生命体 事件回调参数 unit LifeEntity 获得者 |
| `SPEC_LIFEENTITY_MOVE_END` | `"SPEC_LIFEENTITY_MOVE_END"` | 指定生命体移动结束 事件主体 LifeEntity 生命体 事件回调参数 unit LifeEntity 获得者 |
| `SPEC_LIFEENTITY_REBORN` | `"SPEC_LIFEENTITY_REBORN"` | 指定生命体复活 事件主体 LifeEntity 生命体 事件回调参数 unit LifeEntity 复活者 |
| `SPEC_LIFEENTITY_RELEASE_ABILITY` | `"SPEC_LIFEENTITY_RELEASE_ABILITY"` | 指定生命体释放技能 事件主体 LifeEntity 生命体 事件回调参数 unit LifeEntity 触发角色/生物 事件回调参数 ability Ability 触发技能 |
| `SPEC_LIFEENTITY_ROLL_BEGIN` | `"SPEC_LIFEENTITY_ROLL_BEGIN"` | 指定生命体滚动开始 事件主体 LifeEntity 生命体 事件回调参数 unit LifeEntity 滚动者 |
| `SPEC_LIFEENTITY_ROLL_END` | `"SPEC_LIFEENTITY_ROLL_END"` | 指定生命体滚动结束 事件主体 LifeEntity 生命体 事件回调参数 unit LifeEntity 滚动者 |
| `SPEC_LIFEENTITY_RUSH` | `"SPEC_LIFEENTITY_RUSH"` | 指定生命体前扑 事件主体 LifeEntity 生命体 事件回调参数 unit LifeEntity 前扑者 事件回调参数 dir Vector3 前扑方向 |
| `SPEC_LIFEENTITY_START_LIFT` | `"SPEC_LIFEENTITY_START_LIFT"` | 指定生命体抓举 事件主体 LifeEntity 生命体 事件回调参数 unit LifeEntity 抓举者 事件回调参数 dir Vector3 抓举方向 |
| `MODIFIER_LOSS` | `"MODIFIER_LOSS"` | 失去效果 事件主体 Modifier 效果 事件回调参数 modifier Modifier 触发效果 事件回调参数 unit Unit 效果拥有者 |
| `SPEC_OBSTACLE_CONTACT_BEGIN` | `"SPEC_OBSTACLE_CONTACT_BEGIN"` | 指定组件发生碰撞开始 事件主体 Obstacle 组件 事件回调参数 unit1 Obstacle 碰撞者 事件回调参数 unit2 Unit 被碰撞者 事件回调参数 contact_pos Vector3 碰撞位置 |
| `SPEC_OBSTACLE_CONTACT_END` | `"SPEC_OBSTACLE_CONTACT_END"` | 指定组件发生碰撞结束 事件主体 Obstacle 组件 事件回调参数 unit1 Obstacle 碰撞者 事件回调参数 unit2 Unit 被碰撞者 |
| `SPEC_OBSTACLE_DESTROY` | `"SPEC_OBSTACLE_DESTROY"` | 指定组件销毁 事件主体 Obstacle 组件 |
| `SPEC_OBSTACLE_INTERACTED` | `"SPEC_OBSTACLE_INTERACTED"` | 指定组件互动按钮被按下 事件主体 Obstacle 组件 事件回调参数 interact_lifeentity LifeEntity 互动触发者 事件回调参数 interact_unit Obstacle 互动目标 事件回调参数 interact_id InteractBtnID 互动按钮 |
| `SPEC_OBSTACLE_LIFTED_BEGIN` | `"SPEC_OBSTACLE_LIFTED_BEGIN"` | 指定组件被举起 事件主体 Obstacle 组件 事件回调参数 lift_unit Unit 抓举者 事件回调参数 lifted_unit Obstacle 被抓举者 |
| `SPEC_OBSTACLE_LIFTED_END` | `"SPEC_OBSTACLE_LIFTED_END"` | 指定组件被放下 事件主体 Obstacle 组件 事件回调参数 lift_unit Unit 抓举者 事件回调参数 lifted_unit Obstacle 被抓举者 |
| `SPEC_OBSTACLE_ON_DAMAGED` | `"SPEC_OBSTACLE_ON_DAMAGED"` | 指定组件受到伤害 事件主体 Obstacle 组件 事件回调参数 src Unit 伤害来源 事件回调参数 src_ability Ability 来源技能 事件回调参数 damage Fixed 伤害值 |
| `SPEC_OBSTACLE_TOUCH_BEGIN` | `"SPEC_OBSTACLE_TOUCH_BEGIN"` | 指定组件被点击开始 事件主体 Obstacle 组件 事件回调参数 touch_unit Role 点击玩家 事件回调参数 touched_unit Obstacle 被点击的物体 事件回调参数 touch_pos Vector3 点击位置 |
| `SPEC_OBSTACLE_TOUCH_END` | `"SPEC_OBSTACLE_TOUCH_END"` | 指定组件被点击结束 事件主体 Obstacle 组件 事件回调参数 touch_unit Role 点击玩家 事件回调参数 touched_unit Obstacle 被点击的物体 事件回调参数 touch_pos Vector3 松开位置 |
| `SPEC_ROLE_ACHIEVEMENT_COMPLETE` | `"SPEC_ROLE_ACHIEVEMENT_COMPLETE"` | 指定玩家完成自定义成就 事件主体 Global 全局触发器 注册参数 _role RoleID 目标玩家 事件回调参数 role Role 目标玩家 事件回调参数 achieve_id Achievement 目标成就 |
| `SPEC_ROLE_ACHIEVEMENT_REWARD_GAIN` | `"SPEC_ROLE_ACHIEVEMENT_REWARD_GAIN"` | 指定玩家领取成就奖励 事件主体 Global 全局触发器 注册参数 _role RoleID 目标玩家 注册参数 _achievement Achievement 目标成就 事件回调参数 role Role 目标玩家 事件回调参数 achieve_id Achievement 目标成就 |
| `SPEC_ROLE_CAMP_CHANGE` | `"SPEC_ROLE_CAMP_CHANGE"` | 指定玩家阵营发生变化 事件主体 Global 全局触发器 注册参数 _role RoleID 目标玩家 事件回调参数 role Role 目标玩家 事件回调参数 camp_before_change Camp 变化前的阵营 事件回调参数 camp_after_change Camp 变化后的阵营 |
| `SPEC_ROLE_EXIT_GAME` | `"SPEC_ROLE_EXIT_GAME"` | 指定玩家离开游戏 事件主体 Global 全局触发器 注册参数 _role Role 目标玩家 事件回调参数 role Role 目标玩家 |
| `SPEC_ROLE_GAME_LOSE` | `"SPEC_ROLE_GAME_LOSE"` | 指定玩家游戏失败 事件主体 Global 全局触发器 注册参数 _role RoleID 目标玩家 事件回调参数 role Role 目标玩家 |
| `SPEC_ROLE_GAME_WIN` | `"SPEC_ROLE_GAME_WIN"` | 指定玩家游戏胜利 事件主体 Global 全局触发器 注册参数 _role RoleID 目标玩家 事件回调参数 role Role 目标玩家 |
| `SPEC_ROLE_PLAY_ADVERTISEMENT_FAILURE` | `"SPEC_ROLE_PLAY_ADVERTISEMENT_FAILURE"` | 指定玩家播放广告失败 事件主体 Global 全局触发器 注册参数 _role Role 目标玩家 注册参数 _ad_tag string ADVERTISEMENT_TAG |
| `SPEC_ROLE_PLAY_ADVERTISEMENT_SUCCESS` | `"SPEC_ROLE_PLAY_ADVERTISEMENT_SUCCESS"` | 指定玩家播放广告成功 事件主体 Global 全局触发器 注册参数 _role Role 目标玩家 注册参数 _ad_tag string ADVERTISEMENT_TAG |
| `SPEC_ROLE_PURCHASE_GOODS` | `"SPEC_ROLE_PURCHASE_GOODS"` | 指定玩家成功购买商品 事件主体 Global 全局触发器 注册参数 _role RoleID 目标玩家 事件回调参数 role Role 目标玩家 事件回调参数 goods_id UgcGoods TARGET_GOODS |
| `SPEC_ROLE_SHARE_MAP` | `"SPEC_ROLE_SHARE_MAP"` | 指定玩家分享地图 事件主体 Global 全局触发器 注册参数 _role RoleID 目标玩家 事件回调参数 role Role 目标玩家 |
| `SPEC_ROLE_VOICE_VOLUME_CHANGE` | `"SPEC_ROLE_VOICE_VOLUME_CHANGE"` | 语音音量变化事件 事件主体 Default 多类型 注册参数 _role Role 目标玩家 事件回调参数 voice_volume Fixed 当前的音量 |
| `SPEC_TRIGGERSPACE_DESTROY` | `"SPEC_TRIGGERSPACE_DESTROY"` | 指定逻辑体销毁 事件主体 TriggerSpace 逻辑体 |
| `TIMEOUT` | `"TIMEOUT"` | 计时器超时 事件主体 Default 多类型 注册参数 _delay Fixed DELAY_TIME |
| `UI_CUSTOM_EVENT` | `"UI_CUSTOM_EVENT"` | UI自定义事件(附带玩家) 事件主体 Default 多类型 注册参数 _name string 自定义事件 事件回调参数 role_id RoleID 触发事件的玩家ID 事件回调参数 role Role 触发事件的玩家 事件回调参数 eui_node_id ENode 触发事件的界面控件 |


## Equipment

### 方法

#### `Equipment:can_drop`

获取物品能否丢弃

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 能否丢弃 |

#### `Equipment:change_current_stack_size`

增加/减少物品当前堆叠数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_num` | `integer` | 是 | 堆叠数 |

#### `Equipment:change_max_stack_size`

增加/减少物品最大堆叠数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_num` | `integer` | 是 | 堆叠数 |

#### `Equipment:destroy_equipment`

删除物品

#### `Equipment:drop`

物品被丢弃

#### `Equipment:get_current_stack_num`

获取物品当前堆叠层数

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 当前堆叠层数 |

#### `Equipment:get_desc`

获取物品描述

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 物品描述 |

#### `Equipment:get_economic_value`

获取物品的抵押价格

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_res_type` | `string` | 是 | 货币类型 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 卖价 |

#### `Equipment:get_equipment_slot`

获取物品所在槽位

**返回值:**

| 类型 | 说明 |
|------|------|
| `EquipmentSlot` | 槽位 |

#### `Equipment:get_equipment_type`

获取物品的物品类型

**返回值:**

| 类型 | 说明 |
|------|------|
| `Enums.EquipmentType` | 物品类型 |

#### `Equipment:get_key`

获取物品的物品编号

**返回值:**

| 类型 | 说明 |
|------|------|
| `EquipmentKey` | 物品编号 |

#### `Equipment:get_max_stack_num`

获取物品最大堆叠层数

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 最大堆叠层数 |

#### `Equipment:get_name`

获取物品名称

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 物品名称 |

#### `Equipment:get_owner_character`

获取持有物品的角色

**返回值:**

| 类型 | 说明 |
|------|------|
| `Character` | 角色 |

#### `Equipment:get_owner_creature`

获取持有物品的生物

**返回值:**

| 类型 | 说明 |
|------|------|
| `Creature` | 生物 |

#### `Equipment:get_position`

获取物品位置

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 物品位置 |

#### `Equipment:get_price`

获取物品的抵押价格

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_res_type` | `string` | 是 | 货币类型 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 卖价 |

#### `Equipment:get_slot_type`

获取物品所在槽位类型

**返回值:**

| 类型 | 说明 |
|------|------|
| `Enums.EquipmentSlotType` | 槽位类型 |

#### `Equipment:get_unit`

获取物品单位

**返回值:**

| 类型 | 说明 |
|------|------|
| `Obstacle` | 物品单位 |

#### `Equipment:has_owner`

物品是否被持有

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否被持有 |

#### `Equipment:is_auto_picking`

获取物品是否自动拾取

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否自动拾取 |

#### `Equipment:is_auto_using`

获取物品是否自动使用

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否自动使用 |

#### `Equipment:move_to_slot`

移动物品到指定槽位

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_slot_type` | `Enums.EquipmentSlotType` | 是 | 槽位类型 |
| `_slot` | `integer` | 是 | 槽位 |

#### `Equipment:set_auto_aim`

设置枪械自动瞄准

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_is_auto_aim` | `boolean` | 是 | 是否自动瞄准 |

#### `Equipment:set_auto_aim_enabled`

设置枪械自动瞄准

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_is_auto_aim` | `boolean` | 是 | 是否自动瞄准 |

#### `Equipment:set_auto_fire`

设置枪械自动开火

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_is_auto_fire` | `boolean` | 是 | 是否自动开火 |

#### `Equipment:set_auto_fire_enabled`

设置枪械自动开火

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_is_auto_fire` | `boolean` | 是 | 是否自动开火 |

#### `Equipment:set_charge_cost_free`

设置物品充能无消耗

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_is_free` | `boolean` | 是 | 是否无消耗 |

#### `Equipment:set_current_stack_num`

设置物品当前堆叠数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_num` | `integer` | 是 | 堆叠数 |

#### `Equipment:set_desc`

设置物品的描述

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_desc` | `string` | 是 | 描述 |

#### `Equipment:set_droppable`

设置物品能否丢弃

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_droppable` | `boolean` | 是 | 能否丢弃 |

#### `Equipment:set_economic_value`

设置物品的抵押价格

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_res_type` | `string` | 是 | 货币类型 |
| `_price` | `integer` | 是 | 卖价 |

#### `Equipment:set_icon`

设置物品的图标

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_icon_key` | `ImageKey` | 是 | 图标 |

#### `Equipment:set_max_stack_num`

设置物品最大堆叠数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_num` | `integer` | 是 | 堆叠数 |

#### `Equipment:set_name`

设置物品的名称

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_name` | `string` | 是 | 名称 |

#### `Equipment:set_price`

设置物品的抵押价格

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_res_type` | `string` | 是 | 货币类型 |
| `_price` | `integer` | 是 | 卖价 |

#### `Equipment:set_saleable`

设置物品能否出售

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_saleable` | `boolean` | 是 | 能否出售 |

#### `Equipment:set_usable`

设置物品能否使用

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_usable` | `boolean` | 是 | 能否使用 |

#### `Equipment:start_charge`

使物品开始充能


## EquipmentComp

### 方法

#### `EquipmentComp:clear_selected_equipment_slot`

清除单位物品格选中状态

#### `EquipmentComp:consume_equipment`

消耗物品

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_equipment_key` | `EquipmentKey` | 是 | 物品编号 |
| `_consume_num` | `integer` | 是 | 消耗数量 |

#### `EquipmentComp:create_equipment_to_slot`

创建物品到指定类型槽位

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `EquipmentKey` | 是 | 物品编号 |
| `_slot_type` | `Enums.EquipmentSlotType` | 是 | 槽位类型 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Equipment` | 创建的物品 |

#### `EquipmentComp:get_equipment_by_slot`

获取身上的物品

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_slot_type` | `Enums.EquipmentSlotType` | 是 | 槽位类型 |
| `_slot_index` | `integer` | 是 | 槽位索引 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Equipment` | 物品 |

#### `EquipmentComp:get_equipment_list`

获取角色/生物持有的物品预设列表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_equipment_key` | `EquipmentKey` | 是 | 物品类型 |
| `_exclude_equipped` | `boolean?` | 否 | 不搜索物品栏 |
| `_exclude_bag` | `boolean?` | 否 | 不搜索背包栏 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Equipment[]` | 物品列表 |

#### `EquipmentComp:get_equipment_list_by_slot`

获取持有的物品列表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_slot_type` | `Enums.EquipmentSlotType` | 是 | 槽位类型 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Equipment[]` | 物品 |

#### `EquipmentComp:get_equipment_list_by_slot_type`

获取持有的物品列表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_slot_type` | `Enums.EquipmentSlotType` | 是 | 槽位类型 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Equipment[]` | 物品 |

#### `EquipmentComp:get_equipment_max_count`

获取最大可持有的物品数量

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_slot_type` | `Enums.EquipmentSlotType` | 是 | 槽位类型 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 数量 |

#### `EquipmentComp:get_equipment_max_num_by_slot`

获取最大可持有的物品数量

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_slot_type` | `Enums.EquipmentSlotType` | 是 | 槽位类型 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 数量 |

#### `EquipmentComp:get_selected_equipment`

获取当前选中的物品

**返回值:**

| 类型 | 说明 |
|------|------|
| `Equipment` | 物品 |

#### `EquipmentComp:select_equipment_slot`

设置单位选中物品格

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_slot_type` | `Enums.EquipmentSlotType` | 是 | 槽位类型 |
| `_slot_index` | `integer` | 是 | 槽位索引 |

#### `EquipmentComp:set_equipment_max_count`

修改最大可持有的物品数量

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_slot_type` | `Enums.EquipmentSlotType` | 是 | 槽位类型 |
| `_slot_num` | `integer` | 是 | 数量 |

#### `EquipmentComp:set_selected_equipment_slot`

设置单位选中物品格

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_slot_type` | `Enums.EquipmentSlotType` | 是 | 槽位类型 |
| `_slot_index` | `integer` | 是 | 槽位索引 |


## ExprDeviceComp

### 方法

#### `ExprDeviceComp:disable_expr_device_by_name`

通过名称禁用表现器

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_name` | `string` | 是 | 名称 |

#### `ExprDeviceComp:enable_expr_device_by_name`

通过名称激活表现器

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_name` | `string` | 是 | 名称 |


## GameAPI

### 方法

#### `GameAPI:ability_prefab_get_desc`

获取技能预设描述

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_id` | `AbilityKey` | 是 | 技能编号 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 技能描述 |

#### `GameAPI:ability_prefab_get_name`

获取技能预设名称

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_id` | `AbilityKey` | 是 | 技能编号 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 技能名称 |

#### `GameAPI:ability_prefab_get_prop_by_type`

获取技能预设的属性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value_type` | `Enums.ValueType` | 是 | 值类型 |
| `_key` | `AbilityKey` | 是 | 技能编号 |
| `_prop` | `string` | 是 | 名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `any` | 属性值 |

#### `GameAPI:ability_prefab_has_kv`

技能预设是否存在自定义值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_key` | `AbilityKey` | 是 | 技能编号 |
| `_prop` | `string` | 是 | 名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否存在 |

#### `GameAPI:add_pathpoint`

测试描述- 添加路径点

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_path_id` | `PathID` | 是 | 路径Id |
| `_index` | `integer` | 是 | 路点索引 |
| `_point_id` | `PathPointID` | 是 | 路点 |

#### `GameAPI:add_road_point`

为游戏全局添加路点（路径）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_path_id` | `PathID` | 是 | 路径 |
| `_index` | `integer` | 是 | 路点索引 |
| `_point_id` | `PathPointID` | 是 | 路点 |

#### `GameAPI:add_sheet_column`

表添加列

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sheet_id` | `SheetID` | 是 | 表格 |
| `_key` | `string` | 是 | 列名 |
| `_type_name` | `string` | 是 | 类型 |

#### `GameAPI:add_table_column`

表添加列

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sheet_id` | `SheetID` | 是 | 表格 |
| `_key` | `string` | 是 | 列名 |
| `_type_name` | `string` | 是 | 类型 |

#### `GameAPI:clear_sheet`

清空表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sheet_id` | `SheetID` | 是 | 表格 |

#### `GameAPI:clear_table`

清空表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sheet_id` | `SheetID` | 是 | 表格 |

#### `GameAPI:config_table_add_column`

表添加列

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sheet_id` | `SheetID` | 是 | 表格 |
| `_key` | `string` | 是 | 列名 |
| `_type_name` | `string` | 是 | 类型 |

#### `GameAPI:copy_sheet`

复制表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sheet_id` | `SheetID` | 是 | 表格 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `SheetID` | 表格 |

#### `GameAPI:copy_table`

复制表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sheet_id` | `SheetID` | 是 | 表格 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `SheetID` | 表格 |

#### `GameAPI:copy_vehicle`

复制载具

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_vehicle` | `Vehicle` | 是 | 载具 |
| `_pos` | `Vector3` | 是 | 位置 |
| `_direction` | `Vector3` | 是 | 朝向 |
| `_role` | `Role?` | 否 | 所属玩家 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vehicle` | 创建出的载具 |

#### `GameAPI:create_config_table`

创建表

**返回值:**

| 类型 | 说明 |
|------|------|
| `SheetID` | 表格 |

#### `GameAPI:create_constant_wind_field`

创建一个固定风场单位

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_pos` | `Vector3` | 是 | 位置 |
| `_wind_type` | `Enums.WindFieldShapeType` | 是 | 形状 |
| `_wind_range` | `Fixed` | 是 | 范围 |
| `_duration` | `Fixed` | 是 | 持续时间 |

#### `GameAPI:create_creature_fixed_scale`

测试描述- 创建一个生物

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_u_key` | `UnitKey` | 是 | 单位编号（新） |
| `_pos` | `Vector3` | 是 | 位置 |
| `_rotation` | `Quaternion` | 是 | 旋转 |
| `_scale_ratio` | `Fixed` | 是 | 缩放大小 |
| `_role` | `Role?` | 否 | 所属玩家 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Creature` | 创建出的生物 |

#### `GameAPI:create_customtriggerspace`

创建一个触发区域

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_u_key` | `CustomTriggerSpaceKey` | 是 | 触发区域编号 |
| `_pos` | `Vector3` | 是 | 位置 |
| `_rotation` | `Quaternion` | 是 | 旋转 |
| `_scale` | `Vector3` | 是 | 缩放 |
| `_role` | `Role?` | 否 | 所属玩家 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `CustomTriggerSpace` | 创建出的触发区域 |

#### `GameAPI:create_decoration`

创建一个装饰物

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_u_key` | `DecorationKey` | 是 | 单位编号 |
| `_pos` | `Vector3` | 是 | 位置 |
| `_rotation` | `Quaternion` | 是 | 旋转 |
| `_scale` | `Vector3` | 是 | 缩放 |
| `_parent` | `Unit?` | 否 | 绑定对象 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Decoration` | 创建的装饰物 |

#### `GameAPI:create_equipment`

创建物品到坐标点

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_equipment_eid` | `EquipmentKey` | 是 | 物品编号 |
| `_pos` | `Vector3` | 是 | 位置 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Equipment` | 物品 |

#### `GameAPI:create_equipment_in_scene`

创建物品到坐标点

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_equipment_eid` | `EquipmentKey` | 是 | 物品编号 |
| `_pos` | `Vector3` | 是 | 位置 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Equipment` | 物品 |

#### `GameAPI:create_joint_assistant`

创建关节助手

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit_key` | `Enums.JointAssistantKey` | 是 | 关节助手类型 |
| `_unit1` | `Unit` | 是 | 连接主体 |
| `_unit2` | `Unit` | 是 | 连接目标 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `JointAssistant` | 创建出的关节助手 |

#### `GameAPI:create_life_entity`

创建一个生命体

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit_key` | `UnitKey` | 是 | 单位编号 |
| `_pos` | `Vector3` | 是 | 位置 |
| `_rotation` | `Quaternion` | 是 | 旋转 |
| `_scale_ratio` | `Fixed` | 是 | 缩放大小 |
| `_role` | `Role?` | 否 | 所属玩家 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `LifeEntity` | 创建出的生命体 |

#### `GameAPI:create_obstacle`

创建一个组件

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_u_key` | `UnitKey` | 是 | 组件编号 |
| `_pos` | `Vector3` | 是 | 位置 |
| `_rotation` | `Quaternion` | 是 | 旋转 |
| `_scale` | `Vector3` | 是 | 缩放 |
| `_role` | `Role?` | 否 | 所属玩家 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Obstacle` | 创建的组件 |

#### `GameAPI:create_obstacle_from_geometry`

创建一个组件（自定义几何）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_u_key` | `UnitKey` | 是 | 组件编号 |
| `_pos` | `Vector3` | 是 | 位置 |
| `_rotation` | `Quaternion` | 是 | 旋转 |
| `_scale` | `Vector3` | 是 | 缩放 |
| `_role` | `Role?` | 否 | 所属玩家 |
| `_geometry_path` | `string?` | 否 | 自定义几何体路径 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Obstacle` | 创建的组件 |

#### `GameAPI:create_scene_ui_at_point`

创建场景界面到坐标点

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_layer_key` | `E3DLayerKey` | 是 | 场景界面预设编号 |
| `_pos` | `Vector3` | 是 | 坐标点 |
| `_duration` | `Fixed?` | 否 | 持续事件 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `E3DLayer` | 场景界面 |

#### `GameAPI:create_sfx_with_socket`

播放特效并绑定

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sfx_key` | `SfxKey` | 是 | 特效编号 |
| `_unit` | `Unit` | 是 | 起点单位 |
| `_socket_name` | `Enums.ModelSocket` | 是 | 起点节点 |
| `_scale` | `Fixed` | 是 | 缩放 |
| `_duration` | `Fixed` | 是 | 持续时间 |
| `_bind_type` | `Enums.BindType` | 是 | 绑定方式 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `SfxID` | 特效ID |

#### `GameAPI:create_sfx_with_socket_offset`

播放特效并绑定

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sfx_key` | `SfxKey` | 是 | 特效编号 |
| `_unit` | `Unit` | 是 | 起点单位 |
| `_socket_name` | `Enums.ModelSocket` | 是 | 起点节点 |
| `_offset` | `Vector3` | 是 | 偏移 |
| `_rot` | `Quaternion` | 是 | 旋转 |
| `_scale` | `Fixed` | 是 | 缩放 |
| `_duration` | `Fixed` | 是 | 持续时间 |
| `_bind_type` | `Enums.BindType` | 是 | 绑定方式 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `SfxID` | 特效ID |

#### `GameAPI:create_sheet`

创建表

**返回值:**

| 类型 | 说明 |
|------|------|
| `SheetID` | 表格 |

#### `GameAPI:create_table`

创建表

**返回值:**

| 类型 | 说明 |
|------|------|
| `SheetID` | 表格 |

#### `GameAPI:create_triggerspace`

创建一个逻辑体

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_u_key` | `TriggerSpaceKey` | 是 | 逻辑体编号 |
| `_pos` | `Vector3` | 是 | 位置 |
| `_rotation` | `Quaternion` | 是 | 旋转 |
| `_scale` | `Vector3` | 是 | 缩放 |
| `_role` | `Role?` | 否 | 所属玩家 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `TriggerSpace` | 创建的逻辑体 |

#### `GameAPI:create_unit_group`

创建一个组件组

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit_group_id` | `UnitGroupKey` | 是 | 单位编号 |
| `_pos` | `Vector3` | 是 | 位置 |
| `_root_quaternion` | `Quaternion` | 是 | 旋转 |
| `_role` | `Role?` | 否 | 所属玩家 |
| `_use_center_offset` | `boolean?` | 否 | 应用原点偏移 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `UnitGroup` | 创建出的单位 |

#### `GameAPI:create_unit_with_scale`

创建一个缩放单位

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_u_key` | `UnitKey` | 是 | 单位编号 |
| `_pos` | `Vector3` | 是 | 位置 |
| `_rotation` | `Quaternion` | 是 | 旋转 |
| `_scale` | `Vector3` | 是 | 缩放 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Unit` | 创建出的单位 |

#### `GameAPI:create_vehicle`

创建载具

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_vehicle_key` | `VehicleKey` | 是 | 载具编号 |
| `_pos` | `Vector3` | 是 | 位置 |
| `_direction` | `Vector3` | 是 | 朝向 |
| `_role` | `Role?` | 否 | 所属玩家 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vehicle` | 载具 |

#### `GameAPI:creature_prefab_get_kv_by_type`

获取生物预设的自定义值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value_type` | `Enums.ValueType` | 是 | 值类型 |
| `_key` | `CreatureKey` | 是 | 生物编号 |
| `_prop` | `string` | 是 | 名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `any` | 自定义值 |

#### `GameAPI:creature_prefab_get_prop_by_type`

获取生物预设的属性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value_type` | `Enums.ValueType` | 是 | 值类型 |
| `_key` | `CreatureKey` | 是 | 生物编号 |
| `_prop` | `string` | 是 | 名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `any` | 属性值 |

#### `GameAPI:creature_prefab_has_kv`

生物预设是否存在自定义值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit_key` | `CreatureKey` | 是 | 生物编号 |
| `_prop` | `string` | 是 | 名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否存在 |

#### `GameAPI:customtriggerspace_prefab_get_kv_by_type`

获取触发区域预设的自定义值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value_type` | `Enums.ValueType` | 是 | 值类型 |
| `_key` | `CustomTriggerSpaceKey` | 是 | 逻辑体编号 |
| `_prop` | `string` | 是 | 名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `any` | 自定义值 |

#### `GameAPI:customtriggerspace_prefab_get_prop_by_type`

获取触发区域预设的属性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value_type` | `Enums.ValueType` | 是 | 值类型 |
| `_key` | `CustomTriggerSpaceKey` | 是 | 逻辑体编号 |
| `_prop` | `string` | 是 | 名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `any` | 属性值 |

#### `GameAPI:customtriggerspace_prefab_has_kv`

触发区域预设是否存在自定义值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `CustomTriggerSpaceKey` | 是 | 触发区域编号 |
| `_prop` | `string` | 是 | 名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否存在 |

#### `GameAPI:deal_damage`

造成伤害

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_dst` | `LifeEntity` | 是 | 目标单位 |
| `_dmg` | `Fixed` | 是 | 伤害 |
| `_src` | `Unit?` | 否 | 伤害来源 |
| `_schema` | `DamageSchema?` | 否 | 伤害类型 |
| `_data` | `table?` | 否 | 参数 |

#### `GameAPI:del_road_point`

从游戏全局移除指定路点

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_path_id` | `PathID` | 是 | 路径 |
| `_index` | `integer` | 是 | 路点索引 |

#### `GameAPI:delay_destroy_vehicle`

删除载具

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Vehicle` | 是 | 载具 |

#### `GameAPI:destroy_scene_ui`

销毁场景界面

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_layer` | `E3DLayer` | 是 | 场景界面 |

#### `GameAPI:destroy_unit`

销毁单位

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位 |

#### `GameAPI:destroy_unit_with_children`

销毁单位，可选是否销毁子组件

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位 |
| `_destroy_children` | `boolean?` | 否 | 是否销毁子组件 |

#### `GameAPI:draw_line`

绘制线段（调试）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_start_pos` | `Vector3` | 是 | 起点 |
| `_end_pos` | `Vector3` | 是 | 终点 |
| `_color` | `Color` | 是 | 颜色 |
| `_duration` | `Fixed` | 是 | 时长 |

#### `GameAPI:draw_text`

绘制文本（调试）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_pos` | `Vector3` | 是 | 位置 |
| `_text` | `string` | 是 | 文本 |

#### `GameAPI:enable_collision_between_unit_and_prefab`

设置单位与预设是否能发生碰撞

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位 |
| `_unit_eid` | `UnitKey` | 是 | 单位编号 |
| `_enable` | `boolean` | 是 | 是否碰撞 |

#### `GameAPI:enable_collision_between_units`

设置两个单位是否能碰撞

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit_1` | `Unit` | 是 | 单位1 |
| `_unit_2` | `Unit` | 是 | 单位2 |
| `_enable` | `boolean` | 是 | 是否碰撞 |

#### `GameAPI:equipment_prefab_has_kv`

物品预设是否存在自定义值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_equipment_key` | `EquipmentKey` | 是 | 物品编号 |
| `_prop` | `string` | 是 | 名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否存在 |

#### `GameAPI:game_api_create_unit_group`

创建一个组件组

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit_group_id` | `UnitGroupKey` | 是 | 单位编号 |
| `_pos` | `Vector3` | 是 | 位置 |
| `_root_quaternion` | `Quaternion` | 是 | 旋转 |
| `_role` | `Role?` | 否 | 所属玩家 |
| `_use_center_offset` | `boolean?` | 否 | 应用原点偏移 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `UnitGroup` | 创建出的单位 |

#### `GameAPI:game_end`

游戏结束

#### `GameAPI:get_ability_prefab_desc`

获取技能预设描述

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_id` | `AbilityKey` | 是 | 技能编号 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 技能描述 |

#### `GameAPI:get_ability_prefab_name`

获取技能预设名称

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_id` | `AbilityKey` | 是 | 技能编号 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 技能名称 |

#### `GameAPI:get_achieve_target_count`

获取成就目标进度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_event_id` | `Achievement` | 是 | 成就 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 成就进度 |

#### `GameAPI:get_achievement_target`

获取成就目标进度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_event_id` | `Achievement` | 是 | 成就 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 成就进度 |

#### `GameAPI:get_all_camps`

获取所有阵营

**返回值:**

| 类型 | 说明 |
|------|------|
| `Camp[]` | 阵营列表 |

#### `GameAPI:get_all_characters`

获取所有角色

**返回值:**

| 类型 | 说明 |
|------|------|
| `Character[]` | 角色列表 |

#### `GameAPI:get_all_creatures`

获取所有生物

**返回值:**

| 类型 | 说明 |
|------|------|
| `Creature[]` | 生物列表 |

#### `GameAPI:get_all_customtriggerspaces`

获取所有触发区域

**返回值:**

| 类型 | 说明 |
|------|------|
| `CustomTriggerSpace[]` | 触发区域列表 |

#### `GameAPI:get_all_equipment_keys_in_shop`

获取物品商店中的所有物品编号

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_battle_shop_key` | `BattleShopKey` | 是 | 物品商店编号 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `EquipmentKey[]` | 物品编号列表 |

#### `GameAPI:get_all_equipments`

获取所有物品

**返回值:**

| 类型 | 说明 |
|------|------|
| `Equipment[]` | 物品列表 |

#### `GameAPI:get_all_lifientities`

获取所有生命体

**返回值:**

| 类型 | 说明 |
|------|------|
| `LifeEntity[]` | 生命体列表 |

#### `GameAPI:get_all_obstacles`

获取所有组件

**返回值:**

| 类型 | 说明 |
|------|------|
| `Obstacle[]` | 组件列表 |

#### `GameAPI:get_all_online_roles`

获取所有在线玩家

**返回值:**

| 类型 | 说明 |
|------|------|
| `Role[]` | 玩家列表 |

#### `GameAPI:get_all_roles`

获取所有玩家

**返回值:**

| 类型 | 说明 |
|------|------|
| `Role[]` | 玩家 |

#### `GameAPI:get_all_roles_in_game`

获取游戏中所有有效玩家

**返回值:**

| 类型 | 说明 |
|------|------|
| `Role[]` | 玩家列表 |

#### `GameAPI:get_all_triggerspaces`

获取所有逻辑体

**返回值:**

| 类型 | 说明 |
|------|------|
| `TriggerSpace[]` | 逻辑体列表 |

#### `GameAPI:get_all_valid_roles`

获取游戏中所有有效玩家

**返回值:**

| 类型 | 说明 |
|------|------|
| `Role[]` | 玩家列表 |

#### `GameAPI:get_camp`

获取阵营

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_camp_id` | `CampID` | 是 | 阵营ID |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Camp` | 阵营 |

#### `GameAPI:get_camp_relation`

获取阵营关系

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_camp1` | `Camp` | 是 | 阵营 |
| `_camp2` | `Camp` | 是 | 阵营 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Enums.CampRelationType` | 阵营关系 |

#### `GameAPI:get_characters_in_aabb`

获取矩形区域内的角色

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_center` | `Vector3` | 是 | 中心点 |
| `_length` | `Fixed` | 是 | 长 |
| `_height` | `Fixed` | 是 | 高 |
| `_width` | `Fixed` | 是 | 宽 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Character[]` | 角色列表 |

#### `GameAPI:get_characters_in_cylinder`

获取圆柱区域内的角色

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_bottom_center` | `Vector3` | 是 | 底部中心 |
| `_radius` | `Fixed` | 是 | 半径 |
| `_height` | `Fixed` | 是 | 高度 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Character[]` | 角色列表 |

#### `GameAPI:get_characters_in_sphere`

获取圆形区域内的角色

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_center` | `Vector3` | 是 | 中心点 |
| `_radius` | `Fixed` | 是 | 半径 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Character[]` | 角色列表 |

#### `GameAPI:get_config_table_col_len`

获取表列数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sheet_id` | `SheetID` | 是 | 多维表 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 长度 |

#### `GameAPI:get_config_table_row_len`

获取表行数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sheet_id` | `SheetID` | 是 | 多维表 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 长度 |

#### `GameAPI:get_creatures_by_key`

获取指定编号的逻辑体列表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_creature_key` | `CreatureKey` | 是 | 生物编号 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Creature[]` | 生物列表 |

#### `GameAPI:get_creatures_in_aabb`

获取矩形区域内的生物

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_center` | `Vector3` | 是 | 中心点 |
| `_length` | `Fixed` | 是 | 长 |
| `_height` | `Fixed` | 是 | 高 |
| `_width` | `Fixed` | 是 | 宽 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Creature[]` | 角色列表 |

#### `GameAPI:get_creatures_in_annulus`

获取圆环区域内的生物

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_center` | `Vector3` | 是 | 中心点 |
| `_radius1` | `Fixed` | 是 | 内径 |
| `_radius2` | `Fixed` | 是 | 外径 |
| `_height` | `Fixed` | 是 | 高度 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Creature[]` | 生物列表 |

#### `GameAPI:get_creatures_in_cylinder`

获取圆柱区域内的生物

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_bottom_center` | `Vector3` | 是 | 底部中心 |
| `_radius` | `Fixed` | 是 | 半径 |
| `_height` | `Fixed` | 是 | 高度 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Creature[]` | 生物列表 |

#### `GameAPI:get_creatures_in_sector`

获取扇形区域内的生物

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_center` | `Vector3` | 是 | 起始点 |
| `_face_dir` | `Fixed` | 是 | 角度朝向 |
| `_central_angle` | `Fixed` | 是 | 广角 |
| `_radius` | `Fixed` | 是 | 半径 |
| `_height` | `Fixed` | 是 | 高度 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Creature[]` | 生物列表 |

#### `GameAPI:get_creatures_in_sphere`

获取圆形区域内的生物

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_center` | `Vector3` | 是 | 中心点 |
| `_radius` | `Fixed` | 是 | 半径 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Creature[]` | 生物列表 |

#### `GameAPI:get_customtriggerspace_in_raycast`

获取射线检测到的触发区域

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_start_pos` | `Vector3` | 是 | 起始点 |
| `_end_pos` | `Vector3` | 是 | 终点 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `CustomTriggerSpace` | 触发区域 |

#### `GameAPI:get_customtriggerspaces_by_key`

获取指定预设的触发区域列表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `CustomTriggerSpaceKey` | 是 | 触发区域编号 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `CustomTriggerSpace[]` | 触发区域列表 |

#### `GameAPI:get_customtriggerspaces_in_raycast`

获取射线检测到的触发区域列表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_start_pos` | `Vector3` | 是 | 起始点 |
| `_end_pos` | `Vector3` | 是 | 终点 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `CustomTriggerSpace[]` | 触发区域列表 |

#### `GameAPI:get_day`

获取时间戳转化后的日期数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_timestamp` | `Timestamp` | 是 | 时间戳 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 日 |

#### `GameAPI:get_driving_vehicle`

获取角色当前骑乘的载具

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_character` | `Character` | 是 | 角色 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vehicle` | 载具 |

#### `GameAPI:get_env_time`

获取环境时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 当前环境时刻 |

#### `GameAPI:get_env_time_ratio`

获取环境时间流逝速率

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 流逝速率 |

#### `GameAPI:get_eui_child_by_index`

根据索引获取UI节点的子UI节点

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_node` | `ENode` | 是 | UI节点 |
| `_index` | `integer` | 是 | 索引 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `ENode` | 子UI节点 |

#### `GameAPI:get_eui_child_by_name`

根据名字获取UI节点的子UI节点

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_node` | `ENode` | 是 | UI节点 |
| `_name` | `string` | 是 | 名字 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `ENode` | 子UI节点 |

#### `GameAPI:get_eui_children`

获取UI节点的所有子UI节点

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_node` | `ENode` | 是 | UI节点 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `ENode[]` | 子UI节点列表 |

#### `GameAPI:get_eui_children_count`

获取UI节点的子UI节点数量

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_node` | `ENode` | 是 | UI节点 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 数量 |

#### `GameAPI:get_eui_node_at_scene_ui`

获取场景界面中的控件

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_layer` | `E3DLayer` | 是 | 场景界面 |
| `_node_id` | `ENode` | 是 | 界面节点 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `ENode` | 场景界面节点 |

#### `GameAPI:get_first_customtriggerspace_in_raycast`

获取射线检测到的触发区域

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_start_pos` | `Vector3` | 是 | 起始点 |
| `_end_pos` | `Vector3` | 是 | 终点 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `CustomTriggerSpace` | 触发区域 |

#### `GameAPI:get_hour`

获取时间戳转化后的小时数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_timestamp` | `Timestamp` | 是 | 时间戳 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 时 |

#### `GameAPI:get_joint_assistants`

获取组件上的所有关节

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 目标单位 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `JointAssistant[]` | 关节列表 |

#### `GameAPI:get_life_entities_in_aabb`

获取矩形区域内的生命体

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_center` | `Vector3` | 是 | 中心点 |
| `_length` | `Fixed` | 是 | 长 |
| `_height` | `Fixed` | 是 | 高 |
| `_width` | `Fixed` | 是 | 宽 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `LifeEntity[]` | 生命体列表 |

#### `GameAPI:get_life_entities_in_cylinder`

获取圆柱区域内的生命体

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_bottom_center` | `Vector3` | 是 | 底部中心 |
| `_radius` | `Fixed` | 是 | 半径 |
| `_height` | `Fixed` | 是 | 高度 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `LifeEntity[]` | 生命体列表 |

#### `GameAPI:get_life_entities_in_sphere`

获取圆形区域内的生命体

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_center` | `Vector3` | 是 | 中心点 |
| `_radius` | `Fixed` | 是 | 半径 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `LifeEntity[]` | 生命体列表 |

#### `GameAPI:get_lifeentities_in_aabb`

获取矩形区域内的生命体

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_center` | `Vector3` | 是 | 中心点 |
| `_length` | `Fixed` | 是 | 长 |
| `_height` | `Fixed` | 是 | 高 |
| `_width` | `Fixed` | 是 | 宽 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `LifeEntity[]` | 生命体列表 |

#### `GameAPI:get_lifeentities_in_cylinder`

获取圆柱区域内的生命体

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_bottom_center` | `Vector3` | 是 | 底部中心 |
| `_radius` | `Fixed` | 是 | 半径 |
| `_height` | `Fixed` | 是 | 高度 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `LifeEntity[]` | 生命体列表 |

#### `GameAPI:get_lifeentities_in_sphere`

获取圆形区域内的生命体

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_center` | `Vector3` | 是 | 中心点 |
| `_radius` | `Fixed` | 是 | 半径 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `LifeEntity[]` | 生命体列表 |

#### `GameAPI:get_map_appreciate_score`

获取地图当前评分

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 当前评分 |

#### `GameAPI:get_map_characters`

获取所有地图角色

**返回值:**

| 类型 | 说明 |
|------|------|
| `Character[]` | 角色列表 |

#### `GameAPI:get_map_rating_score`

获取地图当前评分

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 当前评分 |

#### `GameAPI:get_map_time`

获取环境时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 当前环境时刻 |

#### `GameAPI:get_map_time_ratio`

获取环境时间流逝速率

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 流逝速率 |

#### `GameAPI:get_map_time_running_enabled`

获取环境时间是否自动流逝

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否自动流逝 |

#### `GameAPI:get_minute`

获取时间戳转化后的分钟数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_timestamp` | `Timestamp` | 是 | 时间戳 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 分 |

#### `GameAPI:get_modifier_prefab_desc`

获取效果预设描述

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_modifier_key` | `ModifierKey` | 是 | 效果编号 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 效果描述 |

#### `GameAPI:get_modifier_prefab_name`

获取效果预设名称

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_modifier_key` | `ModifierKey` | 是 | 效果编号 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 效果名称 |

#### `GameAPI:get_montage_duration`

获取动画时长

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_montage_id` | `MontageKey` | 是 | 剧情动画编号 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 时长 |

#### `GameAPI:get_month`

获取时间戳转化后的月份数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_timestamp` | `Timestamp` | 是 | 时间戳 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 月 |

#### `GameAPI:get_obstacle_by_raycast`

获取射线检测到的组件

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_start_pos` | `Vector3` | 是 | 起始点 |
| `_end_pos` | `Vector3` | 是 | 终点 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Obstacle` | 组件 |

#### `GameAPI:get_obstacle_in_raycast`

获取射线检测到的组件

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_start_pos` | `Vector3` | 是 | 起始点 |
| `_end_pos` | `Vector3` | 是 | 终点 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Obstacle` | 组件 |

#### `GameAPI:get_obstacles_by_key`

获取指定编号的组件列表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `ObstacleKey` | 是 | 组件编号 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Obstacle[]` | 组件列表 |

#### `GameAPI:get_obstacles_by_raycast`

获取射线检测到的组件列表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_start_pos` | `Vector3` | 是 | 起始点 |
| `_end_pos` | `Vector3` | 是 | 终点 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Obstacle[]` | 组件列表 |

#### `GameAPI:get_obstacles_in_aabb`

获取矩形区域内的组件

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_center` | `Vector3` | 是 | 中心点 |
| `_length` | `Fixed` | 是 | 长 |
| `_height` | `Fixed` | 是 | 高 |
| `_width` | `Fixed` | 是 | 宽 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Obstacle[]` | 角色列表 |

#### `GameAPI:get_obstacles_in_annulus`

获取圆环区域内的组件

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_center` | `Vector3` | 是 | 中心点 |
| `_radius1` | `Fixed` | 是 | 内径 |
| `_radius2` | `Fixed` | 是 | 外径 |
| `_height` | `Fixed` | 是 | 高度 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Obstacle[]` | 组件列表 |

#### `GameAPI:get_obstacles_in_cylinder`

获取圆柱区域内的组件

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_bottom_center` | `Vector3` | 是 | 底部中心 |
| `_radius` | `Fixed` | 是 | 半径 |
| `_height` | `Fixed` | 是 | 高度 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Obstacle[]` | 组件列表 |

#### `GameAPI:get_obstacles_in_raycast`

获取射线检测到的组件列表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_start_pos` | `Vector3` | 是 | 起始点 |
| `_end_pos` | `Vector3` | 是 | 终点 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Obstacle[]` | 组件列表 |

#### `GameAPI:get_obstacles_in_sector`

获取扇形区域内的组件

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_center` | `Vector3` | 是 | 起始点 |
| `_face_dir` | `Fixed` | 是 | 角度朝向 |
| `_central_angle` | `Fixed` | 是 | 广角 |
| `_radius` | `Fixed` | 是 | 半径 |
| `_height` | `Fixed` | 是 | 高度 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Obstacle[]` | 组件列表 |

#### `GameAPI:get_obstacles_in_sphere`

获取圆形区域内的组件

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_center` | `Vector3` | 是 | 中心点 |
| `_radius` | `Fixed` | 是 | 半径 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Obstacle[]` | 组件列表 |

#### `GameAPI:get_party_roles`

获取组队中玩家列表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_party_id` | `string` | 是 | 组队Id |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Role[]` | 玩家列表 |

#### `GameAPI:get_pathpoint_by_id`

获取路点坐标

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_point_id` | `PathPointID` | 是 | 路点 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 坐标 |

#### `GameAPI:get_pathpoint_by_index`

获取路径中的路点向量

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_path_id` | `PathID` | 是 | 路径 |
| `_index` | `integer` | 是 | 路点索引 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 向量 |

#### `GameAPI:get_random_color`

获取随机颜色

**返回值:**

| 类型 | 说明 |
|------|------|
| `Color` | 颜色 |

#### `GameAPI:get_road_point_vector3`

获取路径中的路点向量

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_path_id` | `PathID` | 是 | 路径 |
| `_index` | `integer` | 是 | 路点索引 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 向量 |

#### `GameAPI:get_roadpoint_position`

获取路点坐标

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_point_id` | `PathPointID` | 是 | 路点 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 坐标 |

#### `GameAPI:get_roadpoint_position_vector3`

获取路点坐标

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_point_id` | `PathPointID` | 是 | 路点 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 坐标 |

#### `GameAPI:get_role`

玩家ID获取玩家

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_role_id` | `RoleID` | 是 | 玩家ID |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Role` | 玩家 |

#### `GameAPI:get_role_friendship_level`

获取玩家亲密度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_role_1` | `Role` | 是 | 玩家1 |
| `_role_2` | `Role` | 是 | 玩家2 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 亲密度 |

#### `GameAPI:get_role_friendship_value`

获取玩家亲密度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_role_1` | `Role` | 是 | 玩家1 |
| `_role_2` | `Role` | 是 | 玩家2 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 亲密度 |

#### `GameAPI:get_second`

获取时间戳转化后的秒数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_timestamp` | `Timestamp` | 是 | 时间戳 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 秒 |

#### `GameAPI:get_sheet_cell_value`

获取表格值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value_type` | `Enums.ValueType` | 是 | 值类型 |
| `_sheet_id` | `SheetID` | 是 | 表格 |
| `_key1` | `integer` | 是 | 行索引 |
| `_key2` | `string` | 是 | 列索引 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `any` | 自定义值 |

#### `GameAPI:get_sheet_col_count`

获取表列数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sheet_id` | `SheetID` | 是 | 多维表 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 长度 |

#### `GameAPI:get_sheet_row_count`

获取表行数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sheet_id` | `SheetID` | 是 | 多维表 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 长度 |

#### `GameAPI:get_table_col_count`

获取表列数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sheet_id` | `SheetID` | 是 | 多维表 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 长度 |

#### `GameAPI:get_table_row_count`

获取表行数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sheet_id` | `SheetID` | 是 | 多维表 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 长度 |

#### `GameAPI:get_timestamp`

获取当前时间戳

**返回值:**

| 类型 | 说明 |
|------|------|
| `Timestamp` | 时间戳 |

#### `GameAPI:get_timestamp_by_time`

获取时间戳

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_year` | `integer` | 是 | 年 |
| `_month` | `integer` | 是 | 月 |
| `_day` | `integer` | 是 | 日 |
| `_hour` | `integer` | 是 | 时 |
| `_minute` | `integer` | 是 | 分 |
| `_second` | `integer` | 是 | 秒 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Timestamp` | 时间戳 |

#### `GameAPI:get_timestamp_diff`

获取时间戳秒差

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_timestamp_1` | `Timestamp` | 是 | 时间戳1 |
| `_timestamp_2` | `Timestamp` | 是 | 时间戳2 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 秒差 |

#### `GameAPI:get_triggerspaces_by_key`

获取指定编号的逻辑体列表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `TriggerSpaceKey` | 是 | 逻辑体编号 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `TriggerSpace[]` | 逻辑体列表 |

#### `GameAPI:get_unit`

获取单位

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit_id` | `UnitID` | 是 | 单位ID |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Unit` | 单位 |

#### `GameAPI:get_unit_all_joint_assistant`

获取组件上的所有关节

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 目标单位 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `JointAssistant[]` | 关节列表 |

#### `GameAPI:get_unit_id_by_name`

获取单位ID

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_name` | `string` | 是 | 单位名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `UnitID` | 单位ID |

#### `GameAPI:get_vector3_from_path`

获取路径向量数组

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_path_id` | `PathID` | 是 | 路径 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3[]` | 向量数组 |

#### `GameAPI:get_vector3_list_from_road`

获取路径向量数组

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_path_id` | `PathID` | 是 | 路径 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3[]` | 向量数组 |

#### `GameAPI:get_vector3s_from_path`

获取路径向量数组

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_path_id` | `PathID` | 是 | 路径 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3[]` | 向量数组 |

#### `GameAPI:get_weekday`

获取时间戳转化后的星期数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_timestamp` | `Timestamp` | 是 | 时间戳 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 星期 |

#### `GameAPI:get_year`

获取时间戳转化后的年数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_timestamp` | `Timestamp` | 是 | 时间戳 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 年 |

#### `GameAPI:has_global_kv`

是否有全局变量

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_var_name` | `string` | 是 | 变量名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否含有全局变量 |

#### `GameAPI:has_var`

是否有全局变量

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_var_name` | `string` | 是 | 变量名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否含有全局变量 |

#### `GameAPI:is_archives_enabled`

是否开启存档

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否开启 |

#### `GameAPI:is_env_time_running_enabled`

获取环境时间是否自动流逝

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否自动流逝 |

#### `GameAPI:is_point_in_custom_trigger_space`

坐标点是否在触发区域内

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_point` | `Vector3` | 是 | 坐标点 |
| `_custom_trigger_space` | `CustomTriggerSpace` | 是 | 触发区域 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否在触发区域内 |

#### `GameAPI:is_point_in_custom_trigger_spaces`

坐标点是否在触发区域内

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_point` | `Vector3` | 是 | 坐标点 |
| `_custom_trigger_space` | `CustomTriggerSpace` | 是 | 触发区域 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否在触发区域内 |

#### `GameAPI:is_point_in_customtriggerspace`

坐标点是否在触发区域内

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_point` | `Vector3` | 是 | 坐标点 |
| `_custom_trigger_space` | `CustomTriggerSpace` | 是 | 触发区域 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否在触发区域内 |

#### `GameAPI:is_role_friendship_type_match`

玩家亲密关系是否符合

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_role_1` | `Role` | 是 | 玩家1 |
| `_role_2` | `Role` | 是 | 玩家2 |
| `_friendship_type` | `Enums.FriendshipType` | 是 | 亲密关系 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否符合 |

#### `GameAPI:is_role_friendship_type_matched`

玩家亲密关系是否符合

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_role_1` | `Role` | 是 | 玩家1 |
| `_role_2` | `Role` | 是 | 玩家2 |
| `_friendship_type` | `Enums.FriendshipType` | 是 | 亲密关系 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否符合 |

#### `GameAPI:load_level`

跳转关卡

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_level_key` | `LevelKey` | 是 | 关卡编号 |

#### `GameAPI:modifier_prefab_get_desc`

获取效果预设描述

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_modifier_key` | `ModifierKey` | 是 | 效果编号 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 效果描述 |

#### `GameAPI:modifier_prefab_get_name`

获取效果预设名称

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_modifier_key` | `ModifierKey` | 是 | 效果编号 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 效果名称 |

#### `GameAPI:modifier_prefab_get_prop_by_type`

获取效果预设的属性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value_type` | `Enums.ValueType` | 是 | 值类型 |
| `_key` | `ModifierKey` | 是 | 效果编号 |
| `_prop` | `string` | 是 | 名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `any` | 属性值 |

#### `GameAPI:modifier_prefab_has_kv`

效果预设是否存在自定义值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_modifier_key` | `ModifierKey` | 是 | 效果编号 |
| `_prop` | `string` | 是 | 名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否存在 |

#### `GameAPI:obstacle_prefab_get_kv_by_type`

获取组件预设的自定义值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value_type` | `Enums.ValueType` | 是 | 值类型 |
| `_key` | `ObstacleKey` | 是 | 组件编号 |
| `_prop` | `string` | 是 | 名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `any` | 自定义值 |

#### `GameAPI:obstacle_prefab_get_prop_by_type`

获取组件预设的属性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value_type` | `Enums.ValueType` | 是 | 值类型 |
| `_key` | `ObstacleKey` | 是 | 组件编号 |
| `_prop` | `string` | 是 | 名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `any` | 属性值 |

#### `GameAPI:obstacle_prefab_has_kv`

组件预设是否存在自定义值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `ObstacleKey` | 是 | 组件编号 |
| `_prop` | `string` | 是 | 名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否存在 |

#### `GameAPI:play_3d_sound`

单位开始播放3d音效

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_position` | `Vector3` | 是 | 发声位置 |
| `_sound_key` | `SoundKey` | 是 | 声音编号 |
| `_duration` | `Fixed?` | 否 | 持续时间 |
| `_volume` | `Fixed?` | 否 | 音量 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `SoundID` | 音效ID |

#### `GameAPI:play_link_sfx`

播放连线特效

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sfx_key` | `SfxKey` | 是 | 特效编号 |
| `_unit` | `Unit` | 是 | 起点单位 |
| `_from_socket_name` | `string` | 是 | 起点节点 |
| `_target_unit` | `Unit` | 是 | 终点单位 |
| `_target_socket_name` | `string` | 是 | 终点节点 |
| `_duration` | `Fixed?` | 否 | 持续时间 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `SfxID` | 特效ID |

#### `GameAPI:play_sfx_by_key`

播放特效

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sfx_key` | `SfxKey` | 是 | 特效编号 |
| `_pos` | `Vector3` | 是 | 位置 |
| `_rot` | `Quaternion` | 是 | 旋转 |
| `_scale` | `Fixed` | 是 | 缩放 |
| `_duration` | `Fixed?` | 否 | 持续时间 |
| `_rate` | `Fixed?` | 否 | 播放速率 |
| `_with_sound` | `boolean?` | 否 | 是否播放音效 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `SfxID` | 特效ID |

#### `GameAPI:randint`

随机整数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_min_value` | `integer` | 是 | 最小值 |
| `_max_value` | `integer` | 是 | 最大值 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 整数 |

#### `GameAPI:random_color`

获取随机颜色

**返回值:**

| 类型 | 说明 |
|------|------|
| `Color` | 颜色 |

#### `GameAPI:random_int`

随机整数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_min_value` | `integer` | 是 | 最小值 |
| `_max_value` | `integer` | 是 | 最大值 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 整数 |

#### `GameAPI:raycast_test`

物理射线检测

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_start_pos` | `Vector3` | 是 | 起点 |
| `_end_pos` | `Vector3` | 是 | 终点 |
| `_collision_mask` | `integer` | 是 | 碰撞掩码 |
| `_find_closest` | `boolean` | 是 | 检测最近碰撞 |
| `_callback` | `function` | 是 | 碰撞回调（返回True停止后续回调） |

#### `GameAPI:raycast_unit`

查询射线检测到的单位碰撞信息

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_start_pos` | `Vector3` | 是 | 起始点 |
| `_end_pos` | `Vector3` | 是 | 终点 |
| `_include_unit_types` | `Enums.UnitType[]` | 是 | 包含的单位类型 |
| `_raycast_handler` | `function` | 是 | 碰撞回调 |

#### `GameAPI:register_geometry_box`

注册一个几何体：方块（可变形）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_size` | `Fixed` | 是 | 边长 |
| `_chamfer_radius` | `Fixed` | 是 | 倒角半径 |
| `_chamfer_level` | `integer` | 是 | 倒角阶数（0~3） |
| `_use_box_collider` | `boolean` | 是 | 精简物理（高性能） |
| `_preconf` | `table` | 是 | 扩展配置（预留 ） |

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 几何体路径，用于create_obstacle_from_geometry |

#### `GameAPI:register_geometry_frustum`

注册一个几何体：圆台（可变形）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_height` | `Fixed` | 是 | 高度 |
| `_inner_radius` | `Fixed` | 是 | 上径 |
| `_outer_radius` | `Fixed` | 是 | 下径，需大于上径 |
| `_inner_poly_count` | `integer` | 是 | 上多边形边数（6~15） |
| `_outer_poly_count` | `integer` | 是 | 下多边形边数（6~15），需大于等于上多边形边数 |
| `_chamfer_radius` | `Fixed` | 是 | 倒角半径 |
| `_angle` | `Fixed` | 是 | 角度 |
| `_layer` | `integer` | 是 | 分段数 |
| `_bend` | `Fixed` | 是 | 弯曲度 |
| `_preconf` | `table` | 是 | 扩展配置（预留 ） |

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 几何体路径，用于create_obstacle_from_geometry |

#### `GameAPI:register_geometry_ring`

注册一个几何体：圆环（可变形）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_height` | `Fixed` | 是 | 高度 |
| `_inner_radius` | `Fixed` | 是 | 内径 |
| `_outer_radius` | `Fixed` | 是 | 外径，需大于内径 |
| `_inner_poly_count` | `integer` | 是 | 内多边形边数（3~15） |
| `_outer_poly_count` | `integer` | 是 | 外多边形边数（3~15），需大于等于内多边形边数 |
| `_chamfer_radius` | `Fixed` | 是 | 倒角半径 |
| `_angle` | `Fixed` | 是 | 角度 |
| `_preconf` | `table` | 是 | 扩展配置（预留 ） |

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 几何体路径，用于create_obstacle_from_geometry |

#### `GameAPI:register_geometry_spline`

注册一个几何体：自定义曲线/曲面

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_is_rope` | `boolean` | 是 | 是否为曲线 |
| `_pos_list` | `Vector3[]` | 是 | 点列表 |
| `_normal_list` | `Vector3[]` | 是 | 法线列表 |
| `_radius_list` | `Fixed[]` | 是 | 半径列表 |
| `_dist_precision` | `Fixed` | 是 | 位移精度 |
| `_normal_precision` | `Fixed` | 是 | 法线精度 |
| `_depth` | `Fixed` | 是 | 厚度（仅用于曲面） |
| `_preconf` | `table` | 是 | 扩展配置（预留 ） |

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 几何体路径，用于create_obstacle_from_geometry |

#### `GameAPI:remove_pathpoint`

从游戏全局移除指定路点

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_path_id` | `PathID` | 是 | 路径 |
| `_index` | `integer` | 是 | 路点索引 |

#### `GameAPI:set_all_scene_ui_visible`

设置所有场景界面显示状态

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_role` | `Role` | 是 | 玩家 |
| `_visible` | `boolean` | 是 | 点击关闭属性 |

#### `GameAPI:set_enable_collide_unit_and_prefab`

设置单位与预设是否能发生碰撞

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位 |
| `_unit_eid` | `UnitKey` | 是 | 单位编号 |
| `_enable` | `boolean` | 是 | 是否碰撞 |

#### `GameAPI:set_enable_collide_with_units`

设置两个单位是否能碰撞

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit_1` | `Unit` | 是 | 单位1 |
| `_unit_2` | `Unit` | 是 | 单位2 |
| `_enable` | `boolean` | 是 | 是否碰撞 |

#### `GameAPI:set_env_time`

设置环境时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target_time` | `Fixed` | 是 | 目标时刻 |
| `_duration` | `Fixed` | 是 | 过渡时间 |
| `_direction` | `boolean` | 是 | 是否正向 |

#### `GameAPI:set_env_time_ratio`

设置环境时间流逝速度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_time_ratio` | `Fixed` | 是 | 流逝速度 |

#### `GameAPI:set_env_time_running_enabled`

设置环境时间是否自动流逝

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enabled` | `boolean` | 是 | 是否自动流逝 |

#### `GameAPI:set_equipment_current_stock_num`

设置物品商店物品剩余库存

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_battle_shop_key` | `BattleShopKey` | 是 | 物品商店编号 |
| `_equipment_key` | `EquipmentKey` | 是 | 物品编号 |
| `_cur_stock_count` | `integer` | 是 | 剩余库存 |

#### `GameAPI:set_equipment_max_stock_count`

设置物品商店物品最大库存

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_battle_shop_key` | `BattleShopKey` | 是 | 物品商店编号 |
| `_equipment_key` | `EquipmentKey` | 是 | 物品编号 |
| `_max_stock_count` | `integer` | 是 | 最大库存 |

#### `GameAPI:set_equipment_max_stock_num`

设置物品商店物品最大库存

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_battle_shop_key` | `BattleShopKey` | 是 | 物品商店编号 |
| `_equipment_key` | `EquipmentKey` | 是 | 物品编号 |
| `_max_stock_count` | `integer` | 是 | 最大库存 |

#### `GameAPI:set_equipment_remaining_stock_count`

设置物品商店物品剩余库存

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_battle_shop_key` | `BattleShopKey` | 是 | 物品商店编号 |
| `_equipment_key` | `EquipmentKey` | 是 | 物品编号 |
| `_cur_stock_count` | `integer` | 是 | 剩余库存 |

#### `GameAPI:set_global_wind_enabled`

设置全局风场开关

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_bool_value` | `boolean` | 是 | 是否开启 |

#### `GameAPI:set_global_wind_force`

设置全局风场方向力

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_x_value` | `Fixed` | 是 | X方向力 |
| `_y_value` | `Fixed` | 是 | Y方向力 |

#### `GameAPI:set_global_wind_frequency`

设置全局风场频率

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_fixed_value` | `Fixed` | 是 | 频率 |

#### `GameAPI:set_life_entity_survival_scene_boundary`

设置生命体存活场景边界大小

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_x` | `Fixed` | 是 | 矩形边界长度 |
| `_y` | `Fixed` | 是 | 矩形边界高度 |
| `_z` | `Fixed` | 是 | 矩形边界宽度 |

#### `GameAPI:set_map_time`

设置环境时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target_time` | `Fixed` | 是 | 目标时刻 |
| `_duration` | `Fixed` | 是 | 过渡时间 |
| `_direction` | `boolean` | 是 | 是否正向 |

#### `GameAPI:set_map_time_ratio`

设置环境时间流逝速度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_time_ratio` | `Fixed` | 是 | 流逝速度 |

#### `GameAPI:set_map_time_running_enabled`

设置环境时间是否自动流逝

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enabled` | `boolean` | 是 | 是否自动流逝 |

#### `GameAPI:set_scene_ui_position`

设置场景界面位置

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_role` | `Role` | 是 | 玩家 |
| `_layer` | `E3DLayer` | 是 | 场景界面 |
| `_position` | `Vector3` | 是 | 坐标点 |

#### `GameAPI:set_scene_ui_visible`

设置场景界面的显隐

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_layer` | `E3DLayer` | 是 | 场景界面 |
| `_role` | `Role` | 是 | 玩家 |
| `_visible` | `boolean` | 是 | 显隐 |

#### `GameAPI:set_sheet_cell_value`

设置表格值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value_type` | `Enums.ValueType` | 是 | 值类型 |
| `_sheet_id` | `SheetID` | 是 | 表格 |
| `_key1` | `integer` | 是 | 行索引 |
| `_key2` | `string` | 是 | 列索引 |
| `_val` | `any` | 是 | 自定义值 |

#### `GameAPI:set_unit_survival_scene_boundary`

设置组件存活场景边界大小

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_x` | `Fixed` | 是 | 矩形边界长度 |
| `_y` | `Fixed` | 是 | 矩形边界高度 |
| `_z` | `Fixed` | 是 | 矩形边界宽度 |

#### `GameAPI:stop_sound`

停止播放音效

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_assigned_id` | `SoundID` | 是 | 音效ID |

#### `GameAPI:sweep_test`

物理扫描检测

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_body_unit` | `Unit` | 是 | 探测单位 |
| `_test_dir` | `Vector3` | 是 | 探测方向 |
| `_max_dist` | `Fixed` | 是 | 最大距离 |
| `_collision_mask` | `integer` | 是 | 碰撞掩码 |
| `_find_closest` | `boolean` | 是 | 检测最近碰撞 |
| `_callback` | `function` | 是 | 碰撞回调（返回True停止后续回调） |

#### `GameAPI:timestame_to_weekday`

获取时间戳转化后的星期数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_timestamp` | `Timestamp` | 是 | 时间戳 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 星期 |

#### `GameAPI:triggerspace_prefab_get_kv_by_type`

获取逻辑体预设的自定义值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value_type` | `Enums.ValueType` | 是 | 值类型 |
| `_key` | `TriggerSpaceKey` | 是 | 逻辑体编号 |
| `_prop` | `string` | 是 | 名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `any` | 自定义值 |

#### `GameAPI:triggerspace_prefab_get_prop_by_type`

获取逻辑体预设的属性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value_type` | `Enums.ValueType` | 是 | 值类型 |
| `_key` | `TriggerSpaceKey` | 是 | 逻辑体编号 |
| `_prop` | `string` | 是 | 名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `any` | 属性值 |

#### `GameAPI:triggerspace_prefab_has_kv`

逻辑体预设是否存在自定义值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `TriggerSpaceKey` | 是 | 逻辑体编号 |
| `_prop` | `string` | 是 | 名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否存在 |


## GlobalAPI

### 方法

#### `GlobalAPI:add_kill_broadcast`

添加击杀播报

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_kill_char` | `Character` | 是 | 击杀角色 |
| `_dead_char` | `Character` | 是 | 死亡角色 |
| `_duration` | `Fixed` | 是 | 持续时间 |

#### `GlobalAPI:change_render_color`

改变色彩滤镜

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_hue` | `Fixed` | 是 | 色相 |
| `_brightness` | `Fixed` | 是 | 明度 |
| `_saturation` | `Fixed` | 是 | 饱和度 |
| `_contrast` | `Fixed` | 是 | 对比度 |
| `_amount` | `Fixed` | 是 | 整体偏色程度 |
| `_mid_tones` | `Color` | 是 | 中灰偏色 |
| `_mid_tones_power` | `Fixed` | 是 | 中灰偏色程度 |
| `_shadows` | `Color` | 是 | 暗部偏色 |
| `_shadows_power` | `Fixed` | 是 | 暗部偏色程度 |
| `_highlight` | `Color` | 是 | 亮部偏色 |
| `_highlight_power` | `Fixed` | 是 | 亮部偏色程度 |
| `_duration` | `Fixed` | 是 | 变换时长 |

#### `GlobalAPI:debug`

Debug窗口打印日志

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_content` | `string` | 是 | 内容 |

#### `GlobalAPI:destroy_sfx`

销毁特效

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sfx_id` | `SfxID` | 是 | 特效ID |
| `_fade_out` | `boolean?` | 否 | 是否淡出 |

#### `GlobalAPI:error`

Debug窗口打印错误日志

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_content` | `string` | 是 | 内容 |

#### `GlobalAPI:get_lines_intersection_point_on_plane`

获取两条直线在指定平面的交点

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_point_1` | `Vector3` | 是 | 点1 |
| `_point_2` | `Vector3` | 是 | 点2 |
| `_point_3` | `Vector3` | 是 | 点3 |
| `_point_4` | `Vector3` | 是 | 点4 |
| `_value` | `Fixed` | 是 | 校正值 |
| `_plane_type` | `Enums.PlaneType` | 是 | 平面 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 交点坐标 |

#### `GlobalAPI:get_point_to_line_perpendicular_point`

获取点到直线的垂线交点

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_point_1` | `Vector3` | 是 | 点1 |
| `_point_2` | `Vector3` | 是 | 点2 |
| `_point_3` | `Vector3` | 是 | 点3 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 交点坐标 |

#### `GlobalAPI:get_vector_projection`

获取向量投影

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_vec` | `Vector3` | 是 | 向量 |
| `_direction` | `Vector3` | 是 | 投影方向 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 投影后向量 |

#### `GlobalAPI:has_sub_str`

是否含有子字符串

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_str1` | `string` | 是 | 父字符串 |
| `_str2` | `string` | 是 | 子字符串 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 布尔值 |

#### `GlobalAPI:is_none`

判断对象是否为空

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_obj` | `Unit?` | 否 | 对象 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否为空 |

#### `GlobalAPI:is_not_none`

判断对象是否为空

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_obj` | `Unit?` | 否 | 对象 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否不为空 |

#### `GlobalAPI:mute_sfx_sound`

去除特效的音效

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sfx_id` | `SfxID` | 是 | 特效ID |

#### `GlobalAPI:set_direct_light`

修改直接光参数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_param_dict` | `table` | 是 | 切换参数 |
| `_duration` | `Fixed` | 是 | 持续时间 |

#### `GlobalAPI:set_render_color`

改变色彩滤镜

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_hue` | `Fixed` | 是 | 色相 |
| `_brightness` | `Fixed` | 是 | 明度 |
| `_saturation` | `Fixed` | 是 | 饱和度 |
| `_contrast` | `Fixed` | 是 | 对比度 |
| `_amount` | `Fixed` | 是 | 整体偏色程度 |
| `_mid_tones` | `Color` | 是 | 中灰偏色 |
| `_mid_tones_power` | `Fixed` | 是 | 中灰偏色程度 |
| `_shadows` | `Color` | 是 | 暗部偏色 |
| `_shadows_power` | `Fixed` | 是 | 暗部偏色程度 |
| `_highlight` | `Color` | 是 | 亮部偏色 |
| `_highlight_power` | `Fixed` | 是 | 亮部偏色程度 |
| `_duration` | `Fixed` | 是 | 变换时长 |

#### `GlobalAPI:set_sfx_orientation`

设置特效旋转

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sfx_id` | `SfxID` | 是 | 特效ID |
| `_orientation` | `Quaternion` | 是 | 旋转 |

#### `GlobalAPI:set_sfx_position`

设置特效坐标

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sfx_id` | `SfxID` | 是 | 特效ID |
| `_pos` | `Vector3` | 是 | 位置 |

#### `GlobalAPI:set_sfx_rate`

设置特效播放速率

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sfx_id` | `SfxID` | 是 | 特效ID |
| `_rate` | `Fixed` | 是 | 播放速率 |

#### `GlobalAPI:set_sfx_scale`

设置特效缩放

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sfx_id` | `SfxID` | 是 | 特效ID |
| `_scale` | `Vector3` | 是 | 缩放 |

#### `GlobalAPI:set_sfx_visible`

设置特效是否可见

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sfx_id` | `SfxID` | 是 | 特效ID |
| `_visible` | `boolean` | 是 | 是否可见 |

#### `GlobalAPI:set_skybox_texture`

改变天空盒贴图

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_texture_key` | `SkyBoxBackground` | 是 | 天空盒背景 |
| `_change_type` | `Enums.SkyBoxGradualType` | 是 | 切换方式 |
| `_duration` | `Fixed` | 是 | 持续时间 |

#### `GlobalAPI:set_skyfog`

改变天空雾效

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_param_dict` | `table` | 是 | 切换参数 |
| `_duration` | `Fixed` | 是 | 变换时长 |

#### `GlobalAPI:show_message_marquee`

跑马灯信息

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_content` | `string?` | 否 | 字符串 |

#### `GlobalAPI:show_tips`

游戏内飘字信息

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_content` | `string` | 是 | 字符串 |
| `_duration` | `Fixed?` | 否 | 时长 |

#### `GlobalAPI:str_contain`

是否含有子字符串

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_str1` | `string` | 是 | 父字符串 |
| `_str2` | `string` | 是 | 子字符串 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 布尔值 |

#### `GlobalAPI:str_contains`

是否含有子字符串

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_str1` | `string` | 是 | 父字符串 |
| `_str2` | `string` | 是 | 子字符串 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 布尔值 |

#### `GlobalAPI:str_to_color`

字符串转颜色

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_color_str` | `string` | 是 | 字符串 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Color` | 颜色 |

#### `GlobalAPI:warning`

Debug窗口打印警告日志

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_content` | `string` | 是 | 内容 |


## ItemBox

### 方法

#### `ItemBox:add_ability`

添加道具箱刷新技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_key` | `AbilityKey` | 是 | 技能编号 |
| `_weight` | `integer` | 是 | 权重 |

#### `ItemBox:add_equipment`

添加物品箱刷新预设

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `EquipmentKey` | 是 | 物品编号 |
| `_weight` | `integer` | 是 | 权重 |

#### `ItemBox:remove_ability`

移除道具箱刷新技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_key` | `AbilityKey` | 是 | 技能编号 |

#### `ItemBox:remove_equipment`

移除物品箱刷新预设

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `EquipmentKey` | 是 | 物品编号 |


## JointAssistantComp

### 方法

#### `JointAssistantComp:get_joint_assistant_object1_obstacle`

获取关节组件主体

**返回值:**

| 类型 | 说明 |
|------|------|
| `Character` | 关节组件主体 |

#### `JointAssistantComp:get_joint_assistant_object2_obstacle`

获取关节组件目标

**返回值:**

| 类型 | 说明 |
|------|------|
| `Character` | 关节组件目标 |

#### `JointAssistantComp:get_joint_assistant_primary_obstacle`

获取关节组件主体

**返回值:**

| 类型 | 说明 |
|------|------|
| `Character` | 关节组件主体 |

#### `JointAssistantComp:get_joint_assistant_target_obstacle`

获取关节组件目标

**返回值:**

| 类型 | 说明 |
|------|------|
| `Character` | 关节组件目标 |

#### `JointAssistantComp:get_joint_assistant_type`

获取关节组件类型

**返回值:**

| 类型 | 说明 |
|------|------|
| `JointAssistantType` | 关节类型 |

#### `JointAssistantComp:set_joint_assistant_enabled`

设置关节组件的启用状态

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 开关 |

#### `JointAssistantComp:set_joint_assistant_property`

设置关节组件属性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_property_type` | `Enums.JointAssistantProperty` | 是 | 属性 |
| `_value` | `Fixed` | 是 | 值 |

#### `JointAssistantComp:set_joint_assistant_visible`

设置关节组件可见性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_visible` | `boolean` | 是 | 可见性 |


## JumpComp

### 方法

#### `JumpComp:get_multi_jump_current_cooldown`

获取多段跳剩余冷却

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 冷却时间 |

#### `JumpComp:get_multi_jump_remaining_cooldown`

获取多段跳剩余冷却

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 冷却时间 |

#### `JumpComp:is_on_ground`

是否位于地面

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否位于地面 |

#### `JumpComp:set_multi_jump_current_cooldown`

设置多段跳剩余冷却

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_cd` | `Fixed` | 是 | 冷却时间 |

#### `JumpComp:set_multi_jump_remaining_cooldown`

设置多段跳剩余冷却

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_cd` | `Fixed` | 是 | 冷却时间 |


## KVBase

### 方法

#### `KVBase:add_tag`

添加标签

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_tag` | `string` | 是 | 标签 |

#### `KVBase:clear_kv`

清空自定义值

#### `KVBase:clear_tag`

清空标签

#### `KVBase:delete_tag`

移除标签

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_tag` | `string` | 是 | 标签 |

#### `KVBase:get_billboard_content`

获取公告板文本内容

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 公告板内容 |

#### `KVBase:get_billboard_font_size`

获取公告板文本字体大小

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 公告板字体大小 |

#### `KVBase:get_kv_by_type`

获取自定义值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value_type` | `Enums.ValueType` | 是 | 值类型 |
| `_key` | `string` | 是 | 名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `any` | 自定义值 |

#### `KVBase:has_kv`

是否有自定义值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `string` | 是 | 名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否有自定义值 |

#### `KVBase:has_tag`

是否含有标签

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_tag` | `string` | 是 | 标签名 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否有标签 |

#### `KVBase:remove_kv`

移除自定义值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `string` | 是 | 名称 |

#### `KVBase:remove_tag`

移除标签

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_tag` | `string` | 是 | 标签 |

#### `KVBase:set_billboard_content`

设置公告板文本内容

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_content` | `string` | 是 | 文本内容 |

#### `KVBase:set_billboard_font_color`

设置公告板文本颜色

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_color` | `Color` | 是 | 文本颜色 |
| `_gradient_color_1` | `Color?` | 否 | 渐变色1 |
| `_gradient_color_2` | `Color?` | 否 | 渐变色2 |
| `_gradient_color_3` | `Color?` | 否 | 渐变色3 |
| `_gradient_color_4` | `Color?` | 否 | 渐变色4 |

#### `KVBase:set_billboard_font_size`

设置公告板文本字体大小

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_font_size` | `integer` | 是 | 字体大小 |

#### `KVBase:set_billboard_text_color`

设置公告板文本颜色

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_color` | `Color` | 是 | 文本颜色 |
| `_gradient_color_1` | `Color?` | 否 | 渐变色1 |
| `_gradient_color_2` | `Color?` | 否 | 渐变色2 |
| `_gradient_color_3` | `Color?` | 否 | 渐变色3 |
| `_gradient_color_4` | `Color?` | 否 | 渐变色4 |

#### `KVBase:set_kv_by_type`

设置自定义值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value_type` | `Enums.ValueType` | 是 | 值类型 |
| `_key` | `string` | 是 | 名称 |
| `_val` | `any` | 是 | 自定义值 |

#### `KVBase:set_tag`

添加标签

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_tag` | `string` | 是 | 标签 |


## LevelComp

### 方法

#### `LevelComp:gain_exp`

获得经验

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_killed_exp` | `Fixed` | 是 | 经验值 |

#### `LevelComp:get_exp`

获取当前经验值

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 经验值 |

#### `LevelComp:get_killed_exp`

获取击杀经验点

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 击杀经验值 |

#### `LevelComp:get_level`

获得当前等级

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 当前等级 |

#### `LevelComp:level_up`

升级

#### `LevelComp:set_killed_exp`

设置击杀经验点

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_killed_exp` | `Fixed` | 是 | 击杀经验值 |


## LifeComp

### 方法

#### `LifeComp:can_reborn`

生物是否可以复活

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否可以复活 |

#### `LifeComp:change_hp`

改变健康值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value` | `Fixed` | 是 | 改变健康值 |

#### `LifeComp:die`

使生物死亡

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_dmg_unit` | `Unit?` | 否 | 伤害来源 |

#### `LifeComp:get_hp`

获取健康值

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 健康值 |

#### `LifeComp:get_hp_max`

获取最大健康值

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 最大健康值 |

#### `LifeComp:get_life`

获取当前命数

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 当前命数 |

#### `LifeComp:get_life_max`

获取最大命数

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 当前命数 |

#### `LifeComp:is_die_status`

是否处于死亡状态

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否处于死亡 |

#### `LifeComp:is_infinite_reborn`

是否无限复活

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否无限复活 |

#### `LifeComp:reborn`

使生物复活

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_immediate` | `boolean?` | 否 | 立即复活 |

#### `LifeComp:set_auto_reborn`

设置自动复活

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_auto_reborn` | `boolean` | 是 | 是否自动复活 |

#### `LifeComp:set_auto_reborn_enable`

设置自动复活

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_auto_reborn` | `boolean` | 是 | 是否自动复活 |

#### `LifeComp:set_auto_reborn_enabled`

设置自动复活

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_auto_reborn` | `boolean` | 是 | 是否自动复活 |

#### `LifeComp:set_hp_max`

设置最大健康值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value` | `Fixed` | 是 | 最大健康值 |

#### `LifeComp:set_infinite_reborn`

设置无限复活

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable_reborn` | `boolean` | 是 | 是否无限复活 |

#### `LifeComp:set_infinite_reborn_enable`

设置无限复活

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable_reborn` | `boolean` | 是 | 是否无限复活 |

#### `LifeComp:set_infinite_reborn_enabled`

设置无限复活

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable_reborn` | `boolean` | 是 | 是否无限复活 |

#### `LifeComp:set_life`

改变当前命数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value` | `integer` | 是 | 当前命数 |

#### `LifeComp:set_life_count`

改变当前命数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value` | `integer` | 是 | 当前命数 |

#### `LifeComp:set_life_max`

改变最大命数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value` | `integer` | 是 | 最大命数 |

#### `LifeComp:set_reborn_in_place`

设置是否原地复活

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_reborn_in_place` | `boolean` | 是 | 是否原地复活 |
| `_reset_camera` | `boolean` | 是 | 是否重置相机 |

#### `LifeComp:set_reborn_time`

设置复活时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_reborn_time` | `Fixed` | 是 | 复活时间 |


## LifeEntity

### 方法

#### `LifeEntity:activate_multi_animation`

发起双人动作

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_anim_id` | `AnimKey` | 是 | 动作编号 |
| `_acceptor_type` | `Enums.UnitType` | 是 | 接收方类型 |

#### `LifeEntity:ai_command_alert`

控制AI执行警戒命令

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_tagert_pos` | `Vector3` | 是 | 目标 |
| `_target_dir` | `Vector3` | 是 | 朝向 |
| `_dalay_time` | `Fixed` | 是 | 延迟 |
| `_reject_time` | `Fixed` | 是 | 厌恶时间 |
| `_move_mode` | `Enums.MoveMode` | 是 | 移动方式 |

#### `LifeEntity:ai_command_chase_with_ability`

控制AI执行追击行为(技能)

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target` | `Unit` | 是 | 目标 |
| `_chase_range` | `Fixed` | 是 | 追击范围 |
| `_reject_time` | `Fixed` | 是 | 厌恶时间 |
| `_action_distance` | `Fixed` | 是 | 反应距离 |
| `_ability_key` | `AbilityKey` | 是 | 反应行为 |
| `_move_mode` | `Enums.MoveMode` | 是 | 移动方式 |
| `_action_count` | `integer` | 是 | 追击次数 |

#### `LifeEntity:ai_command_chase_with_action`

控制AI执行追击行为(命令)

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target` | `Unit` | 是 | 目标 |
| `_chase_range` | `Fixed` | 是 | 追击范围 |
| `_reject_time` | `Fixed` | 是 | 厌恶时间 |
| `_action_distance` | `Fixed` | 是 | 反应距离 |
| `_action_mode` | `Enums.AIBasicCommand` | 是 | 反应行为 |
| `_move_mode` | `Enums.MoveMode` | 是 | 移动方式 |
| `_action_count` | `integer` | 是 | 追击次数 |

#### `LifeEntity:ai_command_chase_with_equipment`

控制AI执行追击行为(物品)

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target` | `Unit` | 是 | 目标 |
| `_chase_range` | `Fixed` | 是 | 追击范围 |
| `_reject_time` | `Fixed` | 是 | 厌恶时间 |
| `_action_distance` | `Fixed` | 是 | 反应距离 |
| `_equipment_key` | `EquipmentKey` | 是 | 反应行为 |
| `_move_mode` | `Enums.MoveMode` | 是 | 移动方式 |
| `_action_count` | `integer` | 是 | 追击次数 |

#### `LifeEntity:ai_command_follow`

控制AI执行跟随命令

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target_unit` | `Unit` | 是 | 目标 |
| `_follow_dis` | `Fixed` | 是 | 距离 |
| `_tolerate_dis` | `Fixed` | 是 | 容忍距离 |
| `_reject_time` | `Fixed` | 是 | 厌恶时间 |
| `_move_mode` | `Enums.MoveMode` | 是 | 移动方式 |

#### `LifeEntity:ai_command_imitate`

控制AI执行模仿命令

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target_unit` | `Character` | 是 | 目标 |
| `_delay` | `Fixed` | 是 | 延迟 |
| `_disable_actions` | `Enums.AIBasicCommand[]` | 是 | 屏蔽操作 |

#### `LifeEntity:ai_command_jump`

控制AI跳跃

#### `LifeEntity:ai_command_lift`

控制AI举起/扔下/投掷

#### `LifeEntity:ai_command_nav`

控制AI执行巡逻命令

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_waypoint` | `Vector3[]` | 是 | 路径 |
| `_reject_time` | `Fixed` | 是 | 厌恶时间 |
| `_round_mode` | `Enums.PatrolType` | 是 | 往返模式 |
| `_move_mode` | `Enums.MoveMode` | 是 | 移动方式 |

#### `LifeEntity:ai_command_patrol`

控制AI执行巡逻命令

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_waypoint` | `Vector3[]` | 是 | 路径 |
| `_reject_time` | `Fixed` | 是 | 厌恶时间 |
| `_round_mode` | `Enums.PatrolType` | 是 | 往返模式 |
| `_move_mode` | `Enums.MoveMode` | 是 | 移动方式 |

#### `LifeEntity:ai_command_pick_up_equipment`

控制AI拾取物品

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target_equipment` | `Equipment` | 是 | 拾取物品 |
| `_move_mode` | `Enums.MoveMode` | 是 | 移动方式 |
| `_reject_time` | `Fixed` | 是 | 厌恶时间 |

#### `LifeEntity:ai_command_roll`

控制AI滚动

#### `LifeEntity:ai_command_rush`

控制AI前扑

#### `LifeEntity:ai_command_start_move`

控制AI单位移动

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_direction` | `Vector3` | 是 | 方向 |
| `_t` | `Fixed` | 是 | 时间 |

#### `LifeEntity:ai_command_start_move_high_priority`

控制AI执行高优先级寻路命令

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target_position` | `Vector3[]` | 是 | 坐标 |
| `_duration` | `Fixed?` | 否 | 持续时间 |
| `_threshold` | `Fixed?` | 否 | 距离阈值 |

#### `LifeEntity:ai_command_stop_move`

控制AI单位停止移动

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_duration` | `Fixed` | 是 | 时间 |

#### `LifeEntity:change_model_by_character`

根据角色设置模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_character` | `Character` | 是 | 角色 |
| `_include_ugc_model` | `boolean?` | 否 | 是否包含自定义形象 |
| `_inherit_scale` | `boolean?` | 否 | 是否继承缩放 |
| `_inherit_capsule_size` | `boolean?` | 否 | 是否继承胶囊体尺寸 |

#### `LifeEntity:change_model_by_creature`

根据生物设置模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_creature` | `Creature` | 是 | 生物 |
| `_include_custom_model` | `boolean?` | 否 | 是否包含自定义形象 |
| `_inherit_scale` | `boolean?` | 否 | 是否继承缩放 |
| `_inherit_capsule_size` | `boolean?` | 否 | 是否继承胶囊体尺寸 |

#### `LifeEntity:change_model_by_creature_key`

根据生物预设设置模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_creature_key` | `CreatureKey` | 是 | 生物编号 |
| `_include_custom_model` | `boolean?` | 否 | 是否包含自定义形象 |
| `_inherit_scale` | `boolean?` | 否 | 是否继承缩放 |
| `_inherit_capsule_size` | `boolean?` | 否 | 是否继承胶囊体 |

#### `LifeEntity:disable_yaw_speed_limit`

关闭单位最大旋转速度限制

#### `LifeEntity:get_direction`

获取生命实体的朝向

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 方向 |

#### `LifeEntity:get_face_dir`

获取生命实体的朝向

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 方向 |

#### `LifeEntity:get_face_direction`

获取生命实体的朝向

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 方向 |

#### `LifeEntity:get_hard_punch_threshold`

获取生命体大力击倒阈值

#### `LifeEntity:get_hpbar_scale_x`

获取生命体血条宽度缩放

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 宽度缩放 |

#### `LifeEntity:get_hpbar_scale_y`

获取生命体血条高度缩放

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 高度缩放 |

#### `LifeEntity:get_lifted_lifeentity`

获取指定生命体当前抓举的生命体

**返回值:**

| 类型 | 说明 |
|------|------|
| `LifeEntity` | 被抓举的生命体 |

#### `LifeEntity:get_lifted_obstacle`

获取指定生命体当前抓举的组件

**返回值:**

| 类型 | 说明 |
|------|------|
| `Obstacle` | 被抓举的组件 |

#### `LifeEntity:get_owner`

获取生命体控制玩家

**返回值:**

| 类型 | 说明 |
|------|------|
| `Role` | 控制玩家 |

#### `LifeEntity:get_punch_threshold`

获取生命体击倒阈值

#### `LifeEntity:interrupt_multi_animation`

打断双人动作

#### `LifeEntity:is_drag_enable`

获取生命体是否可拖动

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否可拖动 |

#### `LifeEntity:is_draggable`

获取生命体是否可拖动

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否可拖动 |

#### `LifeEntity:is_ghost_mode`

生命体是否进入魂蛋模式

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否处于魂蛋模式 |

#### `LifeEntity:is_jumping`

生命体是否在跳跃中

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否在跳跃中 |

#### `LifeEntity:is_moving`

生命体是否在移动中

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否在移动中 |

#### `LifeEntity:is_rushing`

生命体是否在飞扑中

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否在飞扑中 |

#### `LifeEntity:is_touch_enable`

获取生命体是否可点击

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否可点击 |

#### `LifeEntity:is_touchable`

获取生命体是否可点击

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否可点击 |

#### `LifeEntity:jump`

命令角色跳跃

#### `LifeEntity:play_emoji_with_offset`

发送气泡表情

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_emoji_key` | `EmojiKey` | 是 | 表情 |
| `_show_time` | `Fixed` | 是 | 持续时间 |
| `_offset` | `Vector3` | 是 | 偏移 |

#### `LifeEntity:play_face_emoji`

播放面部表情

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_emoji_key` | `EmojiKey` | 是 | 表情 |
| `_show_time` | `Fixed` | 是 | 持续时间 |

#### `LifeEntity:play_face_expression`

播放面部表情

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_emoji_key` | `EmojiKey` | 是 | 表情 |
| `_show_time` | `Fixed` | 是 | 持续时间 |

#### `LifeEntity:recover_model`

还原模型变化

#### `LifeEntity:reset_model`

还原模型变化

#### `LifeEntity:set_ai_move_threshold`

设置寻路阈值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_threshold` | `Fixed` | 是 | 距离 |

#### `LifeEntity:set_direction`

设置生命实体的朝向

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_face_dir` | `Vector3` | 是 | 方向 |

#### `LifeEntity:set_face_dir`

设置生命实体的朝向

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_face_dir` | `Vector3` | 是 | 方向 |

#### `LifeEntity:set_face_direction`

设置生命实体的朝向

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_face_dir` | `Vector3` | 是 | 方向 |

#### `LifeEntity:set_hard_punch_threshold`

设置生命体大力击倒阈值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_punch_threshold` | `Fixed` | 是 | 击倒阈值 |

#### `LifeEntity:set_hpbar_scale`

设置生命体血条缩放

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_hpbar_scale_x` | `Fixed` | 是 | 宽度缩放 |
| `_hpbar_scale_y` | `Fixed` | 是 | 高度缩放 |

#### `LifeEntity:set_mass_bar_visible`

设置质量条是否显示

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_visible` | `boolean` | 是 | 是否显示 |

#### `LifeEntity:set_max_yaw_speed`

设置单位每秒最大旋转速度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_limit_yaw_speed` | `Fixed?` | 否 | yaw值改变速度 |

#### `LifeEntity:set_model_by_character`

根据角色设置模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_character` | `Character` | 是 | 角色 |
| `_include_ugc_model` | `boolean?` | 否 | 是否包含自定义形象 |
| `_inherit_scale` | `boolean?` | 否 | 是否继承缩放 |
| `_inherit_capsule_size` | `boolean?` | 否 | 是否继承胶囊体尺寸 |

#### `LifeEntity:set_model_by_creature`

根据生物设置模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_creature` | `Creature` | 是 | 生物 |
| `_include_custom_model` | `boolean?` | 否 | 是否包含自定义形象 |
| `_inherit_scale` | `boolean?` | 否 | 是否继承缩放 |
| `_inherit_capsule_size` | `boolean?` | 否 | 是否继承胶囊体尺寸 |

#### `LifeEntity:set_model_by_creature_key`

根据生物预设设置模型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_creature_key` | `CreatureKey` | 是 | 生物编号 |
| `_include_custom_model` | `boolean?` | 否 | 是否包含自定义形象 |
| `_inherit_scale` | `boolean?` | 否 | 是否继承缩放 |
| `_inherit_capsule_size` | `boolean?` | 否 | 是否继承胶囊体 |

#### `LifeEntity:set_multi_animation_acceptor_enabled`

设置可接受双人动作邀请

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 是否可接受 |

#### `LifeEntity:set_multi_animation_acceptor_type`

设置可接受的双人动作类型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_acceptor_type` | `Enums.UnitType` | 是 | 可接受类型 |

#### `LifeEntity:set_punch_threshold`

设置生命体击倒阈值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_punch_threshold` | `Fixed` | 是 | 击倒阈值 |

#### `LifeEntity:set_search_enemy_focus_target`

设置搜敌集火目标

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target` | `Unit` | 是 | 目标 |

#### `LifeEntity:set_search_enemy_priority_value_by_tag`

设置搜敌优先级值by标签

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_tag` | `string` | 是 | 标签 |
| `_priority` | `integer` | 是 | 优先级 |

#### `LifeEntity:set_search_enemy_priority_value_by_unit`

设置搜敌优先级值by单位实体

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位实体 |
| `_priority` | `integer` | 是 | 优先级 |

#### `LifeEntity:set_search_enemy_priority_value_by_unit_key`

设置搜敌优先级值by预设编号

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit_key` | `CreatureKey` | 是 | 预设编号 |
| `_priority` | `integer` | 是 | 优先级 |

#### `LifeEntity:set_search_enemy_priority_value_by_unit_type`

设置搜敌优先级值by单位类型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit_prefab_type` | `Enums.UnitType` | 是 | 单位类型 |
| `_priority` | `integer` | 是 | 优先级 |

#### `LifeEntity:set_skeleton_offset`

修改骨骼偏移

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_skeleton` | `Skeleton` | 是 | 骨骼 |
| `_offset` | `Vector3` | 是 | 偏移量 |

#### `LifeEntity:set_skeleton_scale`

修改骨骼缩放

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_skeleton` | `Skeleton` | 是 | 骨骼 |
| `_scale` | `Vector3` | 是 | 缩放比例 |

#### `LifeEntity:show_bubble_msg_with_offset`

发送气泡信息

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_show_msg` | `string` | 是 | 气泡信息 |
| `_show_time` | `Fixed` | 是 | 持续时间 |
| `_max_dis` | `Fixed?` | 否 | 隐藏距离 |
| `_offset` | `Vector3?` | 否 | 偏移 |

#### `LifeEntity:start_ai`

激活AI

#### `LifeEntity:start_move_by_direction`

命令生命体移动

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_direction` | `Vector3` | 是 | 移动方向 |
| `_duration` | `Fixed` | 是 | 持续时间 |

#### `LifeEntity:start_move_to_pos_with_threshold`

命令生命体移动到坐标点

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target_pos` | `Vector3` | 是 | 目标点 |
| `_duration` | `Fixed` | 是 | 持续时间 |
| `_threshold` | `Fixed` | 是 | 容错距离 |

#### `LifeEntity:stop_ai`

暂停AI

#### `LifeEntity:swap_equipment_slot`

交换物品槽位

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_equipment` | `Equipment` | 是 | 物品 |
| `_slot_type` | `Enums.EquipmentSlotType?` | 否 | 槽位类型 |
| `_slot` | `EquipmentSlot?` | 否 | 槽位 |

#### `LifeEntity:try_enter_vehicle`

生命体尝试上载具

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_vehicle` | `Vehicle` | 是 | 载具 |

#### `LifeEntity:try_exit_vehicle`

生命体尝试下载具


## LiftComp

### 方法

#### `LiftComp:get_lift_cd`

获取举起冷却时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 定点数 |

#### `LiftComp:get_lift_cooldown`

获取举起冷却时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 定点数 |

#### `LiftComp:get_lift_left_cd`

获取举起剩余冷却时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 定点数 |

#### `LiftComp:get_lift_remaining_cooldown`

获取举起剩余冷却时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 定点数 |

#### `LiftComp:is_lift_status`

是否处于抓举状态

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否抓举 |

#### `LiftComp:lift_unit`

举起单位

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 被抓举单位 |

#### `LiftComp:set_lift_cd`

设置举起冷却时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_cd_time` | `Fixed` | 是 | 时间 |

#### `LiftComp:set_lift_cooldown`

设置举起冷却时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_cd_time` | `Fixed` | 是 | 时间 |

#### `LiftComp:set_lift_left_cd`

设置举起剩余冷却时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_time` | `Fixed` | 是 | 时间 |

#### `LiftComp:set_lift_remaining_cooldown`

设置举起剩余冷却时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_time` | `Fixed` | 是 | 时间 |


## LiftedComp

### 方法

#### `LiftedComp:is_lifted_enable`

获取是否可抓举

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否可抓举 |

#### `LiftedComp:is_lifted_enabled`

获取是否可抓举

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否可抓举 |

#### `LiftedComp:is_lifted_status`

是否处于被抓举

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否被抓举 |

#### `LiftedComp:set_custom_thrown_force`

设置自定义投掷力量

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_force` | `Fixed` | 是 | 力量 |

#### `LiftedComp:set_custom_thrown_force_enabled`

设置是否自定义投掷力量

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 是否自定义 |

#### `LiftedComp:set_is_use_custom_thrown_force`

设置是否自定义投掷力量

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 是否自定义 |

#### `LiftedComp:set_lifted_enable`

设置是否可抓举

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 是否可被抓举 |

#### `LiftedComp:set_lifted_enabled`

设置是否可抓举

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 是否可被抓举 |


## LuaAPI

### 方法

#### `LuaAPI:call_delay_frame`

延迟调用函数（按帧数）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_interval` | `integer` | 是 | 间隔帧数 |
| `_callback` | `function` | 是 | 回调 |

#### `LuaAPI:call_delay_time`

延迟调用函数（按时间）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_interval` | `Fixed` | 是 | 间隔时间（秒） |
| `_callback` | `function` | 是 | 回调 |

#### `LuaAPI:dispatch_flush`

执行所有已添加并行任务

#### `LuaAPI:dispatch_init`

初始化并行数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_count` | `integer` | 是 | 并行数 |

#### `LuaAPI:dispatch_queue`

添加并行任务

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_i` | `integer` | 是 | 线程ID |
| `_name` | `string` | 是 | 函数名 |
| `_args` | `table` | 是 | 参数 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 任务ID |

#### `LuaAPI:enable_developer_mode`

启用开发者模式

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否启用成功 |

#### `LuaAPI:enable_error_interruption_mode`

启用错误中断模式

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 是否启用 |

#### `LuaAPI:get_component_list`

获取子部件列表（慢）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_obj` | `Unit` | 是 | 单位 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `string[]` | 组件名称列表 |

#### `LuaAPI:get_current_unit`

获取当前单位

**返回值:**

| 类型 | 说明 |
|------|------|
| `Unit` | 当前单位 |

#### `LuaAPI:get_dispatch_count`

获取并行数

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 并行数 |

#### `LuaAPI:get_global_var`

获取全局变量

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_var_name` | `string` | 是 | 变量名 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `any` | 变量 |

#### `LuaAPI:get_unit_id`

获得单位的ID

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 单位ID |

#### `LuaAPI:get_value_type`

获取变量类型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_value` | `any` | 是 | 变量 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 类型 |

#### `LuaAPI:global_register_custom_event`

注册全局自定义事件监听

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_event_name` | `string` | 是 | 自定义事件名 |
| `_callback` | `function` | 是 | 回调 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 注册ID |

#### `LuaAPI:global_register_trigger_event`

注册全局触发器

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_event_desc` | `any[]` | 是 | 事件名及注册参数 |
| `_callback` | `function` | 是 | 回调 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 注册ID |

#### `LuaAPI:global_send_custom_event`

发送全局自定义事件

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_event_name` | `string` | 是 | 自定义事件名 |
| `_data` | `table` | 是 | 附带参数 |

#### `LuaAPI:global_unregister_custom_event`

注销全局自定义事件监听

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_id` | `integer` | 是 | 注册ID |

#### `LuaAPI:global_unregister_trigger_event`

注销全局触发器

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_id` | `integer` | 是 | 注册ID |

#### `LuaAPI:has_component`

是否含有指定子部件

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_object` | `Unit` | 是 | 单位 |
| `_name` | `string` | 是 | 组件名 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否含有指定子组件 |

#### `LuaAPI:log`

输出日志（Lua）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_content` | `string` | 是 | 日志内容 |
| `_log_level` | `integer?` | 否 | 日志级别 |

#### `LuaAPI:query_ui_node`

查询UI单位（慢）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_name` | `string` | 是 | 名字 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `ENode` | UI名称 |

#### `LuaAPI:query_ui_nodes`

批量查询UI单位（慢）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_name_list` | `string[]` | 是 | 名字列表 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `ENode[]` | UI名称列表 |

#### `LuaAPI:query_unit`

查询组件单位（慢）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_name` | `string` | 是 | 名字 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Unit` | 组件 |

#### `LuaAPI:query_units`

批量查询单位（按名称）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_name_list` | `string[]` | 是 | 名字列表 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Unit[]` | 组件列表 |

#### `LuaAPI:query_units_by_type`

批量查询单位（按类型、预设）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit_type` | `Enums.UnitType` | 是 | 单位类型 |
| `_unit_eid` | `integer` | 是 | 预设ID |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Unit[]` | 组件 |

#### `LuaAPI:rand`

生成随机数

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 随机数 |

#### `LuaAPI:set_deadloop_check_enabled`

启用死循环检测

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 启用 |
| `_max_instruction_count` | `integer` | 是 | 最大指令数限制 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否启用成功 |

#### `LuaAPI:set_tick_handler`

设置帧前帧后回调

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_pre_handler` | `function?` | 否 | 帧前回调 |
| `_post_handler` | `function?` | 否 | 帧后回调 |

#### `LuaAPI:unit_register_creation_handler`

注册单位创建回调

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit_type` | `Enums.UnitType` | 是 | 单位类型 |
| `_unit_eid` | `integer` | 是 | 预设ID |
| `_callback` | `function` | 是 | 回调 |

#### `LuaAPI:unit_register_custom_event`

注册单位自定义事件监听

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位 |
| `_event_name` | `string` | 是 | 自定义事件名 |
| `_callback` | `function` | 是 | 回调 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 注册ID |

#### `LuaAPI:unit_register_trigger_event`

注册单位触发器

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位 |
| `_event_desc` | `any[]` | 是 | 事件名及注册参数 |
| `_callback` | `function` | 是 | 回调 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 触发器ID |

#### `LuaAPI:unit_send_custom_event`

发送单位自定义事件

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位 |
| `_event_name` | `string` | 是 | 自定义事件名 |
| `_data` | `table` | 是 | 附带参数 |

#### `LuaAPI:unit_unregister_creation_handler`

注销单位创建回调

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit_type` | `Enums.UnitType` | 是 | 单位类型 |
| `_unit_eid` | `integer` | 是 | 预设ID |

#### `LuaAPI:unit_unregister_custom_event`

注销单位自定义事件监听

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位 |
| `_id` | `integer` | 是 | 注册ID |

#### `LuaAPI:unit_unregister_trigger_event`

注销单位触发器

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位 |
| `_id` | `integer` | 是 | 注册ID |


## Modifier

### 方法

#### `Modifier:add_duration`

增加效果的持续时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_add_time` | `Fixed` | 是 | 增加时间 |

#### `Modifier:add_stack_count`

增加效果层数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_stack_count_add` | `integer` | 是 | 层数 |

#### `Modifier:change_shield_value`

修改护盾值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_shield_value` | `Fixed` | 是 | 属性值 |

#### `Modifier:get_desc`

获取效果描述

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 效果描述 |

#### `Modifier:get_key`

获得效果编号

**返回值:**

| 类型 | 说明 |
|------|------|
| `ModifierKey` | 效果编号 |

#### `Modifier:get_max_stack_count`

获取效果的最大层数

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 层数 |

#### `Modifier:get_name`

获取效果名称

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 效果名称 |

#### `Modifier:get_owner_ability`

获取所属技能

**返回值:**

| 类型 | 说明 |
|------|------|
| `Ability` | 所属技能 |

#### `Modifier:get_owner_character`

获取效果携带角色

**返回值:**

| 类型 | 说明 |
|------|------|
| `Character` | 角色 |

#### `Modifier:get_owner_creature`

获取效果携带生物

**返回值:**

| 类型 | 说明 |
|------|------|
| `Creature` | 生物 |

#### `Modifier:get_owner_life_entity`

获取携带效果的生命体

**返回值:**

| 类型 | 说明 |
|------|------|
| `LifeEntity` | 生命体 |

#### `Modifier:get_owner_unit`

获取效果携带者

**返回值:**

| 类型 | 说明 |
|------|------|
| `Unit` | 效果携带者 |

#### `Modifier:get_releaser_unit`

获取效果释放者

**返回值:**

| 类型 | 说明 |
|------|------|
| `Unit` | 效果释放者 |

#### `Modifier:get_remain_duration`

获取效果剩余持续时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 剩余持续时间 |

#### `Modifier:get_remain_time`

获取效果剩余持续时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 剩余持续时间 |

#### `Modifier:get_shield_value`

获取护盾值

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 属性值 |

#### `Modifier:get_stack_count`

获取效果当前层数

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 层数 |

#### `Modifier:set_remain_duration`

设置效果剩余时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_remain_duration` | `Fixed` | 是 | 剩余持续时间 |

#### `Modifier:set_remain_time`

设置效果剩余时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_remain_duration` | `Fixed` | 是 | 剩余持续时间 |

#### `Modifier:set_shield_value`

设置护盾值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_shield_value` | `Fixed` | 是 | 属性值 |

#### `Modifier:set_stack_count`

设置效果层数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_stack_count_add` | `integer` | 是 | 层数 |


## ModifierComp

### 方法

#### `ModifierComp:add_modifier`

添加效果

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_modifier_id` | `ModifierKey` | 是 | 效果编号 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Modifier` | 是否添加成功 |

#### `ModifierComp:add_modifier_by_key`

添加效果

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_modifier_id` | `ModifierKey` | 是 | 效果编号 |
| `_params_dict` | `table` | 是 | 额外参数 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Modifier` | 效果对象 |

#### `ModifierComp:destroy_buff`

销毁效果

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_modifier` | `Modifier` | 是 | 效果对象 |

#### `ModifierComp:destroy_modifier`

销毁效果

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_modifier` | `Modifier` | 是 | 效果对象 |

#### `ModifierComp:get_buff`

获取单位效果

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_modifier_id` | `ModifierKey` | 是 | 效果ID |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Modifier` | 效果对象 |

#### `ModifierComp:get_buffs`

获取单位所有效果

**返回值:**

| 类型 | 说明 |
|------|------|
| `Modifier[]` | 效果 |

#### `ModifierComp:get_modifier_by_modifier_key`

获取单位效果

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_modifier_id` | `ModifierKey` | 是 | 效果ID |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Modifier` | 效果对象 |

#### `ModifierComp:get_modifiers`

获取单位所有效果

**返回值:**

| 类型 | 说明 |
|------|------|
| `Modifier[]` | 效果 |

#### `ModifierComp:has_modifier_by_key`

是否拥有指定编号的效果

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_modifier_key` | `ModifierKey` | 是 | 效果编号 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否拥有 |

#### `ModifierComp:remove_buff`

移除效果

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_modifier_id` | `ModifierKey` | 是 | 效果编号 |

#### `ModifierComp:remove_modifier_by_key`

移除效果

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_modifier_id` | `ModifierKey` | 是 | 效果编号 |

#### `ModifierComp:remove_modifier_by_modifier_key`

移除效果

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_modifier_id` | `ModifierKey` | 是 | 效果编号 |


## MoveStatusComp

### 方法

#### `MoveStatusComp:is_fling_status`

前是否处于滚动状态

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否滚动 |

#### `MoveStatusComp:is_lost_control_status`

判断移动状态是否处于失控状态

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否失控 |

#### `MoveStatusComp:start_face_lock_target`

开始锁定面向目标

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target_unit` | `Unit` | 是 | 锁定对象 |
| `_time` | `Fixed?` | 否 | 持续时间 |

#### `MoveStatusComp:stop_face_lock_target`

结束锁定面向目标


## Obstacle

### 方法

#### `Obstacle:get_billboard_font_size`

获取公告板文本字体大小

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 公告板字体大小 |

#### `Obstacle:get_billboard_text`

获取公告板文本内容

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 公告板内容 |

#### `Obstacle:get_bound_equipment`

返回绑定的物品

**返回值:**

| 类型 | 说明 |
|------|------|
| `Equipment` | 物品 |

#### `Obstacle:get_chess_rank`

获取牌数(对象只能为麻将/扑克)

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 牌数 |

#### `Obstacle:get_chess_type`

获取牌名(对象只能为麻将/扑克)

**返回值:**

| 类型 | 说明 |
|------|------|
| `ChessType` | 牌名 |

#### `Obstacle:is_drag_enable`

获取组件是否可拖动

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否可拖动 |

#### `Obstacle:is_draggable`

获取组件是否可拖动

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否可拖动 |

#### `Obstacle:is_touch_enable`

获取组件是否可点击

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否可点击 |

#### `Obstacle:is_touchable`

获取组件是否可点击

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否可点击 |

#### `Obstacle:reset_collision_limit`

重置组件碰撞限制

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_limit_type` | `Enums.CollisionLimitType` | 是 | 碰撞限制类型 |

#### `Obstacle:set_billboard_font_size`

设置公告板文本字体大小

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_font_size` | `integer` | 是 | 字体大小 |

#### `Obstacle:set_billboard_text`

设置公告板文本内容

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_content` | `string` | 是 | 文本内容 |

#### `Obstacle:set_billboard_text_color`

设置公告板文本颜色

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_color` | `Color` | 是 | 文本颜色 |
| `_gradient_color_1` | `Color?` | 否 | 渐变色1 |
| `_gradient_color_2` | `Color?` | 否 | 渐变色2 |
| `_gradient_color_3` | `Color?` | 否 | 渐变色3 |
| `_gradient_color_4` | `Color?` | 否 | 渐变色4 |

#### `Obstacle:set_chess_type_and_rank`

设置牌面(对象只能为麻将/扑克)

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_card_type` | `ChessType` | 是 | 牌名 |
| `_card_rank` | `integer` | 是 | 牌数 |

#### `Obstacle:set_climbable`

设置组件是否可攀爬

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 是否可攀爬 |

#### `Obstacle:set_collision_count_limit`

设置组件碰撞次数限制

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_limit_type` | `Enums.CollisionLimitType` | 是 | 碰撞限制类型 |
| `_value` | `integer` | 是 | 值 |

#### `Obstacle:set_collision_interval_limit`

设置组件碰撞间隔限制

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_limit_type` | `Enums.CollisionLimitType` | 是 | 碰撞限制类型 |
| `_value` | `Fixed` | 是 | 值 |

#### `Obstacle:set_collision_limit_count`

设置组件碰撞次数限制

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_limit_type` | `Enums.CollisionLimitType` | 是 | 碰撞限制类型 |
| `_value` | `integer` | 是 | 值 |

#### `Obstacle:set_collision_limit_interval`

设置组件碰撞间隔限制

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_limit_type` | `Enums.CollisionLimitType` | 是 | 碰撞限制类型 |
| `_value` | `Fixed` | 是 | 值 |

#### `Obstacle:set_drag_enable`

设置组件是否可拖动

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enabled` | `boolean` | 是 | 是否可拖动 |

#### `Obstacle:set_draggable`

设置组件是否可拖动

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enabled` | `boolean` | 是 | 是否可拖动 |

#### `Obstacle:set_ranklist_score`

设置场景排行榜分数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_role` | `Role` | 是 | 玩家 |
| `_score` | `integer` | 是 | 分数 |

#### `Obstacle:set_ranklist_score_by_role`

设置场景排行榜分数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_role` | `Role` | 是 | 玩家 |
| `_score` | `integer` | 是 | 分数 |


## OwnerComp

### 方法

#### `OwnerComp:change_owner`

修改所属玩家

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_role` | `Role` | 是 | 所属玩家 |

#### `OwnerComp:get_owner_role`

获取所属玩家

**返回值:**

| 类型 | 说明 |
|------|------|
| `Role` | 所属玩家 |


## Quaternion

### 字段

| 字段名 | 类型 | 说明 |
|--------|------|------|
| `x` | `Fixed` |  |
| `y` | `Fixed` |  |
| `z` | `Fixed` |  |
| `w` | `Fixed` |  |
| `yaw` | `Fixed` | 注意: 由于历史原因，在2025.10.30维护前的游戏版本中，Lua中math库默认欧拉角的旋转顺序为：pitch->yaw->roll（即XYZ顺序），而编辑器内显示的角度为roll->pitch->yaw（即ZXY顺序）。为了避免不同顺序引起的混乱，我们将于2025.10.30维护后，将Lua中math库的默认欧拉角旋转顺序调整至与编辑器内一致。此次更改只影响维护后新创建的地图，您无需修改已经创建或发布的地图。但是如果需要将旧地图的代码迁移到新地图，请留意此处的更改。 |
| `pitch` | `Fixed` | 注意: 由于历史原因，在2025.10.30维护前的游戏版本中，Lua中math库默认欧拉角的旋转顺序为：pitch->yaw->roll（即XYZ顺序），而编辑器内显示的角度为roll->pitch->yaw（即ZXY顺序）。为了避免不同顺序引起的混乱，我们将于2025.10.30维护后，将Lua中math库的默认欧拉角旋转顺序调整至与编辑器内一致。此次更改只影响维护后新创建的地图，您无需修改已经创建或发布的地图。但是如果需要将旧地图的代码迁移到新地图，请留意此处的更改。 |
| `roll` | `Fixed` | 注意: 由于历史原因，在2025.10.30维护前的游戏版本中，Lua中math库默认欧拉角的旋转顺序为：pitch->yaw->roll（即XYZ顺序），而编辑器内显示的角度为roll->pitch->yaw（即ZXY顺序）。为了避免不同顺序引起的混乱，我们将于2025.10.30维护后，将Lua中math库的默认欧拉角旋转顺序调整至与编辑器内一致。此次更改只影响维护后新创建的地图，您无需修改已经创建或发布的地图。但是如果需要将旧地图的代码迁移到新地图，请留意此处的更改。 |
| `euler` | `Vector3` | 注意: 由于历史原因，在2025.10.30维护前的游戏版本中，Lua中math库默认欧拉角的旋转顺序为：pitch->yaw->roll（即XYZ顺序），而编辑器内显示的角度为roll->pitch->yaw（即ZXY顺序）。为了避免不同顺序引起的混乱，我们将于2025.10.30维护后，将Lua中math库的默认欧拉角旋转顺序调整至与编辑器内一致。此次更改只影响维护后新创建的地图，您无需修改已经创建或发布的地图。但是如果需要将旧地图的代码迁移到新地图，请留意此处的更改。 |

### 运算符

| 运算符 | 说明 |
|--------|------|
| `mul(Vector3): Vector3` | 乘法 |
| `mul(Quaternion): Quaternion` | 乘法 |

### 方法

#### `Quaternion:inverse`

四元数求逆

#### `Quaternion:apply`

旋转一个向量

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `v` | `Vector3` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` |  |


## Role

### 方法

#### `Role:add_achieve_count`

增加成就进度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_event_id` | `Achievement` | 是 | 成就 |
| `_add_count` | `integer` | 是 | 成就进度 |

#### `Role:add_achievement_progress`

增加成就进度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_event_id` | `Achievement` | 是 | 成就 |
| `_add_count` | `integer` | 是 | 成就进度 |

#### `Role:add_score`

增加玩家积分

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_add_score` | `integer` | 是 | 积分 |

#### `Role:consume_commodity`

消耗玩家指定数量道具

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_commodity_id` | `UgcCommodity` | 是 | 道具 |
| `_num` | `integer` | 是 | 数量 |

#### `Role:consume_ugc_commodity`

消耗玩家指定数量道具

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_commodity_id` | `UgcCommodity` | 是 | 道具 |
| `_num` | `integer` | 是 | 数量 |

#### `Role:disable_unit_fresnel`

关闭单位菲尼尔效果

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位 |

#### `Role:disable_unit_mask`

关闭单位蒙版

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位 |

#### `Role:disable_unit_outline`

关闭单位描边

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位 |

#### `Role:enter_watch_mode`

玩家进入观战

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_camp_limit` | `boolean?` | 否 | 是否限制阵营观战 |
| `_exit_visible` | `boolean?` | 否 | 是否支持手动退出 |

#### `Role:exit_watch_mode`

玩家退出观战

#### `Role:game_lose`

玩家游戏失败

#### `Role:game_lose_and_show_result_panel`

玩家游戏失败并显示失败界面

#### `Role:game_win_and_show_result_panel`

玩家游戏胜利并显示胜利界面

#### `Role:get_achieve_count`

获取成就进度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_event_id` | `Achievement` | 是 | 成就 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 成就进度 |

#### `Role:get_achievement_progress`

获取成就进度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_event_id` | `Achievement` | 是 | 成就 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 成就进度 |

#### `Role:get_archive_by_type`

获取存档值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_archive_type` | `Enums.ArchiveType` | 是 | 存档类型 |
| `_key` | `Archive` | 是 | 存档 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `any` | 存档值 |

#### `Role:get_archive_configtable`

获取表格存档

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `Archive` | 是 | 存档 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `SheetID` | 表格id |

#### `Role:get_archive_sheetid`

获取表格存档

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `Archive` | 是 | 存档 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `SheetID` | 表格id |

#### `Role:get_camera_dir`

获取玩家相机的朝向(需要开启玩家相机旋转同步)

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 相机朝向 |

#### `Role:get_camera_direction`

获取玩家相机的朝向(需要开启玩家相机旋转同步)

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 相机朝向 |

#### `Role:get_camera_rotation`

获取玩家相机的旋转(需要开启玩家相机旋转同步)

**返回值:**

| 类型 | 说明 |
|------|------|
| `Quaternion` | 相机旋转 |

#### `Role:get_camp`

获取玩家阵营

**返回值:**

| 类型 | 说明 |
|------|------|
| `Camp` | 阵营 |

#### `Role:get_commodity_count`

玩家拥有道具数量

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_commodity_id` | `UgcCommodity` | 是 | 道具 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 拥有道具数量 |

#### `Role:get_ctrl_unit`

获取控制单位

**返回值:**

| 类型 | 说明 |
|------|------|
| `Character` | 单位 |

#### `Role:get_game_result`

获取玩家游戏结果

**返回值:**

| 类型 | 说明 |
|------|------|
| `Enums.GameResult` | 游戏结局 |

#### `Role:get_head_icon`

获取玩家头像

**返回值:**

| 类型 | 说明 |
|------|------|
| `ImageKey` | 玩家头像 |

#### `Role:get_map_total_cost`

获取玩家在当前地图累计花费

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 累计花费 |

#### `Role:get_name`

获取玩家昵称

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 名字 |

#### `Role:get_party_id`

获取玩家蛋仔岛组队Id

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 队伍Id |

#### `Role:get_roleid`

播放广告并触发成功失败事件

**返回值:**

| 类型 | 说明 |
|------|------|
| `RoleID` | 玩家ID |

#### `Role:get_score`

获取玩家积分

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 积分 |

#### `Role:get_ugc_commodity_num`

玩家拥有道具数量

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_commodity_id` | `UgcCommodity` | 是 | 道具 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 拥有道具数量 |

#### `Role:get_voice_volume`

获取语音音量

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 语音音量 |

#### `Role:has_commodity`

玩家是否拥有道具

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_commodity_id` | `UgcCommodity` | 是 | 道具 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否拥有道具 |

#### `Role:has_saved_archive`

玩家是否记录过存档

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否记录过存档 |

#### `Role:has_ugc_commodity`

玩家是否拥有道具

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_commodity_id` | `UgcCommodity` | 是 | 道具 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否拥有道具 |

#### `Role:is_achieve_finish`

成就是否完成

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_event_id` | `Achievement` | 是 | 成就 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否完成 |

#### `Role:is_achievement_completed`

成就是否完成

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_event_id` | `Achievement` | 是 | 成就 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否完成 |

#### `Role:is_gallery_vip`

是否是乐园会员

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否是乐园会员 |

#### `Role:is_lose`

玩家是否失败

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 玩家是否失败 |

#### `Role:is_losed`

玩家是否失败

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 玩家是否失败 |

#### `Role:is_loss`

玩家是否失败

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 玩家是否失败 |

#### `Role:is_lost`

玩家是否失败

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 玩家是否失败 |

#### `Role:is_map_favorited`

是否收藏本地图

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否收藏 |

#### `Role:is_map_liked`

是否点赞本地图

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否点赞 |

#### `Role:is_online`

玩家是否在线

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否在线 |

#### `Role:is_pass_premium_vip`

是否是派对手册进阶会员

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否是派对手册进阶会员 |

#### `Role:is_role_lose`

玩家是否失败

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 玩家是否失败 |

#### `Role:is_role_win`

玩家是否胜利

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 玩家是否胜利 |

#### `Role:is_subscribed_map_author`

玩家是否订阅地图作者

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否订阅 |

#### `Role:is_watch_mode`

玩家进入观战

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否处于观战模式 |

#### `Role:is_win`

玩家是否胜利

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 玩家是否胜利 |

#### `Role:is_won`

玩家是否胜利

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 玩家是否胜利 |

#### `Role:listen_camera_rotation`

设置是否开启玩家相机旋转同步

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enabled` | `boolean` | 是 | 是否同步 |

#### `Role:listen_gyroscope_info`

设置监听陀螺仪信息

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enabled` | `boolean` | 是 | 是否监听 |

#### `Role:load_level_by_voting`

发起进入关卡投票

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_level_key` | `LevelKey` | 是 | 关卡编号 |

#### `Role:lose`

玩家游戏失败

#### `Role:pause_camera_motor`

暂停玩家相机运动

#### `Role:play_2d_sound_with_params`

玩家播放2D音效

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_event_id` | `SoundID` | 是 | 音效ID |
| `_duration` | `Fixed` | 是 | 持续时间 |
| `_volume` | `Fixed` | 是 | 音量 |
| `_speed` | `Fixed` | 是 | 播放速度 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `SoundID` | 音效ID |

#### `Role:play_advertisement_with_event`

播放广告

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_success_event` | `string` | 是 | 成功事件 |
| `_fail_event` | `string` | 是 | 失败事件 |
| `_ad_tag` | `string?` | 否 | 广告标签 |
| `_success_data` | `table?` | 否 | 成功附带参数 |
| `_fail_data` | `table?` | 否 | 失败附带参数 |

#### `Role:play_montage`

播放指定剧情动画

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_montage_key` | `MontageKey` | 是 | 剧情动画编号 |
| `_start_time` | `Fixed` | 是 | 起始时间 |
| `_play_to_end` | `boolean` | 是 | 是否播完 |
| `_play_time` | `Fixed` | 是 | 播放时长 |

#### `Role:play_montage_by_id`

播放指定剧情动画

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_montage_key` | `MontageKey` | 是 | 剧情动画编号 |
| `_start_time` | `Fixed` | 是 | 起始时间 |
| `_play_to_end` | `boolean` | 是 | 是否播完 |
| `_play_time` | `Fixed` | 是 | 播放时长 |

#### `Role:play_screen_sfx`

播放屏幕特效

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sfx_key` | `SfxKey` | 是 | 特效编号 |
| `_duration` | `Fixed?` | 否 | 持续时间 |
| `_rate` | `Fixed?` | 否 | 播放速率 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `SfxID` | 特效ID |

#### `Role:play_ui_animation_effect`

播放界面动效

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_effect_node` | `EEffectNode` | 是 | UI动效 |

#### `Role:play_ui_effect`

播放界面动效

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_effect_node` | `EEffectNode` | 是 | UI动效 |

#### `Role:reset_animation`

重置界面动画

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_node` | `ENode` | 是 | UI节点 |

#### `Role:reset_camera`

重置玩家相机

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_reset_angle` | `boolean?` | 否 | 重置相机角度 |
| `_reset_bind` | `boolean?` | 否 | 重置相机模式 |
| `_reset_point` | `boolean?` | 否 | 重置相机相对于焦点的位置 |
| `_reset_prop_pitch` | `boolean?` | 否 | 重置俯仰角范围 |

#### `Role:resume_camera_motor`

恢复玩家相机运动

#### `Role:send_track_data_change`

发送埋点数据变化

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_track_data_key` | `string` | 是 | 埋点key |
| `_change_num` | `integer` | 是 | 数据变化 |

#### `Role:send_track_data_log`

发送埋点数据变化

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_track_data_key` | `string` | 是 | 埋点key |
| `_change_num` | `integer` | 是 | 数据变化 |

#### `Role:send_ui_custom_event`

发送UI自定义消息

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_event_name` | `string` | 是 | 自定义事件名 |
| `_data` | `table` | 是 | 附带参数 |

#### `Role:set_achieve_count`

设置成就进度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_event_id` | `Achievement` | 是 | 成就 |
| `_count` | `integer` | 是 | 成就进度 |

#### `Role:set_achievement_progress`

设置成就进度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_event_id` | `Achievement` | 是 | 成就 |
| `_count` | `integer` | 是 | 成就进度 |

#### `Role:set_animation_state`

设置节点动画状态

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_node` | `ENode` | 是 | UI节点 |
| `_animation_name` | `string` | 是 | 动画名称 |
| `_state` | `EAnimationState` | 是 | 状态 |

#### `Role:set_archive_by_type`

设置存档值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_archive_type` | `Enums.ArchiveType` | 是 | 存档类型 |
| `_key` | `Archive` | 是 | 存档 |
| `_val` | `any` | 是 | 存档值 |

#### `Role:set_archive_configtable`

设置表格存档

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `Archive` | 是 | 存档 |
| `_val` | `SheetID` | 是 | 表格id |

#### `Role:set_archive_point`

设置存档点坐标

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_position` | `Vector3` | 是 | 坐标 |
| `_priority` | `integer` | 是 | 复活优先级 |
| `_direction` | `Vector3` | 是 | 朝向 |

#### `Role:set_archive_sheetid`

设置表格存档

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `Archive` | 是 | 存档 |
| `_val` | `SheetID` | 是 | 表格id |

#### `Role:set_bagslot_related_life_entity`

设置物品格关联生命体

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_bag_slot` | `EBagSlot` | 是 | UI物品格 |
| `_life_entity` | `LifeEntity` | 是 | 生命体 |

#### `Role:set_bagslot_related_lifeentity`

设置物品格关联生命体

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_bag_slot` | `EBagSlot` | 是 | UI物品格 |
| `_life_entity` | `LifeEntity` | 是 | 生命体 |

#### `Role:set_battle_shop_visible`

设置玩家商店显示

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_battle_shop_id` | `BattleShopKey` | 是 | 商店 |
| `_visible` | `boolean` | 是 | 显示/隐藏 |

#### `Role:set_blind_corner`

玩家设置暗角

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 启用 |
| `_strength` | `Fixed` | 是 | 强度 |
| `_color` | `Color` | 是 | 颜色 |

#### `Role:set_button_enabled`

设置按钮控件的状态

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_button` | `EButton` | 是 | UI按钮 |
| `_enabled` | `boolean` | 是 | 状态 |

#### `Role:set_button_font_size`

设置UI按钮节点文字字号

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_key` | `EButton` | 是 | UI按钮节点 |
| `_font_size` | `Fixed` | 是 | 字号 |

#### `Role:set_button_normal_image`

设置UI按钮节点常态图片

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_button` | `EButton` | 是 | UI按钮节点 |
| `_image_key` | `ImageKey` | 是 | 图片 |

#### `Role:set_button_pressed_image`

设置UI按钮节点按下图片

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_button` | `EButton` | 是 | UI按钮节点 |
| `_image_key` | `ImageKey` | 是 | 图片 |

#### `Role:set_button_text`

设置UI按钮节点文本

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_button` | `EButton` | 是 | UI按钮节点 |
| `_text` | `string` | 是 | 文本 |

#### `Role:set_button_text_color`

设置UI按钮节点文字颜色

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_button` | `EButton` | 是 | UI按钮节点 |
| `_text_color` | `Color` | 是 | 颜色 |

#### `Role:set_camera_bind_mode`

设置玩家相机的模式

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_mode` | `Enums.CameraBindMode` | 是 | 模式 |

#### `Role:set_camera_draggable`

设置玩家相机是否可拖动

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_draggable` | `boolean` | 是 | 可拖动 |

#### `Role:set_camera_gyroscope_control_enabled`

设置玩家陀螺仪控制镜头

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_is_control` | `boolean` | 是 | 陀螺仪控制 |

#### `Role:set_camera_lock_position`

设置玩家相机的绑定坐标

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_pos` | `Vector3` | 是 | 点 |

#### `Role:set_camera_projection_type`

设置玩家相机的投影类型

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_projection_type` | `Enums.CameraProjectionType` | 是 | 投影类型 |

#### `Role:set_camera_property`

设置玩家相机的属性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_property` | `Enums.CameraPropertyType` | 是 | 属性 |
| `_value` | `Fixed` | 是 | 值 |

#### `Role:set_camera_rotation_by_direction`

设置玩家相机面向指定朝向

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target_dir` | `Vector3` | 是 | 目标方向 |
| `_duration` | `Fixed` | 是 | 用时 |

#### `Role:set_camera_rotation_sync_enabled`

设置是否开启玩家相机旋转同步

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enabled` | `boolean` | 是 | 是否同步 |

#### `Role:set_goods_panel_visible`

设置付费道具商店可见性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_visible` | `boolean` | 是 | 可见性 |

#### `Role:set_goods_visible`

设置付费商品可见性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_goods_key` | `UgcGoods` | 是 | 商品 |
| `_visible` | `boolean` | 是 | 可见性 |

#### `Role:set_gyroscope_control_unit`

设置玩家陀螺仪控制组件

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_is_control` | `boolean` | 是 | 是否由陀螺仪控制 |
| `_unit` | `Unit` | 是 | 单位 |

#### `Role:set_gyroscope_sync_enabled`

设置监听陀螺仪信息

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enabled` | `boolean` | 是 | 是否监听 |

#### `Role:set_image_color`

设置UI图片颜色

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_image` | `EImage` | 是 | UI图片节点 |
| `_image_color` | `Color` | 是 | 颜色 |
| `_transition_time` | `Fixed` | 是 | 变化时间 |

#### `Role:set_image_texture_by_key_with_auto_resize`

设置UI图片节点图片

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_image` | `EImage` | 是 | UI图片节点 |
| `_image_key` | `ImageKey` | 是 | 图片 |
| `_reset_size` | `boolean?` | 否 | 是否重置大小 |

#### `Role:set_image_texture_with_auto_resize`

设置UI图片节点图片

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_image` | `EImage` | 是 | UI图片节点 |
| `_image_path` | `string` | 是 | 图片 |
| `_reset_size` | `boolean?` | 否 | 是否重置大小 |

#### `Role:set_image_texture_with_size`

设置UI图片节点图片

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_image` | `EImage` | 是 | UI图片节点 |
| `_image_key` | `ImageKey` | 是 | 图片 |
| `_reset_size` | `boolean?` | 否 | 是否重置大小 |

#### `Role:set_input_field_text`

设置UI输入节点文本

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_input_field` | `EInputField` | 是 | UI输入节点 |
| `_text` | `string` | 是 | 文本 |

#### `Role:set_label_background_color`

设置UI文本节点背景颜色

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_label` | `ELabel` | 是 | UI文本节点 |
| `_color` | `Color` | 是 | 颜色 |
| `_transition_time` | `Fixed` | 是 | 变化时间 |

#### `Role:set_label_background_opacity`

设置UI文本节点背景不透明度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_label` | `ELabel` | 是 | UI文本节点 |
| `_opacity` | `Fixed` | 是 | 不透明度 |
| `_transition_time` | `Fixed` | 是 | 变化时间 |

#### `Role:set_label_color`

设置UI文本节点的字体颜色

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_label` | `ELabel` | 是 | UI文本节点 |
| `_color` | `Color` | 是 | 颜色 |
| `_transition_time` | `Fixed` | 是 | 变化时间 |

#### `Role:set_label_enable_outline`

设置UI文本节点的描边是否开启

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_label` | `ELabel` | 是 | UI文本节点 |
| `_enable` | `boolean` | 是 | 是否开启描边 |

#### `Role:set_label_enable_shadow`

设置UI文本节点的阴影是否开启

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_label` | `ELabel` | 是 | UI文本节点 |
| `_enable` | `boolean` | 是 | 是否开启阴影 |

#### `Role:set_label_font`

设置UI文本节点字体

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_label` | `ELabel` | 是 | UI文本节点 |
| `_font_key` | `FontKey` | 是 | 字体key |

#### `Role:set_label_font_size`

设置UI文本节点的字体大小

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_label` | `ELabel` | 是 | UI文本节点 |
| `_font_size` | `integer` | 是 | 字号 |
| `_transition_time` | `Fixed` | 是 | 变化时间 |

#### `Role:set_label_outline_color`

设置UI文本节点的描边颜色

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_label` | `ELabel` | 是 | UI文本节点 |
| `_color` | `Color` | 是 | 描边颜色 |

#### `Role:set_label_outline_enabled`

设置UI文本节点的描边是否开启

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_label` | `ELabel` | 是 | UI文本节点 |
| `_enable` | `boolean` | 是 | 是否开启描边 |

#### `Role:set_label_outline_opacity`

设置UI文本节点的描边不透明度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_label` | `ELabel` | 是 | UI文本节点 |
| `_opacity` | `Fixed` | 是 | 描边不透明度 |

#### `Role:set_label_outline_width`

设置UI文本节点的描边大小

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_label` | `ELabel` | 是 | UI文本节点 |
| `_width` | `Fixed` | 是 | 描边大小 |

#### `Role:set_label_shadow_color`

设置UI文本节点的阴影颜色

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_label` | `ELabel` | 是 | UI文本节点 |
| `_color` | `Color` | 是 | 阴影颜色 |

#### `Role:set_label_shadow_enabled`

设置UI文本节点的阴影是否开启

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_label` | `ELabel` | 是 | UI文本节点 |
| `_enable` | `boolean` | 是 | 是否开启阴影 |

#### `Role:set_label_shadow_x_offset`

设置UI文本节点的阴影x偏移

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_label` | `ELabel` | 是 | UI文本节点 |
| `_offset` | `Fixed` | 是 | x方向偏移 |

#### `Role:set_label_shadow_y_offset`

设置UI文本节点的阴影y偏移

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_label` | `ELabel` | 是 | UI文本节点 |
| `_offset` | `Fixed` | 是 | y方向偏移 |

#### `Role:set_label_text`

设置UI文本节点的文本

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_label` | `ELabel` | 是 | UI文本节点 |
| `_text` | `string` | 是 | 文本 |

#### `Role:set_listen_camera_rotation`

设置是否开启玩家相机旋转同步

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enabled` | `boolean` | 是 | 是否同步 |

#### `Role:set_name_visible`

设置玩家昵称可见性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_visible` | `boolean` | 是 | 是否可见 |

#### `Role:set_nickname_visible`

设置玩家昵称可见性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_visible` | `boolean` | 是 | 是否可见 |

#### `Role:set_node_touch_enabled`

设置UI节点交互开关

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_node` | `ENode` | 是 | UI节点 |
| `_touch_enabled` | `boolean` | 是 | 交互开关 |

#### `Role:set_node_visible`

设置UI节点可见性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_node` | `ENode` | 是 | UI节点 |
| `_visible` | `boolean` | 是 | 可见性 |

#### `Role:set_progressbar_current`

设置UI进度条节点进度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_progress_bar` | `EProgressbar` | 是 | UI进度条节点 |
| `_current` | `integer` | 是 | 进度 |

#### `Role:set_progressbar_max`

设置UI进度条节点最大进度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_progress_bar` | `EProgressbar` | 是 | UI进度条节点 |
| `_max` | `integer` | 是 | 最大进度 |

#### `Role:set_progressbar_min`

设置UI进度条节点最小进度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_progress_bar` | `EProgressbar` | 是 | UI进度条节点 |
| `_min` | `integer` | 是 | 最小进度 |

#### `Role:set_progressbar_transition`

设置UI进度条节点过渡

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_progress_bar` | `EProgressbar` | 是 | UI进度条节点 |
| `_current` | `integer` | 是 | 进度 |
| `_transition_time` | `Fixed` | 是 | 过渡时间 |

#### `Role:set_role_camp`

设置玩家阵营

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_camp` | `Camp` | 是 | 阵营 |

#### `Role:set_role_ctrl`

设置玩家控制开启/关闭

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 开启/关闭 |

#### `Role:set_role_ctrl_enabled`

设置玩家控制开启/关闭

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 开启/关闭 |

#### `Role:set_score`

设置玩家积分

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_score` | `integer` | 是 | 积分 |

#### `Role:set_ugc_goods_panel_visible`

设置付费道具商店可见性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_visible` | `boolean` | 是 | 可见性 |

#### `Role:set_ui_opacity`

设置UI节点不透明度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_node` | `ENode` | 是 | UI节点 |
| `_opacity` | `Fixed` | 是 | 不透明度 |

#### `Role:set_uipreset_visible`

设置原生界面可见性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ui` | `UIPreset` | 是 | ui预设 |
| `_visible` | `boolean` | 是 | 是否可见 |

#### `Role:set_unit_fresnel`

设置单位菲尼尔效果

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位 |
| `_fresnel_scale` | `Fixed` | 是 | 菲尼尔系数 |
| `_color` | `Color` | 是 | 颜色 |
| `_intensity` | `integer` | 是 | 强度 |

#### `Role:set_unit_fresnel_gradual`

设置单位菲尼尔效果

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位 |
| `_fresnel_scale` | `Fixed` | 是 | 菲尼尔系数 |
| `_color` | `Color` | 是 | 颜色 |
| `_intensity` | `integer` | 是 | 强度 |
| `_duration` | `Fixed` | 是 | 用时 |

#### `Role:set_unit_mask`

设置单位蒙版

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位 |
| `_color` | `Color` | 是 | 颜色 |

#### `Role:set_unit_outline`

设置单位描边

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位 |
| `_width` | `integer` | 是 | 粗细 |
| `_color` | `Color` | 是 | 颜色 |

#### `Role:set_unit_see_through`

设置单位穿透显示

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位 |
| `_enabled` | `boolean` | 是 | 是否穿透显示 |

#### `Role:set_unit_see_through_enabled`

设置单位穿透显示

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位 |
| `_enabled` | `boolean` | 是 | 是否穿透显示 |

#### `Role:set_unit_visible`

设置单位对玩家可见性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 单位 |
| `_is_visible` | `boolean` | 是 | 是否显示 |

#### `Role:set_voice_volume_sync_enabled`

设置是否开启语音音量同步

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enabled` | `boolean` | 是 | 是否同步 |

#### `Role:shake_camera`

设置玩家屏幕震动

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_shake_type` | `Enums.CameraShakeType` | 是 | 震动方向 |
| `_shake_max_amplitude` | `Fixed` | 是 | 震幅 |
| `_shake_time` | `Fixed` | 是 | 震动时间 |
| `_shake_source` | `Unit` | 是 | 震源 |
| `_shake_frequency` | `Fixed` | 是 | 频率 |
| `_shake_time_decay` | `Fixed` | 是 | 时间衰减 |
| `_shake_effect_scope` | `Fixed` | 是 | 生效范围 |
| `_shake_undamped_scope` | `Fixed` | 是 | 不衰减范围 |
| `_shake_distance_decay` | `Fixed` | 是 | 距离衰减 |

#### `Role:show_bag_panel`

设置玩家的背包界面显隐

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_visible` | `boolean` | 是 | 是否显示 |

#### `Role:show_dynamic_text`

在指定坐标显示动态字

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_text` | `string` | 是 | 文本 |
| `_pos` | `Vector3` | 是 | 坐标 |
| `_color` | `Color` | 是 | 颜色 |
| `_duration` | `Fixed` | 是 | 持续时间 |
| `_anim_type` | `integer` | 是 | 类型（0静态1动态） |

**返回值:**

| 类型 | 说明 |
|------|------|
| `DynamicTextID` | 动态文字ID |

#### `Role:show_goods_purchase_panel`

玩家显示指定商品购买界面

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_raw_goods_id` | `UgcGoods` | 是 | 商品 |
| `_show_time` | `Fixed` | 是 | 显示时间 |

#### `Role:show_like_interact_ui`

显示点赞界面

#### `Role:show_like_panel`

显示点赞界面

#### `Role:show_map_share_panel`

指定玩家显示地图分享界面

#### `Role:show_tips`

玩家显示飘字信息

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_content` | `string` | 是 | 字符串 |
| `_duration` | `Fixed?` | 否 | 时长 |

#### `Role:show_ugc_good_purchase_panel`

玩家显示指定商品购买界面

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_raw_goods_id` | `UgcGoods` | 是 | 商品 |
| `_show_time` | `Fixed` | 是 | 显示时间 |

#### `Role:show_ultimate_ability_panel`

显示玩家决战技选择界面

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_keep_time` | `integer` | 是 | 时间 |

#### `Role:skip_current_montage`

跳过剧情动画

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_has_black_screen` | `boolean` | 是 | 是否有跳过黑幕 |

#### `Role:start_level_vote`

发起进入关卡投票

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_level_key` | `LevelKey` | 是 | 关卡编号 |

#### `Role:start_vibration`

开始手机震动

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_vibrate_type` | `integer` | 是 | 震动模式 |
| `_vibrate_count` | `integer` | 是 | 震动次数 |
| `_vibrate_interval` | `Fixed` | 是 | 震动间隔 |

#### `Role:stop_2d_sound`

对指定单位停止2D声音

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sound_instance_id` | `SoundID` | 是 | 音效ID |

#### `Role:stop_camera_motor`

停止玩家相机运动

#### `Role:stop_montage`

结束指定剧情动画

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_montage_key` | `MontageKey` | 是 | 剧情动画编号 |
| `_has_black_screen` | `boolean` | 是 | 是否有跳过黑幕 |

#### `Role:stop_ui_animation_effect`

停止界面动效

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_effect_node` | `EEffectNode` | 是 | UI动效 |

#### `Role:stop_ui_effect`

停止界面动效

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_effect_node` | `EEffectNode` | 是 | UI动效 |

#### `Role:unbind_label_text`

UI文本节点解除属性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_label` | `ELabel` | 是 | UI文本节点 |

#### `Role:unbind_progressbar_current`

为UI进度条节点当前进度解绑属性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_progress_bar` | `EProgressbar` | 是 | UI进度条节点 |

#### `Role:unbind_progressbar_max`

UI进度条节点最大进度解绑属性

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_progress_bar` | `EProgressbar` | 是 | UI进度条节点 |

#### `Role:vote_for_switch_level`

发起进入关卡投票

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_level_key` | `LevelKey` | 是 | 关卡编号 |

#### `Role:win`

玩家胜利


## RollComp

### 方法

#### `RollComp:get_roll_cooldown`

获取滚动冷却时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 冷却时间 |

#### `RollComp:get_roll_left_cd`

获取滚动剩余冷却时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 剩余冷却时间 |

#### `RollComp:get_roll_remaining_cooldown`

获取滚动剩余冷却时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 剩余冷却时间 |

#### `RollComp:set_roll_cooldown`

设置滚动冷却时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_time` | `Fixed` | 是 | 时间 |

#### `RollComp:set_roll_left_cd`

设置滚动剩余冷却时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_remaining_time` | `Fixed` | 是 | 剩余冷却时间 |

#### `RollComp:set_roll_remaining_cooldown`

设置滚动剩余冷却时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_remaining_time` | `Fixed` | 是 | 剩余冷却时间 |


## RushComp

### 方法

#### `RushComp:get_rush_cooldown`

获取飞扑冷却时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 冷却时间 |

#### `RushComp:get_rush_left_cd`

获取飞扑剩余冷却时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 剩余冷却时间 |

#### `RushComp:get_rush_remaining_cooldown`

获取飞扑剩余冷却时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 剩余冷却时间 |

#### `RushComp:set_rush_cooldown`

设置飞扑冷却时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_time` | `Fixed` | 是 | 时间 |

#### `RushComp:set_rush_left_cd`

设置飞扑剩余冷却时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_time` | `Fixed` | 是 | 时间 |

#### `RushComp:set_rush_remaining_cooldown`

设置飞扑剩余冷却时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_time` | `Fixed` | 是 | 时间 |


## SceneUI

### 方法

#### `SceneUI:create_scene_ui_bind_unit`

创建场景界面绑定到单位

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_layer_key` | `E3DLayerKey` | 是 | 场景界面预设编号 |
| `_socket_name` | `Enums.ModelSocket` | 是 | 绑定位置 |
| `_offset_pos` | `Vector3` | 是 | 偏移位置 |
| `_duration` | `Fixed?` | 否 | 持续时间 |
| `_bind_event` | `boolean?` | 否 | 事件是否指向绑定者 |
| `_inherit_visible` | `boolean?` | 否 | 是否跟随组件显隐 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `E3DLayer` | 场景界面 |


## Timer


## TriggerSpace

### 方法

#### `TriggerSpace:get_virtual_light_brightness`

获取光源亮度

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 亮度 |

#### `TriggerSpace:set_virtual_light_brightness`

设置光源亮度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_brightness` | `Fixed` | 是 | 亮度 |


## TriggerSystem

### 方法

#### `TriggerSystem:has_timer`

判断计时器是否存在

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_timer` | `Timer` | 是 | 计时器 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否存在 |


## Unit

### 方法

#### `Unit:add_ability_to_slot`

添加向技能槽位添加UGC技能能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_index` | `AbilitySlot` | 是 | 技能槽位 |
| `_ability_id` | `AbilityKey` | 是 | 技能编号 |
| `_kv_args` | `table?` | 否 | 自定义参数值 |
| `_kv_types` | `table?` | 否 | 自定义参数类型 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Ability` | 添加上的技能 |

#### `Unit:add_angular_motor`

添加圆周运动

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_vel` | `Vector3` | 是 | 角速度 |
| `_time` | `Fixed` | 是 | 时间 |
| `_is_local` | `boolean?` | 否 | 是否局部空间 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 索引 |

#### `Unit:add_child`

添加子单位

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_unit` | `Unit` | 是 | 子单位 |

#### `Unit:add_circle_motor`

添加圆周运动

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_vel` | `Vector3` | 是 | 角速度 |
| `_time` | `Fixed` | 是 | 时间 |
| `_is_local` | `boolean?` | 否 | 是否局部空间 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 索引 |

#### `Unit:add_linear_motor`

添加直线运动

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_vel` | `Vector3` | 是 | 线速度 |
| `_time` | `Fixed` | 是 | 时间 |
| `_is_local` | `boolean?` | 否 | 是否局部空间 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 索引 |

#### `Unit:add_surround_motor`

添加环绕运动

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_follow_target` | `Unit` | 是 | 环绕目标 |
| `_ang_vel` | `Vector3` | 是 | 角速度 |
| `_time` | `Fixed` | 是 | 时间 |
| `_follow_rotate` | `boolean?` | 否 | 是否跟随旋转 |

#### `Unit:add_ugc_skill_to_slot`

添加向技能槽位添加UGC技能能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_index` | `AbilitySlot` | 是 | 技能槽位 |
| `_ability_id` | `AbilityKey` | 是 | 技能编号 |
| `_kv_args` | `table?` | 否 | 自定义参数值 |
| `_kv_types` | `table?` | 否 | 自定义参数类型 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Ability` | 添加上的技能 |

#### `Unit:ai_command_alert`

控制AI执行警戒命令

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_tagert_pos` | `Vector3` | 是 | 目标 |
| `_target_dir` | `Vector3` | 是 | 朝向 |
| `_dalay_time` | `Fixed` | 是 | 延迟 |
| `_reject_time` | `Fixed` | 是 | 厌恶时间 |
| `_move_mode` | `Enums.MoveMode` | 是 | 移动方式 |

#### `Unit:ai_command_follow`

控制AI执行跟随命令

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target_unit` | `Unit` | 是 | 目标 |
| `_follow_dis` | `Fixed` | 是 | 距离 |
| `_tolerate_dis` | `Fixed` | 是 | 容忍距离 |
| `_reject_time` | `Fixed` | 是 | 厌恶时间 |
| `_move_mode` | `Enums.MoveMode` | 是 | 移动方式 |

#### `Unit:ai_command_imitate`

控制AI执行模仿命令

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target_unit` | `Character` | 是 | 目标 |
| `_delay` | `Fixed` | 是 | 延迟 |
| `_disable_actions` | `Enums.AIBasicCommand[]` | 是 | 屏蔽操作 |

#### `Unit:ai_command_jump`

控制AI跳跃

#### `Unit:ai_command_lift`

控制AI举起/扔下/投掷

#### `Unit:ai_command_nav`

控制AI执行巡逻命令

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_waypoint` | `Vector3[]` | 是 | 路径 |
| `_reject_time` | `Fixed` | 是 | 厌恶时间 |
| `_round_mode` | `Enums.PatrolType` | 是 | 往返模式 |
| `_move_mode` | `Enums.MoveMode` | 是 | 移动方式 |

#### `Unit:ai_command_pick_up_equipment`

控制AI拾取物品

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target_equipment` | `Equipment` | 是 | 拾取物品 |
| `_move_mode` | `Enums.MoveMode` | 是 | 移动方式 |
| `_reject_time` | `Fixed` | 是 | 厌恶时间 |

#### `Unit:ai_command_roll`

控制AI滚动

#### `Unit:ai_command_rush`

控制AI前扑

#### `Unit:ai_command_start_move`

控制AI单位移动

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_direction` | `Vector3` | 是 | 方向 |
| `_t` | `Fixed` | 是 | 时间 |

#### `Unit:ai_command_start_move_high_priority`

控制AI执行高优先级寻路命令

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target_position` | `Vector3[]` | 是 | 坐标 |
| `_duration` | `Fixed?` | 否 | 持续时间 |
| `_threshold` | `Fixed?` | 否 | 距离阈值 |

#### `Unit:ai_command_stop_move`

控制AI单位停止移动

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_duration` | `Fixed` | 是 | 时间 |

#### `Unit:apply_force`

对单位施加外力

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_force` | `Vector3` | 是 | 力 |

#### `Unit:apply_impact_force`

施加冲击力

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_force` | `Vector3` | 是 | 力 |
| `_max_speed` | `Fixed?` | 否 | 击飞最大速度 |
| `_force_lost_control` | `boolean?` | 否 | 是否击飞 |
| `_lost_ctrl_time` | `Fixed?` | 否 | 击飞失控时间 |

#### `Unit:break_ability_accumulate`

打断技能蓄力

#### `Unit:break_ability_cast`

打断技能施法

#### `Unit:break_accumulate_skill`

打断技能蓄力

#### `Unit:break_cast_skill`

打断技能施法

#### `Unit:cast_ability_by_ability_slot_and_direction`

控制角色对目标方向释放指定槽位技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_direction` | `Vector3` | 是 | 方向 |
| `_ability_slot` | `AbilitySlot` | 是 | 技能槽位 |
| `_duration` | `Fixed` | 是 | 时间 |

#### `Unit:cast_ability_by_ability_slot_and_position`

控制角色对目标坐标释放指定槽位技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_position` | `Vector3` | 是 | 坐标 |
| `_ability_slot` | `AbilitySlot` | 是 | 技能槽位 |
| `_duration` | `Fixed` | 是 | 时间 |

#### `Unit:cast_ability_by_ability_slot_and_target`

控制角色对目标单位释放指定槽位技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target` | `LifeEntity` | 是 | 目标 |
| `_ability_slot` | `AbilitySlot` | 是 | 技能槽位 |
| `_duration` | `Fixed` | 是 | 时间 |

#### `Unit:cast_ability_by_direction`

控制角色对指定方向执行释放指定预设技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_key` | `AbilityKey` | 是 | 技能编号 |
| `_duration` | `Fixed` | 是 | 时间 |
| `_direction` | `Vector3` | 是 | 方向 |
| `_ability_slot` | `AbilitySlot?` | 否 | 技能槽位 |

#### `Unit:cast_ability_by_position`

控制角色对指定坐标执行释放预设技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_key` | `AbilityKey` | 是 | 技能编号 |
| `_duration` | `Fixed` | 是 | 时间 |
| `_position` | `Vector3` | 是 | 坐标 |
| `_ability_slot` | `AbilitySlot?` | 否 | 技能槽位 |

#### `Unit:cast_ability_by_target`

控制角色对指定目标执行释放指定预设技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_key` | `AbilityKey` | 是 | 技能编号 |
| `_duration` | `Fixed` | 是 | 时间 |
| `_target` | `LifeEntity` | 是 | 目标 |
| `_ability_slot` | `AbilitySlot?` | 否 | 技能槽位 |

#### `Unit:change_comp_color`

改变组件颜色

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_paint_area` | `PaintArea` | 是 | 染色区域 |
| `_color` | `Color` | 是 | 颜色 |

#### `Unit:change_owner`

修改所属玩家

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_role` | `Role` | 是 | 所属玩家 |

#### `Unit:clear_selected_equipment_slot`

清除单位物品格选中状态

#### `Unit:del_surround_motor`

停止环绕运动

#### `Unit:destroy_ability`

销毁技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability` | `Ability` | 是 | 技能对象 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否成功移除 |

#### `Unit:destroy_skill`

销毁技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability` | `Ability` | 是 | 技能对象 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否成功移除 |

#### `Unit:disable_gravity`

关闭重力影响

#### `Unit:disable_interact`

禁用单位互动

#### `Unit:disable_motor`

禁用运动器

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_index` | `integer` | 是 | 索引 |

#### `Unit:disable_yaw_speed_limit`

关闭单位最大旋转速度限制

#### `Unit:enable_gravity`

开启重力影响

#### `Unit:enable_interact`

激活单位互动

#### `Unit:enable_motor`

激活运动器

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_index` | `integer` | 是 | 索引 |

#### `Unit:execute_ability_by_ability_slot_index_and_dir`

控制角色对目标方向释放指定槽位技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_direction` | `Vector3` | 是 | 方向 |
| `_ability_slot` | `AbilitySlot` | 是 | 技能槽位 |
| `_duration` | `Fixed` | 是 | 时间 |

#### `Unit:execute_ability_by_ability_slot_index_and_pos`

控制角色对目标坐标释放指定槽位技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_position` | `Vector3` | 是 | 坐标 |
| `_ability_slot` | `AbilitySlot` | 是 | 技能槽位 |
| `_duration` | `Fixed` | 是 | 时间 |

#### `Unit:execute_ability_by_ability_slot_index_and_target`

控制角色对目标单位释放指定槽位技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_target` | `LifeEntity` | 是 | 目标 |
| `_ability_slot` | `AbilitySlot` | 是 | 技能槽位 |
| `_duration` | `Fixed` | 是 | 时间 |

#### `Unit:execute_ability_by_dir`

控制角色对指定方向执行释放指定预设技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_key` | `AbilityKey` | 是 | 技能编号 |
| `_duration` | `Fixed` | 是 | 时间 |
| `_direction` | `Vector3` | 是 | 方向 |
| `_ability_slot` | `AbilitySlot?` | 否 | 技能槽位 |

#### `Unit:execute_ability_by_pos`

控制角色对指定坐标执行释放预设技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_key` | `AbilityKey` | 是 | 技能编号 |
| `_duration` | `Fixed` | 是 | 时间 |
| `_position` | `Vector3` | 是 | 坐标 |
| `_ability_slot` | `AbilitySlot?` | 否 | 技能槽位 |

#### `Unit:execute_ability_by_target`

控制角色对指定目标执行释放指定预设技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_key` | `AbilityKey` | 是 | 技能编号 |
| `_duration` | `Fixed` | 是 | 时间 |
| `_target` | `LifeEntity` | 是 | 目标 |
| `_ability_slot` | `AbilitySlot?` | 否 | 技能槽位 |

#### `Unit:get_abilities`

获取单位所有技能

**返回值:**

| 类型 | 说明 |
|------|------|
| `Ability[]` | 技能对象 |

#### `Unit:get_ability_by_slot`

获取对应槽位技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_slot` | `AbilitySlot` | 是 | 技能槽位 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Ability` | 技能对象 |

#### `Unit:get_ability_in_slot`

获取对应槽位技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_slot` | `AbilitySlot` | 是 | 技能槽位 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Ability` | 技能对象 |

#### `Unit:get_angular_velocity`

获取单位角速度

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 角速度 |

#### `Unit:get_camp`

获取单位所属阵营

**返回值:**

| 类型 | 说明 |
|------|------|
| `Camp` | 阵营 |

#### `Unit:get_camp_id`

获取单位所属阵营id

**返回值:**

| 类型 | 说明 |
|------|------|
| `CampID` | 阵营ID |

#### `Unit:get_child_by_name`

根据单位编号获取子组件

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_name` | `string` | 是 | 子单位名称 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Unit` | 单位 |

#### `Unit:get_child_customtriggerspaces`

获得所有子触发区域单位

**返回值:**

| 类型 | 说明 |
|------|------|
| `CustomTriggerSpace[]` | 触发区域列表 |

#### `Unit:get_child_obstacles`

获得所有子物理组件单位

**返回值:**

| 类型 | 说明 |
|------|------|
| `Obstacle[]` | 组件列表 |

#### `Unit:get_children`

获得所有子单位

**返回值:**

| 类型 | 说明 |
|------|------|
| `Unit[]` | 单位列表 |

#### `Unit:get_children_customtriggerspace`

获得所有子触发区域单位

**返回值:**

| 类型 | 说明 |
|------|------|
| `CustomTriggerSpace[]` | 触发区域列表 |

#### `Unit:get_children_obstacle`

获得所有子物理组件单位

**返回值:**

| 类型 | 说明 |
|------|------|
| `Obstacle[]` | 组件列表 |

#### `Unit:get_current_mass`

获取当前质量

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 质量 |

#### `Unit:get_current_mass_center`

获取当前质心位置（局部坐标）

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 质心位置 |

#### `Unit:get_customtriggerspaces_random_point`

获取触发区域内的随机坐标

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 坐标 |

#### `Unit:get_equipment_by_slot`

获取身上的物品

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_slot_type` | `Enums.EquipmentSlotType` | 是 | 槽位类型 |
| `_slot_index` | `integer` | 是 | 槽位索引 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Equipment` | 物品 |

#### `Unit:get_equipment_list`

获取角色/生物持有的物品预设列表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_equipment_key` | `EquipmentKey` | 是 | 物品类型 |
| `_exclude_equipped` | `boolean?` | 否 | 不搜索物品栏 |
| `_exclude_bag` | `boolean?` | 否 | 不搜索背包栏 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Equipment[]` | 物品列表 |

#### `Unit:get_equipment_list_by_slot`

获取持有的物品列表

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_slot_type` | `Enums.EquipmentSlotType` | 是 | 槽位类型 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Equipment[]` | 物品 |

#### `Unit:get_equipment_max_num_by_slot`

获取最大可持有的物品数量

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_slot_type` | `Enums.EquipmentSlotType` | 是 | 槽位类型 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 数量 |

#### `Unit:get_key`

获取单位编号

**返回值:**

| 类型 | 说明 |
|------|------|
| `UnitKey` | 单位编号 |

#### `Unit:get_lift_cd`

获取举起冷却时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 定点数 |

#### `Unit:get_lift_left_cd`

获取举起剩余冷却时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 定点数 |

#### `Unit:get_linear_velocity`

获取单位线速度

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 线速度 |

#### `Unit:get_local_dir`

获取单位本地坐标系下的方向

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_direction_type` | `Enums.DirectionType` | 是 | 方向 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 向量 |

#### `Unit:get_local_direction`

获取单位本地坐标系下的方向

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_direction_type` | `Enums.DirectionType` | 是 | 方向 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 向量 |

#### `Unit:get_local_offset_position`

获取单位局部偏移位置

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_offset` | `Vector3` | 是 | 偏移向量 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 偏移位置 |

#### `Unit:get_local_quaternion`

获取单位本地坐标系下的旋转角

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_direction_type` | `Enums.DirectionType` | 是 | 方向 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Quaternion` | Quaternion |

#### `Unit:get_max_linear_velocity`

获取单位最大线速度

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 线速度 |

#### `Unit:get_name`

获取单位名称

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 名称 |

#### `Unit:get_orientation`

获得单位旋转

**返回值:**

| 类型 | 说明 |
|------|------|
| `Quaternion` | 旋转 |

#### `Unit:get_parent`

获取父单位

**返回值:**

| 类型 | 说明 |
|------|------|
| `Unit` | 单位 |

#### `Unit:get_position`

获取单位坐标

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 坐标 |

#### `Unit:get_rigid_body_type`

获取受力类型

**返回值:**

| 类型 | 说明 |
|------|------|
| `Enums.RigidBodyType` | 受力类型 |

#### `Unit:get_role`

获取单位所属玩家

**返回值:**

| 类型 | 说明 |
|------|------|
| `Role` | 所属玩家 |

#### `Unit:get_role_id`

获取单位所属玩家ID

**返回值:**

| 类型 | 说明 |
|------|------|
| `RoleID` | 玩家ID |

#### `Unit:get_roll_left_cd`

获取滚动剩余冷却时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 剩余冷却时间 |

#### `Unit:get_rush_left_cd`

获取飞扑剩余冷却时间

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` | 剩余冷却时间 |

#### `Unit:get_scale`

获得单位缩放

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 缩放 |

#### `Unit:get_selected_equipment`

获取当前选中的物品

**返回值:**

| 类型 | 说明 |
|------|------|
| `Equipment` | 物品 |

#### `Unit:get_skills`

获取单位所有技能

**返回值:**

| 类型 | 说明 |
|------|------|
| `Ability[]` | 技能对象 |

#### `Unit:get_ugc_skill`

获取对应槽位技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_slot` | `AbilitySlot` | 是 | 技能槽位 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Ability` | 技能对象 |

#### `Unit:get_unit_type`

获取单位类型

**返回值:**

| 类型 | 说明 |
|------|------|
| `Enums.UnitType` | 单位类型 |

#### `Unit:hide_bubble_msg`

关闭气泡信息

#### `Unit:interrupt_ability`

打断技能施法

#### `Unit:is_character`

是否为角色

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否为角色 |

#### `Unit:is_creature`

是否为生物

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否为生物 |

#### `Unit:is_dynamic`

组件是否为受力物体

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否为受力物体 |

#### `Unit:is_dynamic_body`

是受力物体

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否受力物体 |

#### `Unit:is_in_custom_trigger_space`

单位是否在触发区域内

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_custom_trigger_space` | `CustomTriggerSpace` | 是 | 触发区域 |
| `_consider_mask` | `boolean?` | 否 | 考虑掩码 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否在触发区域内 |

#### `Unit:is_in_customtriggerspace`

单位是否在触发区域内

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_custom_trigger_space` | `CustomTriggerSpace` | 是 | 触发区域 |
| `_consider_mask` | `boolean?` | 否 | 考虑掩码 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否在触发区域内 |

#### `Unit:is_kinematic_body`

是动力学物体

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否动力学物体 |

#### `Unit:is_model_visible`

单位模型是否可见

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否隐藏 |

#### `Unit:is_physic_active`

单位物理是否生效

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否物理生效 |

#### `Unit:is_physic_enable`

单位物理是否生效

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否物理生效 |

#### `Unit:is_physics_active`

单位物理是否生效

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否物理生效 |

#### `Unit:is_static_body`

是静态物体

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否静态物体 |

#### `Unit:is_valid_ability_target`

判断单位是否满足作为技能释放目标的条件

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability` | `Ability` | 是 | 对应技能 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 目标是否满足条件 |

#### `Unit:model_play_animation`

模型播放动画

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_anim_name` | `string` | 是 | 动画名 |
| `_start_time` | `Fixed` | 是 | 开始时间 |
| `_is_loop` | `boolean` | 是 | 是否循环 |
| `_play_speed` | `Fixed` | 是 | 播放速度 |

#### `Unit:model_stop_anim`

模型停止动画

#### `Unit:model_stop_animation`

模型停止动画

#### `Unit:play_3d_sound`

单位开始播放3d音效

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_sound_key` | `SoundKey` | 是 | 声音编号 |
| `_duration` | `Fixed?` | 否 | 持续时间 |
| `_volume` | `Fixed?` | 否 | 音量 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `SoundID` | 音效ID |

#### `Unit:play_emoji`

单位发送表情

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_emoji_key` | `EmojiKey` | 是 | 表情编号 |

#### `Unit:play_emoji_with_offset`

发送气泡表情

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_emoji_key` | `EmojiKey` | 是 | 表情 |
| `_show_time` | `Fixed` | 是 | 持续时间 |
| `_offset` | `Vector3` | 是 | 偏移 |

#### `Unit:play_sound_with_dis_and_attenuation`

单位开始播放声音

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_event_id` | `SoundKey` | 是 | 声音编号 |
| `_vis_dis` | `Fixed` | 是 | 音效传播距离 |
| `_sound_attenuation_curve` | `string` | 是 | 衰减曲线 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `SoundID` | 音效ID |

#### `Unit:recover_max_linear_velocity`

恢复单位最大线速度

#### `Unit:remove_ability`

移除槽位上的技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_slot` | `AbilitySlot` | 是 | 技能槽位 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否成功移除 |

#### `Unit:remove_ability_by_ability_key`

根据技能编号移除技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_key` | `AbilityKey` | 是 | 技能编号 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否成功移除 |

#### `Unit:remove_ability_by_key`

根据技能编号移除技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_key` | `AbilityKey` | 是 | 技能编号 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否成功移除 |

#### `Unit:remove_ability_in_slot`

移除槽位上的技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_slot` | `AbilitySlot` | 是 | 技能槽位 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否成功移除 |

#### `Unit:remove_from_parent`

从父节点移除

#### `Unit:remove_skill_by_skill_key`

根据技能编号移除技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_key` | `AbilityKey` | 是 | 技能编号 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否成功移除 |

#### `Unit:remove_surround_motor`

停止环绕运动

#### `Unit:remove_ugc_skill_in_slot`

移除槽位上的技能

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_slot` | `AbilitySlot` | 是 | 技能槽位 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否成功移除 |

#### `Unit:reset_ability_cd`

重置指定槽位技能CD

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_index` | `AbilitySlot` | 是 | 技能槽位 |

#### `Unit:reset_skill_cd`

重置指定槽位技能CD

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability_index` | `AbilitySlot` | 是 | 技能槽位 |

#### `Unit:set_ability_to_slot`

替换技能槽位(UGC槽位)

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability` | `Ability` | 是 | 技能对象 |
| `_ability_index` | `AbilitySlot` | 是 | 技能槽位 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Ability` | 被替换的旧技能 |

#### `Unit:set_acc_motor_init_velocity`

设置加速运动初速度并重置

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_index` | `integer` | 是 | 索引 |
| `_init_vel` | `Vector3` | 是 | 初速度 |

#### `Unit:set_angular_velocity`

改变单位角速度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_vel` | `Vector3` | 是 | 角速度 |

#### `Unit:set_current_mass`

设置当前质量

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_mass` | `Fixed` | 是 | 质量 |

#### `Unit:set_current_mass_center`

设置当前质心位置（局部坐标）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_center` | `Vector3` | 是 | 质心位置 |

#### `Unit:set_lift_cd`

设置举起冷却时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_cd_time` | `Fixed` | 是 | 时间 |

#### `Unit:set_lift_left_cd`

设置举起剩余冷却时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_time` | `Fixed` | 是 | 时间 |

#### `Unit:set_linear_motor_velocity`

设置直线运动速度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_index` | `integer` | 是 | 索引 |
| `_vel` | `Vector3` | 是 | 线速度 |
| `_is_local` | `boolean?` | 否 | 是否局部空间 |

#### `Unit:set_linear_velocity`

改变单位线速度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_vel` | `Vector3` | 是 | 线速度 |

#### `Unit:set_max_linear_velocity`

设置单位最大线速度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_velocity` | `Fixed` | 是 | 线速度 |

#### `Unit:set_max_yaw_speed`

设置单位每秒最大旋转速度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_limit_yaw_speed` | `Fixed?` | 否 | yaw值改变速度 |

#### `Unit:set_mirror_reflect_enabled`

开关镜面反射

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 是否启用 |

#### `Unit:set_model_physic_visible`

设置单位物理是否生效

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_is_active` | `boolean` | 是 | 是否生效 |

#### `Unit:set_model_visible`

设置单位模型是否可见

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_v` | `boolean` | 是 | 是否可见 |

#### `Unit:set_orientation`

设置单位旋转

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_rot` | `Quaternion` | 是 | 旋转 |

#### `Unit:set_orientation_smooth`

设置单位旋转（带平滑）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_rot` | `Quaternion` | 是 | 旋转 |

#### `Unit:set_paint_area_color`

改变组件颜色

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_paint_area` | `PaintArea` | 是 | 染色区域 |
| `_color` | `Color` | 是 | 颜色 |

#### `Unit:set_paintarea_color`

改变组件颜色

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_paint_area` | `PaintArea` | 是 | 染色区域 |
| `_color` | `Color` | 是 | 颜色 |

#### `Unit:set_physic_enable`

设置单位物理是否生效

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_is_active` | `boolean` | 是 | 是否生效 |

#### `Unit:set_physics_active`

设置单位物理是否生效

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_is_active` | `boolean` | 是 | 是否生效 |

#### `Unit:set_position`

重置单位坐标

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_pos` | `Vector3` | 是 | 坐标 |

#### `Unit:set_position_smooth`

重置单位坐标（带平滑）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_pos` | `Vector3` | 是 | 坐标 |

#### `Unit:set_roll_left_cd`

设置滚动剩余冷却时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_remaining_time` | `Fixed` | 是 | 剩余冷却时间 |

#### `Unit:set_rush_cd`

设置飞扑冷却时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_time` | `Fixed` | 是 | 时间 |

#### `Unit:set_rush_left_cd`

设置飞扑剩余冷却时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_time` | `Fixed` | 是 | 时间 |

#### `Unit:set_scale`

设置单位缩放

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_scale` | `Fixed` | 是 | 缩放 |
| `_time` | `Fixed` | 是 | 时间 |

#### `Unit:set_selected_equipment_slot`

设置单位选中物品格

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_slot_type` | `Enums.EquipmentSlotType` | 是 | 槽位类型 |
| `_slot_index` | `integer` | 是 | 槽位索引 |

#### `Unit:set_skill_to_slot`

替换技能槽位(UGC槽位)

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_ability` | `Ability` | 是 | 技能对象 |
| `_ability_index` | `AbilitySlot` | 是 | 技能槽位 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Ability` | 被替换的旧技能 |

#### `Unit:set_world_scale`

设置单位世界空间下的缩放

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_scale` | `Vector3` | 是 | 缩放 |

#### `Unit:show_bubble_msg`

发送气泡信息

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_show_msg` | `string` | 是 | 气泡信息 |
| `_show_time` | `Fixed` | 是 | 持续时间 |
| `_max_dis` | `Fixed?` | 否 | 隐藏距离 |
| `_offset` | `Vector3?` | 否 | 偏移 |

#### `Unit:start_ai`

激活AI

#### `Unit:stop_ai`

暂停AI

#### `Unit:stop_sound`

单位停止播放声音

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_lres_id` | `SoundID` | 是 | 音效ID |

#### `Unit:vehicle_start_move`

使载具往某个方向移动一段时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_direction` | `Vector3` | 是 | 方向 |
| `_duration` | `Fixed` | 是 | 持续时间 |

#### `Unit:vehicle_stop_move`

使载具停止移动


## UnitInteractVolumeComp

### 方法

#### `UnitInteractVolumeComp:get_interact_id`

获取单位互动按钮ID

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_interact_index` | `integer` | 是 | 互动索引 |
| `_interact_btn_type` | `Enums.InteractBtnType` | 是 | 互动按钮类型 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `InteractBtnID` | 互动按钮ID |

#### `UnitInteractVolumeComp:set_interact_btn_icon`

设置单位互动按钮图标

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_interact_id` | `InteractBtnID` | 是 | 互动按钮ID |
| `_icon` | `ImageKey` | 是 | 互动按钮图标 |

#### `UnitInteractVolumeComp:set_interact_btn_name`

设置单位互动按钮文本

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_interact_id` | `InteractBtnID` | 是 | 互动按钮ID |
| `_text` | `string` | 是 | 互动按钮文本 |

#### `UnitInteractVolumeComp:set_interact_button_icon`

设置单位互动按钮图标

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_interact_id` | `InteractBtnID` | 是 | 互动按钮ID |
| `_icon` | `ImageKey` | 是 | 互动按钮图标 |

#### `UnitInteractVolumeComp:set_interact_button_text`

设置单位互动按钮文本

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_interact_id` | `InteractBtnID` | 是 | 互动按钮ID |
| `_text` | `string` | 是 | 互动按钮文本 |

#### `UnitInteractVolumeComp:set_interact_button_text_by_index`

设置单位互动按钮文本

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_interact_index` | `integer` | 是 | 互动索引 |
| `_text` | `string` | 是 | 互动按钮文本 |

#### `UnitInteractVolumeComp:set_interact_enable`

设置单位互动是否启用

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 是否启用 |

#### `UnitInteractVolumeComp:set_interact_enable_by_index`

设置单位互动是否启用(索引)

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_interact_index` | `integer` | 是 | 互动索引 |
| `_enable` | `boolean` | 是 | 是否启用 |

#### `UnitInteractVolumeComp:set_interact_enabled`

设置单位互动是否启用

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_enable` | `boolean` | 是 | 是否启用 |

#### `UnitInteractVolumeComp:set_interact_enabled_by_index`

设置单位互动是否启用(索引)

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_interact_index` | `integer` | 是 | 互动索引 |
| `_enable` | `boolean` | 是 | 是否启用 |


## Vector3

### 字段

| 字段名 | 类型 | 说明 |
|--------|------|------|
| `x` | `Fixed` |  |
| `y` | `Fixed` |  |
| `z` | `Fixed` |  |
| `pitch` | `Fixed` |  |
| `yaw` | `Fixed` |  |

### 运算符

| 运算符 | 说明 |
|--------|------|
| `add(Vector3): Vector3` | 加法 |
| `sub(Vector3): Vector3` | 减法 |
| `mul(Vector3): Vector3` | 乘法 |
| `div(Vector3): Vector3` | 除法 |
| `unm: Vector3` | 取负 |
| `add(Fixed): Vector3` | 加法 |
| `sub(Fixed): Vector3` | 减法 |
| `mul(Fixed): Vector3` | 乘法 |
| `div(Fixed): Vector3` | 除法 |

### 方法

#### `Vector3:set_pitch_yaw`

向量设置pitch/yaw

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `pitch` | `Fixed` | 是 |  |
| `yaw` | `Fixed` | 是 |  |

#### `Vector3:length`

向量长度

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `Vector3:getUnit`

返回单位向量

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `Vector3:getAbsoluteVector`

返回绝对值向量

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `Vector3:normalize`

向量归一化，返回长度

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `Vector3:dot`

点积

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `rhs` | `Vector3` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `Vector3:cross`

叉积

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `rhs` | `Vector3` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` |  |


## VehicleComp

### 方法

#### `VehicleComp:reset`

载具复位

#### `VehicleComp:start_move_by_direction`

使载具往某个方向移动一段时间

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_direction` | `Vector3` | 是 | 方向 |
| `_duration` | `Fixed` | 是 | 持续时间 |

#### `VehicleComp:stop_move`

使载具停止移动


## VirtualEquipment

### 方法

#### `VirtualEquipment:add_equipment_current_stack_num`

增加/减少物品当前堆叠数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_num` | `integer` | 是 | 堆叠数 |

#### `VirtualEquipment:add_equipment_max_stack_num`

增加/减少物品最大堆叠数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_num` | `integer` | 是 | 堆叠数 |

#### `VirtualEquipment:can_drop`

获取物品能否丢弃

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 能否丢弃 |

#### `VirtualEquipment:change_current_stack_size`

增加/减少物品当前堆叠数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_num` | `integer` | 是 | 堆叠数 |

#### `VirtualEquipment:change_max_stack_size`

增加/减少物品最大堆叠数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_num` | `integer` | 是 | 堆叠数 |

#### `VirtualEquipment:destroy_equipment`

删除物品

#### `VirtualEquipment:get_current_stack_num`

获取物品当前堆叠层数

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 当前堆叠层数 |

#### `VirtualEquipment:get_desc`

获取物品描述

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 物品描述 |

#### `VirtualEquipment:get_economic_value`

获取物品的抵押价格

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_res_type` | `string` | 是 | 货币类型 |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 卖价 |

#### `VirtualEquipment:get_equipment_auto_pick`

获取物品是否自动拾取

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否自动拾取 |

#### `VirtualEquipment:get_equipment_auto_use`

获取物品是否自动使用

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否自动使用 |

#### `VirtualEquipment:get_equipment_can_drop`

获取物品能否丢弃

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 能否丢弃 |

#### `VirtualEquipment:get_equipment_current_stack_num`

获取物品当前堆叠层数

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 当前堆叠层数 |

#### `VirtualEquipment:get_equipment_desc`

获取物品描述

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 物品描述 |

#### `VirtualEquipment:get_equipment_key_prefab`

获取物品的物品编号

**返回值:**

| 类型 | 说明 |
|------|------|
| `EquipmentKey` | 物品编号 |

#### `VirtualEquipment:get_equipment_max_stack_num`

获取物品最大堆叠层数

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 最大堆叠层数 |

#### `VirtualEquipment:get_equipment_name`

获取物品名称

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 物品名称 |

#### `VirtualEquipment:get_equipment_owner_character`

获取持有物品的角色

**返回值:**

| 类型 | 说明 |
|------|------|
| `Character` | 角色 |

#### `VirtualEquipment:get_equipment_owner_creature`

获取持有物品的生物

**返回值:**

| 类型 | 说明 |
|------|------|
| `Creature` | 生物 |

#### `VirtualEquipment:get_equipment_slot`

获取物品所在槽位

**返回值:**

| 类型 | 说明 |
|------|------|
| `EquipmentSlot` | 槽位 |

#### `VirtualEquipment:get_equipment_slot_index`

获取物品所在槽位

**返回值:**

| 类型 | 说明 |
|------|------|
| `EquipmentSlot` | 槽位 |

#### `VirtualEquipment:get_equipment_slot_type`

获取物品所在槽位类型

**返回值:**

| 类型 | 说明 |
|------|------|
| `Enums.EquipmentSlotType` | 槽位类型 |

#### `VirtualEquipment:get_equipment_type`

获取物品的物品类型

**返回值:**

| 类型 | 说明 |
|------|------|
| `Enums.EquipmentType` | 物品类型 |

#### `VirtualEquipment:get_key`

获取物品的物品编号

**返回值:**

| 类型 | 说明 |
|------|------|
| `EquipmentKey` | 物品编号 |

#### `VirtualEquipment:get_max_stack_num`

获取物品最大堆叠层数

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` | 最大堆叠层数 |

#### `VirtualEquipment:get_name`

获取物品名称

**返回值:**

| 类型 | 说明 |
|------|------|
| `string` | 物品名称 |

#### `VirtualEquipment:get_owner_character`

获取持有物品的角色

**返回值:**

| 类型 | 说明 |
|------|------|
| `Character` | 角色 |

#### `VirtualEquipment:get_owner_creature`

获取持有物品的生物

**返回值:**

| 类型 | 说明 |
|------|------|
| `Creature` | 生物 |

#### `VirtualEquipment:get_position`

获取物品位置

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` | 物品位置 |

#### `VirtualEquipment:get_slot_index`

获取物品所在槽位

**返回值:**

| 类型 | 说明 |
|------|------|
| `EquipmentSlot` | 槽位 |

#### `VirtualEquipment:get_slot_type`

获取物品所在槽位类型

**返回值:**

| 类型 | 说明 |
|------|------|
| `Enums.EquipmentSlotType` | 槽位类型 |

#### `VirtualEquipment:has_owner`

物品是否被持有

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否被持有 |

#### `VirtualEquipment:is_auto_pick`

获取物品是否自动拾取

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否自动拾取 |

#### `VirtualEquipment:is_auto_picking`

获取物品是否自动拾取

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否自动拾取 |

#### `VirtualEquipment:is_auto_use`

获取物品是否自动使用

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否自动使用 |

#### `VirtualEquipment:is_auto_using`

获取物品是否自动使用

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` | 是否自动使用 |

#### `VirtualEquipment:set_current_stack_num`

设置物品当前堆叠数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_num` | `integer` | 是 | 堆叠数 |

#### `VirtualEquipment:set_desc`

设置物品的描述

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_desc` | `string` | 是 | 描述 |

#### `VirtualEquipment:set_droppable`

设置物品能否丢弃

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_droppable` | `boolean` | 是 | 能否丢弃 |

#### `VirtualEquipment:set_economic_value`

设置物品的抵押价格

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_res_type` | `string` | 是 | 货币类型 |
| `_price` | `integer` | 是 | 卖价 |

#### `VirtualEquipment:set_equipment_current_stack_num`

设置物品当前堆叠数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_num` | `integer` | 是 | 堆叠数 |

#### `VirtualEquipment:set_equipment_desc`

设置物品的描述

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_desc` | `string` | 是 | 描述 |

#### `VirtualEquipment:set_equipment_icon`

设置物品的图标

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_icon_key` | `ImageKey` | 是 | 图标 |

#### `VirtualEquipment:set_equipment_max_stack_num`

设置物品最大堆叠数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_num` | `integer` | 是 | 堆叠数 |

#### `VirtualEquipment:set_equipment_name`

设置物品的名称

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_name` | `string` | 是 | 名称 |

#### `VirtualEquipment:set_icon`

设置物品的图标

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_icon_key` | `ImageKey` | 是 | 图标 |

#### `VirtualEquipment:set_max_stack_num`

设置物品最大堆叠数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_num` | `integer` | 是 | 堆叠数 |

#### `VirtualEquipment:set_name`

设置物品的名称

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_name` | `string` | 是 | 名称 |

#### `VirtualEquipment:set_usable`

设置物品能否使用

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `_usable` | `boolean` | 是 | 能否使用 |


## dict

dict 相关API，请使用dict()函数创建

### 方法

#### `dict:set`

设置健值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `key` | `any` | 是 |  |
| `value` | `any` | 是 |  |

#### `dict:get`

获取值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `key` | `any` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `any` |  |

#### `dict:keyvalues`

获取键值列表

**返回值:**

| 类型 | 说明 |
|------|------|
| `any[]` |  |

#### `dict:keys`

获取键列表

**返回值:**

| 类型 | 说明 |
|------|------|
| `any[]` |  |

#### `dict:values`

获取值列表

**返回值:**

| 类型 | 说明 |
|------|------|
| `any[]` |  |


## math

### 方法

#### `math:tointeger`

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `integer` |  |

#### `math:toreal`

转换为实数（固定点数）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:tofixed`

转换为固定点数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `integer` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:isfinite`

检查是否为有限数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` |  |

#### `math:sin`

正弦函数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:cos`

余弦函数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:tan`

正切函数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:asin`

反正弦函数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:acos`

反余弦函数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:atan`

反正切函数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:atan2`

两个参数的反正切函数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `y` | `Fixed` | 是 |  |
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:sqrt`

平方根

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:log`

自然对数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:log2`

以2为底的对数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:log10`

以10为底的对数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:log1p`

计算ln(1+x)

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:exp`

指数函数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:exp2`

2的幂

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:fmod`

取模

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |
| `y` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:pow`

幂函数

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |
| `y` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:round`

四舍五入

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:ceil`

向上取整

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:floor`

向下取整

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:trunc`

截断

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:min`

最小值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `a` | `Fixed` | 是 |  |
| `b` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:max`

最大值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `a` | `Fixed` | 是 |  |
| `b` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:abs`

绝对值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `a` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:fabs`

浮点数绝对值

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:clamp`

限制值在指定范围内

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed` | 是 |  |
| `min` | `Fixed` | 是 |  |
| `max` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:equal001`

比较两个数是否近似相等（误差在0.001内）

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `a` | `Fixed` | 是 |  |
| `b` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `boolean` |  |

#### `math:rad_to_deg`

弧度转角度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `rad` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:deg_to_rad`

角度转弧度

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `deg` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Fixed` |  |

#### `math:Vector3`

创建Vector3对象

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `x` | `Fixed?` | 否 |  |
| `y` | `Fixed?` | 否 |  |
| `z` | `Fixed?` | 否 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Vector3` |  |

#### `math:Quaternion`

从欧拉角创建Quaternion对象，弧度制。注意: 由于历史原因，在2025.10.30维护前的游戏版本中，Lua中math库默认欧拉角的旋转顺序为：pitch->yaw->roll（即XYZ顺序），而编辑器内显示的角度为roll->pitch->yaw（即ZXY顺序）。为了避免不同顺序引起的混乱，我们将于2025.10.30维护后，将Lua中math库的默认欧拉角旋转顺序调整至与编辑器内一致。此次更改只影响维护后新创建的地图，您无需修改已经创建或发布的地图。但是如果需要将旧地图的代码迁移到新地图，请留意此处的更改。

**参数:**

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| `pitch` | `Fixed` | 是 |  |
| `yaw` | `Fixed` | 是 |  |
| `roll` | `Fixed` | 是 |  |

**返回值:**

| 类型 | 说明 |
|------|------|
| `Quaternion` |  |

**重载:**

- `(`x: Fixed`, `y: Fixed`, `z: Fixed`, `w: Fixed`)` -> `Quaternion`


---

## 枚举类型

### `Enums.AIBasicCommand` {#Enums_AIBasicCommand}

| 枚举值 | 值 |
|--------|-----|
| `INVALID` | `0,  ---停止` |
| `JUMP` | `1,  ---跳跃` |
| `ROLL` | `2,  ---滚动` |
| `RUSH` | `3,  ---前扑` |
| `LIFT` | `4,  ---抓举` |
| `ABILITY` | `5,  ---技能&道具` |
| `MOVE` | `6,  ---移动` |


### `Enums.AbilityLimitation` {#Enums_AbilityLimitation}

| 枚举值 | 值 |
|--------|-----|
| `ROLL` | `1,  ---滚动` |
| `UN_CONTROL` | `2,  ---失控` |
| `JUMP` | `4,  ---跳跃` |
| `DIE` | `8,  ---被击败` |
| `DISABLE_IN_CAST` | `16,  ---非施法中` |


### `Enums.AbilityPointerType` {#Enums_AbilityPointerType}

| 枚举值 | 值 |
|--------|-----|
| `EMPTY` | `0,  ---无目标` |
| `CIRCLE` | `5,  ---圆形施法圈` |
| `RECTANGLE` | `6,  ---矩形指示` |
| `SECTOR` | `7,  ---扇形指示` |
| `PARABOLA` | `9,  ---自定义抛物线` |
| `SNIPER` | `12,  ---狙击瞄准` |


### `Enums.AbilityTargetType` {#Enums_AbilityTargetType}

| 枚举值 | 值 |
|--------|-----|
| `NO_TARGET` | `0,  ---无目标` |
| `DIRECTION` | `1,  ---方向` |
| `POINT` | `2,  ---点目标` |
| `UNIT` | `3,  ---指定目标` |


### `Enums.ArchiveType` {#Enums_ArchiveType}

| 枚举值 | 值 |
|--------|-----|
| `Bool` | `'Bool',  ---布尔值` |
| `Fixed` | `'Fixed',  ---定点数` |
| `Int` | `'Int',  ---整型` |
| `SheetID` | `'SheetID',  ---表格` |
| `Str` | `'Str',  ---字符串` |
| `Timestamp` | `'Timestamp',  ---时间戳` |


### `Enums.AxisType` {#Enums_AxisType}

| 枚举值 | 值 |
|--------|-----|
| `RIGHT` | `0,  ---滚动轴(X)` |
| `UP` | `1,  ---偏航轴(Y)` |
| `FORWARD` | `2,  ---俯仰轴(Z)` |


### `Enums.BindType` {#Enums_BindType}

| 枚举值 | 值 |
|--------|-----|
| `BIND_TYPE_DEFAULT` | `0,  ---无` |
| `BIND_TYPE_TRANSLATE` | `1,  ---位置` |
| `BIND_TYPE_ROTATE` | `2,  ---旋转` |
| `BIND_TYPE_TRANSLATE_ROTATE` | `3,  ---位置，旋转` |
| `BIND_TYPE_SCALE` | `4,  ---缩放` |
| `BIND_TYPE_TRANSLATE_SCALE` | `5,  ---位置，缩放` |
| `BIND_TYPE_ROTATE_SCALE` | `6,  ---旋转，缩放` |
| `BIND_TYPE_ALL` | `7,  ---位置，旋转，缩放` |


### `Enums.BuffState` {#Enums_BuffState}

| 枚举值 | 值 |
|--------|-----|
| `BUFF_FORBID_JUMP` | `1,  ---禁止跳跃` |
| `BUFF_FORBID_RUSH` | `2,  ---禁止前扑` |
| `BUFF_FORBID_LIFT` | `4,  ---禁止抓举` |
| `BUFF_FORBID_ROLL` | `8,  ---禁止滚动` |
| `BUFF_FORBID_MOVE` | `16,  ---禁止移动` |
| `BUFF_FORBID_CONTROL` | `32,  ---禁止所有操作` |
| `BUFF_SILENT` | `64,  ---禁止道具&技能` |
| `BUFF_FORBID_UNCONTROL` | `128,  ---无视失控` |


### `Enums.CameraBindMode` {#Enums_CameraBindMode}

| 枚举值 | 值 |
|--------|-----|
| `DEFAULT` | `0,  ---默认` |
| `BIND` | `1,  ---固定` |
| `TRACK` | `2,  ---追踪` |


### `Enums.CameraDragType` {#Enums_CameraDragType}

| 枚举值 | 值 |
|--------|-----|
| `ROTATE` | `1,  ---旋转视角` |
| `MOVE` | `2,  ---平面移动` |


### `Enums.CameraProjectionType` {#Enums_CameraProjectionType}

| 枚举值 | 值 |
|--------|-----|
| `PERSPECTIVE` | `0,  ---透视` |
| `ORTHOGRAPHIC` | `1,  ---正交` |


### `Enums.CameraPropertyType` {#Enums_CameraPropertyType}

| 枚举值 | 值 |
|--------|-----|
| `TRACK_MODE_PITCH` | `0,  ---追踪-俯仰角` |
| `TRACK_MODE_YAW` | `1,  ---追踪-导航角` |
| `BIND_MODE_OFFSET_X` | `2,  ---固定-X轴偏移` |
| `BIND_MODE_OFFSET_Y` | `3,  ---固定-Y轴偏移` |
| `BIND_MODE_OFFSET_Z` | `4,  ---固定-Z轴偏移` |
| `BIND_MODE_PITCH` | `5,  ---固定-俯仰角` |
| `BIND_MODE_YAW` | `6,  ---固定-导航角` |
| `DIST` | `7,  ---相机距离` |
| `FOV` | `8,  ---视场角` |
| `PITCH_MAX` | `9,  ---最大俯仰角` |
| `PITCH_MIN` | `10,  ---最小俯仰角` |
| `OBSERVER_HEIGHT` | `11,  ---相机高度` |
| `HORIZONTAL_OFFSET` | `12,  ---水平偏移` |
| `PITCH` | `15,  ---俯仰角` |
| `YAW` | `16,  ---偏航角` |
| `OFFSET_X` | `17,  ---X轴偏移` |
| `OFFSET_Y` | `18,  ---Y轴偏移` |
| `OFFSET_Z` | `19,  ---Z轴偏移` |
| `ROLL` | `20,  ---滚动角` |
| `ORTHO_VIEW_HEIGHT` | `21,  ---正交相机视域` |
| `PLAYER_VISIBILITY` | `22,  ---隐藏本地角色` |
| `CAMERA_EASING` | `23,  ---关闭相机缓动` |
| `LOCKON_MOVEMENT` | `24,  ---锁定面向到相机` |
| `DRAG_SPEED` | `25,  ---平面拖动速度` |
| `SENSITIVE_X` | `27,  ---旋转速度X` |
| `SENSITIVE_Y` | `28,  ---旋转速度Y` |


### `Enums.CameraShakeCurve` {#Enums_CameraShakeCurve}

| 枚举值 | 值 |
|--------|-----|
| `SINE` | `9998,  ---正弦` |
| `NOISE` | `9999,  ---随机噪声` |


### `Enums.CameraShakeType` {#Enums_CameraShakeType}

| 枚举值 | 值 |
|--------|-----|
| `FRONT_AND_BACK` | `1,  ---前后` |
| `UP_AND_DOWN` | `2,  ---上下` |
| `ROTATE` | `4,  ---旋转` |


### `Enums.CampRelationType` {#Enums_CampRelationType}

| 枚举值 | 值 |
|--------|-----|
| `ENEMY` | `1,  ---敌对` |
| `FRIEND` | `2,  ---同盟` |


### `Enums.CollisionLimitType` {#Enums_CollisionLimitType}

| 枚举值 | 值 |
|--------|-----|
| `SELF_COUNT` | `1,  ---自身触发次数` |
| `SELF_INTERVAL` | `2,  ---自身触发间隔` |
| `SAME_UNIT_COUNT` | `3,  ---同目标触发次数` |
| `SAME_UNIT_INTERVAL` | `4,  ---同目标触发间隔` |


### `Enums.ColorPaintAreaType` {#Enums_ColorPaintAreaType}

| 枚举值 | 值 |
|--------|-----|
| `AREA_1` | `1,  ---染色区域1` |
| `AREA_2` | `2,  ---染色区域2` |
| `AREA_3` | `3,  ---染色区域3` |
| `AREA_4` | `4,  ---染色区域4` |


### `Enums.CommonUnitType` {#Enums_CommonUnitType}

| 枚举值 | 值 |
|--------|-----|
| `OBSTACLE` | `3,  ---物理组件` |
| `TRIGGER_SPACE` | `4,  ---逻辑体` |
| `CUSTOM_TRIGGER_SPACE` | `5,  ---触发区域` |
| `LIFE_ENTITY` | `6,  ---角色/生物` |


### `Enums.CoordinateSystemType` {#Enums_CoordinateSystemType}

| 枚举值 | 值 |
|--------|-----|
| `LOCAL` | `1,  ---局部坐标` |
| `WORLD` | `2,  ---世界坐标` |


### `Enums.DirectionType` {#Enums_DirectionType}

| 枚举值 | 值 |
|--------|-----|
| `FORWARD` | `3,  ---前` |
| `BACK` | `4,  ---后` |
| `UP` | `5,  ---上` |
| `DOWN` | `6,  ---下` |
| `LEFT` | `7,  ---左` |
| `RIGHT` | `8,  ---右` |


### `Enums.DropType` {#Enums_DropType}

| 枚举值 | 值 |
|--------|-----|
| `DIE` | `0,  ---击败` |
| `RESET_POS` | `1,  ---复位` |


### `Enums.EquipmentSlotType` {#Enums_EquipmentSlotType}

| 枚举值 | 值 |
|--------|-----|
| `EQUIPPED` | `1,  ---装配区` |
| `BACKPACK` | `2,  ---储物区` |


### `Enums.EquipmentType` {#Enums_EquipmentType}

| 枚举值 | 值 |
|--------|-----|
| `BASIC` | `0,  ---基础` |
| `WEAPON` | `1,  ---武器物品` |


### `Enums.FixedRoundType` {#Enums_FixedRoundType}

| 枚举值 | 值 |
|--------|-----|
| `ROUND_DOWN` | `0,  ---向下取整` |
| `ROUND_UP` | `1,  ---向上取整` |
| `ROUND_HALF_UP` | `2,  ---四舍五入` |


### `Enums.FriendshipType` {#Enums_FriendshipType}

| 枚举值 | 值 |
|--------|-----|
| `NONE` | `-1,  ---非好友` |
| `NORMAL` | `0,  ---普通好友` |
| `CLOSE_FRIEND` | `1,  ---挚友` |
| `LOVER` | `2,  ---宝子` |
| `BFF` | `3,  ---闺蜜` |
| `BUDDY` | `4,  ---死党` |
| `PARTNER` | `5,  ---最佳拍档` |


### `Enums.GameResult` {#Enums_GameResult}

| 枚举值 | 值 |
|--------|-----|
| `LOSE` | `0,  ---游戏失败` |
| `WIN` | `1,  ---游戏胜利` |
| `GAMING` | `2,  ---游戏中` |


### `Enums.HpBarDisplayMode` {#Enums_HpBarDisplayMode}

| 枚举值 | 值 |
|--------|-----|
| `NONE` | `0,  ---不显示` |
| `PERSISTENT` | `1,  ---常驻显示` |
| `NOT_FULL` | `2,  ---血量不满时显示` |


### `Enums.InteractBtnType` {#Enums_InteractBtnType}

| 枚举值 | 值 |
|--------|-----|
| `OFFICIAL` | `1,  ---官方互动` |
| `STORY` | `101,  ---剧情对话` |
| `SHOP` | `201,  ---商店` |
| `UNIT_START` | `301,  ---家具互动-开始` |
| `UNIT_STOP` | `302,  ---家具互动-结束` |
| `UNIT_DOING` | `304,  ---家具互动-进行中` |
| `MOTOR_START` | `401,  ---运动器-激活` |
| `MOTOR_PAUSE` | `402,  ---运动器-暂停` |
| `MOTOR_BACK` | `404,  ---运动器-返程` |
| `EXPRESSION_START` | `501,  ---表现器-激活` |
| `EXPRESSION_STOP` | `502,  ---表现器-关闭` |
| `CUSTOM` | `601,  ---自定义` |
| `UGC_QUEST` | `701,  ---任务` |
| `PASSWORD` | `801,  ---密码锁` |


### `Enums.JointAssistantKey` {#Enums_JointAssistantKey}

| 枚举值 | 值 |
|--------|-----|
| `SPRING` | `3400000,  ---SPRING` |
| `ROPE` | `3400001,  ---ROPE` |
| `SLIDER` | `3400002,  ---SLIDER` |
| `HINGE` | `3400003,  ---HINGE` |
| `BALL_SOCKET` | `3400004,  ---BALL_SOCKET` |
| `D6` | `3400005,  ---D6` |
| `FIXED` | `3400006,  ---FIXED` |


### `Enums.JointAssistantProperty` {#Enums_JointAssistantProperty}

| 枚举值 | 值 |
|--------|-----|
| `NO_COLLISION_IN_JOINT` | `1,  ---连接物体之间不碰撞` |
| `NO_COLLISION_IN_MECHANISM` | `2,  ---全机械内无碰撞` |
| `ANCHOR1` | `3,  ---本体锚点` |
| `ANCHOR2` | `4,  ---目标锚点` |
| `SPRING_STIFFNESS` | `5,  ---弹簧刚度` |
| `SPRING_DAMPING` | `6,  ---弹簧阻尼` |
| `SPRING_ACCELERATION` | `7,  ---加速度弹簧` |
| `SPRING_RESET_LENGTH_EDITABLE` | `8,  ---自由长度可编辑` |
| `SPRING_RESET_LENGTH` | `9,  ---自由长度` |
| `SPRING_FORCE_LIMIT` | `10,  ---弹簧最大力限制` |
| `SPRING_MIN_LENGTH` | `11,  ---弹簧最大长度` |
| `SPRING_MAX_LENGTH` | `12,  ---弹簧最小长度` |
| `SPRING_THICKNESS` | `13,  ---弹簧粗细` |
| `ROPE_LENGTH` | `14,  ---绳子长度` |
| `ROPE_STRETCHABLE` | `15,  ---绳子可拉伸` |
| `ROPE_STRETCH_STIFFNESS` | `16,  ---绳子拉伸强度` |
| `ROPE_THICKNESS` | `17,  ---绳子粗细` |
| `SLIDER_AXIS` | `18,  ---滑动轴方向` |
| `SLIDER_LIMITED` | `19,  ---滑动距离限制` |
| `SLIDER_MIN_VALUE` | `20,  ---滑动距离最小值` |
| `SLIDER_MAX_VALUE` | `21,  ---滑动距离最大值` |
| `SLIDER_POSITION_DRIVE_ENABLED` | `22,  ---滑动关节位置驱动` |
| `SLIDER_DRIVE_POSITION` | `23,  ---滑动关节驱动目标位置` |
| `SLIDER_DRIVE_STIFFNESS` | `24,  ---滑动关节位置驱动强度` |
| `SLIDER_VELOCITY_DRIVE_ENABLED` | `25,  ---滑动关节速度驱动` |
| `SLIDER_DRIVE_VELOCITY` | `26,  ---滑动关节驱动速度` |
| `SLIDER_DRIVE_DAMPING` | `27,  ---滑动关节速度驱动强度` |
| `HINGE_AXIS` | `28,  ---合页转轴方向` |
| `HINGE_LIMITED` | `29,  ---合页旋转限制` |
| `HINGE_MIN_VALUE` | `30,  ---合页限制最小值` |
| `HINGE_MAX_VALUE` | `31,  ---合页限制最大值` |
| `HINGE_POSITION_DRIVE_ENABLED` | `32,  ---合页位置驱动` |
| `HINGE_DRIVE_POSITION` | `33,  ---合页目标位置(角度)` |
| `HINGE_DRIVE_STIFFNESS` | `34,  ---合页位置驱动强度` |
| `HINGE_VELOCITY_DRIVE_ENABLED` | `35,  ---合页速度驱动` |
| `HINGE_DRIVE_VELOCITY` | `36,  ---合页目标速度(角速度)` |
| `HINGE_DRIVE_DAMPING` | `37,  ---合页速度驱动强度` |
| `BS_X_AXIS` | `38,  ---扭转轴朝向` |
| `BS_LIMITED` | `39,  ---关节角度限制` |
| `BS_MAX_SWING_ANGLE` | `40,  ---最大摆动角度` |
| `BS_TWIST_LIMITED` | `41,  ---扭转角度限制` |
| `BS_MIN_TWIST_ANGLE` | `42,  ---扭转限制最小角度` |
| `BS_MAX_TWIST_ANGLE` | `43,  ---扭转限制最大角度` |
| `BS_REBALANCE_STIFFNESS` | `44,  ---回正强度` |


### `Enums.ModelSocket` {#Enums_ModelSocket}

| 枚举值 | 值 |
|--------|-----|
| `socket_abdomen` | `'socket_abdomen',  ---腹部` |
| `socket_belly` | `'socket_belly',  ---鱼腹` |
| `socket_body` | `'socket_body',  ---身体` |
| `socket_calf_l` | `'socket_calf_l',  ---左小腿` |
| `socket_calf_r` | `'socket_calf_r',  ---右小腿` |
| `socket_chest` | `'socket_chest',  ---胸部` |
| `socket_claw_l` | `'socket_claw_l',  ---左钳` |
| `socket_claw_r` | `'socket_claw_r',  ---右钳` |
| `socket_eye_l` | `'socket_eye_l',  ---左眼` |
| `socket_eye_r` | `'socket_eye_r',  ---右眼` |
| `socket_fin_back` | `'socket_fin_back',  ---背后鳍` |
| `socket_fin_dorsal` | `'socket_fin_dorsal',  ---背鳍` |
| `socket_fin_l` | `'socket_fin_l',  ---左鳍` |
| `socket_fin_lb` | `'socket_fin_lb',  ---左后鳍` |
| `socket_fin_r` | `'socket_fin_r',  ---右鳍` |
| `socket_fin_rb` | `'socket_fin_rb',  ---右后鳍` |
| `socket_fin_tail` | `'socket_fin_tail',  ---尾鳍` |
| `socket_fin_ventral` | `'socket_fin_ventral',  ---腹鳍` |
| `socket_fin_ventral_l` | `'socket_fin_ventral_l',  ---左腹鳍` |
| `socket_fin_ventral_r` | `'socket_fin_ventral_r',  ---右腹鳍` |
| `socket_foot_l` | `'socket_foot_l',  ---左脚` |
| `socket_foot_lb` | `'socket_foot_lb',  ---左后脚` |
| `socket_foot_lf` | `'socket_foot_lf',  ---左前脚` |
| `socket_foot_lm` | `'socket_foot_lm',  ---左中脚` |
| `socket_foot_r` | `'socket_foot_r',  ---右脚` |
| `socket_foot_rb` | `'socket_foot_rb',  ---右后脚` |
| `socket_foot_rf` | `'socket_foot_rf',  ---右前脚` |
| `socket_foot_rm` | `'socket_foot_rm',  ---右中脚` |
| `socket_forearm_l` | `'socket_forearm_l',  ---左臂` |
| `socket_forearm_r` | `'socket_forearm_r',  ---右臂` |
| `socket_hand_l` | `'socket_hand_l',  ---左手` |
| `socket_hand_r` | `'socket_hand_r',  ---右手` |
| `socket_head` | `'socket_head',  ---头部` |
| `socket_lowerarm_l` | `'socket_lowerarm_l',  ---左小臂` |
| `socket_lowerarm_r` | `'socket_lowerarm_r',  ---右小臂` |
| `socket_lowerlimb_lb` | `'socket_lowerlimb_lb',  ---左后下肢` |
| `socket_lowerlimb_lf` | `'socket_lowerlimb_lf',  ---左前下肢` |
| `socket_lowerlimb_rb` | `'socket_lowerlimb_rb',  ---右后下肢` |
| `socket_lowerlimb_rf` | `'socket_lowerlimb_rf',  ---右前下肢` |
| `socket_mouth` | `'socket_mouth',  ---鱼嘴` |
| `socket_origin` | `'socket_origin',  ---底面中心点` |
| `socket_tail` | `'socket_tail',  ---尾巴` |
| `socket_tail_end` | `'socket_tail_end',  ---尾巴末端` |
| `socket_thigh_l` | `'socket_thigh_l',  ---左大腿` |
| `socket_thigh_r` | `'socket_thigh_r',  ---右大腿` |
| `socket_torso_b` | `'socket_torso_b',  ---躯干后部` |
| `socket_torso_f` | `'socket_torso_f',  ---躯干前部` |
| `socket_upperarm_l` | `'socket_upperarm_l',  ---左大臂` |
| `socket_upperarm_r` | `'socket_upperarm_r',  ---右大臂` |
| `socket_upperlimb_lb` | `'socket_upperlimb_lb',  ---左后上肢` |
| `socket_upperlimb_lf` | `'socket_upperlimb_lf',  ---左前上肢` |
| `socket_upperlimb_rb` | `'socket_upperlimb_rb',  ---右后上肢` |
| `socket_upperlimb_rf` | `'socket_upperlimb_rf',  ---右前上肢` |
| `socket_weapon_l` | `'socket_weapon_l',  ---左手武器` |
| `socket_weapon_r` | `'socket_weapon_r',  ---右手武器` |


### `Enums.MoveMode` {#Enums_MoveMode}

| 枚举值 | 值 |
|--------|-----|
| `DIRECT` | `0,  ---无视障碍` |
| `PATHFIND` | `1,  ---规避障碍` |
| `DIRECT_AUTO_JUMP` | `4,  ---根据路点高度差跳跃` |


### `Enums.NavMode` {#Enums_NavMode}

| 枚举值 | 值 |
|--------|-----|
| `DIRECT` | `0,  ---无视障碍` |
| `PATHFIND` | `1,  ---规避障碍` |
| `PATHFIND_NO_JUMP` | `2,  ---规避障碍（非跳跃）` |
| `PATHFIND_JUMP` | `3,  ---规避障碍（跳跃）` |
| `DIRECT_AUTO_JUMP` | `4,  ---根据路点高度差跳跃` |


### `Enums.OrientationType` {#Enums_OrientationType}

| 枚举值 | 值 |
|--------|-----|
| `EAST` | `1,  ---东` |
| `WEST` | `2,  ---西` |
| `SOUTH` | `3,  ---南` |
| `NORTH` | `4,  ---北` |
| `UP` | `5,  ---上` |
| `DOWN` | `6,  ---下` |


### `Enums.PatrolType` {#Enums_PatrolType}

| 枚举值 | 值 |
|--------|-----|
| `ONE_WAY` | `0,  ---一次性` |
| `LOOP` | `1,  ---巡逻` |
| `BACK_AND_FORTH` | `2,  ---往返` |
| `NEAREST` | `3,  ---紧随路径` |


### `Enums.PlaneType` {#Enums_PlaneType}

| 枚举值 | 值 |
|--------|-----|
| `XZ_PLANE` | `1,  ---XZ平面` |
| `XY_PLANE` | `2,  ---XY平面` |
| `YZ_PLANE` | `3,  ---YZ平面` |


### `Enums.QuestStatus` {#Enums_QuestStatus}

| 枚举值 | 值 |
|--------|-----|
| `PENDING` | `0,  ---待解锁` |
| `ACCEPTABLE` | `1,  ---待接取` |
| `RUNNING` | `2,  ---进行中` |
| `SUBMITTING` | `3,  ---待提交` |
| `COMPLETED` | `4,  ---成功` |
| `INVALID` | `5,  ---失败` |


### `Enums.RigidBodyType` {#Enums_RigidBodyType}

| 枚举值 | 值 |
|--------|-----|
| `STATIC` | `0,  ---静态物体` |
| `KINEMATIC` | `1,  ---恒定运动` |
| `DYNAMIC` | `2,  ---受外力` |


### `Enums.SearchEnemyPriority` {#Enums_SearchEnemyPriority}

| 枚举值 | 值 |
|--------|-----|
| `DEFAULT` | `0,  ---无` |
| `NEAREST` | `1,  ---距离最近` |
| `FARTHEST` | `2,  ---距离最远` |
| `HIGHEST_HP` | `3,  ---健康值最高` |
| `LOWEST_HP` | `4,  ---健康值最低` |
| `CHARACTER_FIRST` | `5,  ---角色优先` |
| `CREATURE_FIRST` | `6,  ---生物优先` |


### `Enums.SkyBoxGradualType` {#Enums_SkyBoxGradualType}

| 枚举值 | 值 |
|--------|-----|
| `NORMAL` | `0,  ---普通` |
| `GRADUAL_CHANGE` | `1,  ---渐变` |
| `FAULT_STYLE` | `2,  ---电子故障` |
| `BURN_STYLE` | `3,  ---燃烧风格` |


### `Enums.TriggerSpaceEventType` {#Enums_TriggerSpaceEventType}

| 枚举值 | 值 |
|--------|-----|
| `ENTER` | `1,  ---进入` |
| `LEAVE` | `4,  ---离开` |


### `Enums.UnitType` {#Enums_UnitType}

| 枚举值 | 值 |
|--------|-----|
| `CREATURE` | `4,  ---生物` |
| `CUSTOMTRIGGERSPACE` | `8,  ---触发区域` |
| `CHARACTER` | `128,  ---角色` |
| `OBSTACLE` | `256,  ---组件` |
| `TRIGGERSPACE` | `512,  ---逻辑体` |
| `DECORATION` | `1024,  ---装饰物` |
| `EQUIPMENT` | `32768,  ---物品` |


### `Enums.ValueType` {#Enums_ValueType}

| 枚举值 | 值 |
|--------|-----|
| `AIBasicCommand` | `'AIBasicCommand',  ---AI基础命令类型` |
| `Ability` | `'Ability',  ---技能` |
| `AbilityAnchorID` | `'AbilityAnchorID',  ---技能锚点ID` |
| `AbilityIndex` | `'AbilityIndex',  ---技能槽位(内部)` |
| `AbilityKey` | `'AbilityKey',  ---技能编号` |
| `AbilityLimitation` | `'AbilityLimitation',  ---技能使用限制` |
| `AbilityPointerType` | `'AbilityPointerType',  ---技能指示器类型` |
| `AbilitySlot` | `'AbilitySlot',  ---技能槽位` |
| `Achievement` | `'Achievement',  ---自定义成就` |
| `Actor` | `'Actor',  ---Actor` |
| `AnimKey` | `'AnimKey',  ---动画编号` |
| `Archive` | `'Archive',  ---自定义存档` |
| `ArchiveType` | `'ArchiveType',  ---存档类型` |
| `BattleShopKey` | `'BattleShopKey',  ---商店` |
| `BindType` | `'BindType',  ---绑定类型` |
| `Bool` | `'Bool',  ---布尔值` |
| `BuffState` | `'BuffState',  ---状态` |
| `CameraBindMode` | `'CameraBindMode',  ---相机绑定模式` |
| `CameraDragType` | `'CameraDragType',  ---相机拖动类型` |
| `CameraProjectionType` | `'CameraProjectionType',  ---相机投影类型` |
| `CameraPropertyType` | `'CameraPropertyType',  ---相机属性预设` |
| `CameraShakeCurve` | `'CameraShakeCurve',  ---屏幕震动曲线` |
| `CameraShakeType` | `'CameraShakeType',  ---屏幕震动类型` |
| `Camp` | `'Camp',  ---阵营` |
| `CampID` | `'CampID',  ---阵营ID` |
| `CampRelationType` | `'CampRelationType',  ---阵营关系类型` |
| `Character` | `'Character',  ---角色` |
| `CharacterID` | `'CharacterID',  ---角色ID` |
| `CharacterKey` | `'CharacterKey',  ---角色编号` |
| `ChessType` | `'ChessType',  ---麻将/扑克花色` |
| `CollisionLimitType` | `'CollisionLimitType',  ---碰撞限制枚举` |
| `Color` | `'Color',  ---颜色` |
| `Creature` | `'Creature',  ---生物` |
| `CreatureID` | `'CreatureID',  ---生物ID` |
| `CreatureKey` | `'CreatureKey',  ---生物编号` |
| `CustomTriggerSpace` | `'CustomTriggerSpace',  ---触发区域` |
| `CustomTriggerSpaceID` | `'CustomTriggerSpaceID',  ---触发区域ID` |
| `CustomTriggerSpaceKey` | `'CustomTriggerSpaceKey',  ---触发区域编号` |
| `Damage` | `'Damage',  ---伤害` |
| `DamageSchema` | `'DamageSchema',  ---伤害方案` |
| `Decoration` | `'Decoration',  ---装饰物` |
| `DecorationKey` | `'DecorationKey',  ---装饰物编号` |
| `DirectionType` | `'DirectionType',  ---方向枚举` |
| `DynamicTextID` | `'DynamicTextID',  ---动态文字ID` |
| `E3DLayer` | `'E3DLayer',  ---场景UI实例` |
| `E3DLayerKey` | `'E3DLayerKey',  ---场景UI预设` |
| `EAnimationState` | `'EAnimationState',  ---UI动画状态` |
| `EBagSlot` | `'EBagSlot',  ---UI物品槽位节点` |
| `EButton` | `'EButton',  ---UI按钮节点` |
| `ECanvas` | `'ECanvas',  ---UI画布节点` |
| `EEffectNode` | `'EEffectNode',  ---UI动效节点` |
| `EImage` | `'EImage',  ---UI图片节点` |
| `EInputField` | `'EInputField',  ---UI输入节点` |
| `ELabel` | `'ELabel',  ---UI文本节点` |
| `ENode` | `'ENode',  ---UI节点` |
| `ENodeTouchEventType` | `'ENodeTouchEventType',  ---界面交互事件类型` |
| `EProgressbar` | `'EProgressbar',  ---UI进度条节点` |
| `EmojiKey` | `'EmojiKey',  ---气泡表情编号` |
| `Equipment` | `'Equipment',  ---物品` |
| `EquipmentID` | `'EquipmentID',  ---物品ID` |
| `EquipmentKey` | `'EquipmentKey',  ---物品编号` |
| `EquipmentSlot` | `'EquipmentSlot',  ---物品槽位` |
| `EquipmentSlotType` | `'EquipmentSlotType',  ---物品槽位类型` |
| `EquipmentType` | `'EquipmentType',  ---物品类型` |
| `FaceExpressionKey` | `'FaceExpressionKey',  ---面部表情编号` |
| `FaceStatusKey` | `'FaceStatusKey',  ---动态表情key` |
| `FashionKey` | `'FashionKey',  ---时装编号` |
| `Fixed` | `'Fixed',  ---定点数` |
| `FontKey` | `'FontKey',  ---字体key` |
| `FriendshipType` | `'FriendshipType',  ---好友关系` |
| `GameResult` | `'GameResult',  ---游戏结局` |
| `HpBarDisplayMode` | `'HpBarDisplayMode',  ---血条显示模式` |
| `ImageKey` | `'ImageKey',  ---图片编号` |
| `Int` | `'Int',  ---整型` |
| `InteractBtnID` | `'InteractBtnID',  ---交互按钮编号` |
| `InteractBtnType` | `'InteractBtnType',  ---交互按钮类型` |
| `JointAssistant` | `'JointAssistant',  ---关节` |
| `JointAssistantKey` | `'JointAssistantKey',  ---关节预设编号` |
| `JointAssistantProperty` | `'JointAssistantProperty',  ---关节属性` |
| `JointAssistantType` | `'JointAssistantType',  ---关节类型` |
| `LevelKey` | `'LevelKey',  ---关卡编号` |
| `LifeEntity` | `'LifeEntity',  ---生命体` |
| `LifeEntityKey` | `'LifeEntityKey',  ---生命体编号` |
| `ListAIBasicCommand` | `'ListAIBasicCommand',  ---AI基础命令类型列表` |
| `ListAbility` | `'ListAbility',  ---技能列表` |
| `ListAbilityAnchorID` | `'ListAbilityAnchorID',  ---技能锚点ID列表` |
| `ListAbilityIndex` | `'ListAbilityIndex',  ---技能槽位(内部)列表` |
| `ListAbilityKey` | `'ListAbilityKey',  ---技能编号列表` |
| `ListAbilityLimitation` | `'ListAbilityLimitation',  ---技能使用限制列表` |
| `ListAbilityPointerType` | `'ListAbilityPointerType',  ---技能指示器类型列表` |
| `ListAbilitySlot` | `'ListAbilitySlot',  ---技能槽位列表` |
| `ListAchievement` | `'ListAchievement',  ---自定义成就列表` |
| `ListActor` | `'ListActor',  ---Actor列表` |
| `ListAnimKey` | `'ListAnimKey',  ---动画编号列表` |
| `ListArchive` | `'ListArchive',  ---自定义存档列表` |
| `ListArchiveType` | `'ListArchiveType',  ---存档类型列表` |
| `ListBattleShopKey` | `'ListBattleShopKey',  ---商店列表` |
| `ListBindType` | `'ListBindType',  ---绑定类型列表` |
| `ListBool` | `'ListBool',  ---布尔值列表` |
| `ListBuffState` | `'ListBuffState',  ---状态列表` |
| `ListCameraBindMode` | `'ListCameraBindMode',  ---相机绑定模式列表` |
| `ListCameraDragType` | `'ListCameraDragType',  ---相机拖动类型列表` |
| `ListCameraProjectionType` | `'ListCameraProjectionType',  ---相机投影类型列表` |
| `ListCameraPropertyType` | `'ListCameraPropertyType',  ---相机属性预设列表` |
| `ListCameraShakeCurve` | `'ListCameraShakeCurve',  ---屏幕震动曲线列表` |
| `ListCameraShakeType` | `'ListCameraShakeType',  ---屏幕震动类型列表` |
| `ListCamp` | `'ListCamp',  ---阵营列表` |
| `ListCampID` | `'ListCampID',  ---阵营ID列表` |
| `ListCampRelationType` | `'ListCampRelationType',  ---阵营关系类型列表` |
| `ListCharacter` | `'ListCharacter',  ---角色列表` |
| `ListCharacterID` | `'ListCharacterID',  ---角色ID列表` |
| `ListCharacterKey` | `'ListCharacterKey',  ---角色编号列表` |
| `ListChessType` | `'ListChessType',  ---麻将/扑克花色列表` |
| `ListCollisionLimitType` | `'ListCollisionLimitType',  ---碰撞限制枚举列表` |
| `ListColor` | `'ListColor',  ---颜色列表` |
| `ListCreature` | `'ListCreature',  ---生物列表` |
| `ListCreatureID` | `'ListCreatureID',  ---生物ID列表` |
| `ListCreatureKey` | `'ListCreatureKey',  ---生物编号列表` |
| `ListCustomTriggerSpace` | `'ListCustomTriggerSpace',  ---触发区域列表` |
| `ListCustomTriggerSpaceID` | `'ListCustomTriggerSpaceID',  ---触发区域ID列表` |
| `ListCustomTriggerSpaceKey` | `'ListCustomTriggerSpaceKey',  ---触发区域编号列表` |
| `ListDamageSchema` | `'ListDamageSchema',  ---伤害方案列表` |
| `ListDecoration` | `'ListDecoration',  ---装饰物列表` |
| `ListDecorationKey` | `'ListDecorationKey',  ---装饰物编号列表` |
| `ListDirectionType` | `'ListDirectionType',  ---方向枚举列表` |
| `ListDynamicTextID` | `'ListDynamicTextID',  ---动态文字ID列表` |
| `ListE3DLayer` | `'ListE3DLayer',  ---场景UI实例列表` |
| `ListE3DLayerKey` | `'ListE3DLayerKey',  ---场景UI预设列表` |
| `ListEAnimationState` | `'ListEAnimationState',  ---UI动画状态列表` |
| `ListEBagSlot` | `'ListEBagSlot',  ---UI物品槽位节点列表` |
| `ListEButton` | `'ListEButton',  ---UI按钮节点列表` |
| `ListECanvas` | `'ListECanvas',  ---UI画布节点列表` |
| `ListEEffectNode` | `'ListEEffectNode',  ---UI动效节点列表` |
| `ListEImage` | `'ListEImage',  ---UI图片节点列表` |
| `ListEInputField` | `'ListEInputField',  ---UI输入节点列表` |
| `ListELabel` | `'ListELabel',  ---UI文本节点列表` |
| `ListENode` | `'ListENode',  ---UI节点列表` |
| `ListENodeTouchEventType` | `'ListENodeTouchEventType',  ---界面交互事件类型列表` |
| `ListEProgressbar` | `'ListEProgressbar',  ---UI进度条节点列表` |
| `ListEmojiKey` | `'ListEmojiKey',  ---气泡表情编号列表` |
| `ListEquipment` | `'ListEquipment',  ---物品列表` |
| `ListEquipmentID` | `'ListEquipmentID',  ---物品ID列表` |
| `ListEquipmentKey` | `'ListEquipmentKey',  ---物品编号列表` |
| `ListEquipmentSlot` | `'ListEquipmentSlot',  ---物品槽位列表` |
| `ListEquipmentSlotType` | `'ListEquipmentSlotType',  ---物品槽位类型列表` |
| `ListEquipmentType` | `'ListEquipmentType',  ---物品类型列表` |
| `ListFaceExpressionKey` | `'ListFaceExpressionKey',  ---面部表情编号列表` |
| `ListFaceStatusKey` | `'ListFaceStatusKey',  ---动态表情key列表` |
| `ListFashionKey` | `'ListFashionKey',  ---时装编号列表` |
| `ListFixed` | `'ListFixed',  ---定点数列表` |
| `ListFontKey` | `'ListFontKey',  ---字体key列表` |
| `ListFriendshipType` | `'ListFriendshipType',  ---好友关系列表` |
| `ListGameResult` | `'ListGameResult',  ---游戏结局列表` |
| `ListHpBarDisplayMode` | `'ListHpBarDisplayMode',  ---血条显示模式列表` |
| `ListImageKey` | `'ListImageKey',  ---图片编号列表` |
| `ListInt` | `'ListInt',  ---整型列表` |
| `ListInteractBtnID` | `'ListInteractBtnID',  ---交互按钮编号列表` |
| `ListInteractBtnType` | `'ListInteractBtnType',  ---交互按钮类型列表` |
| `ListJointAssistant` | `'ListJointAssistant',  ---关节列表` |
| `ListJointAssistantKey` | `'ListJointAssistantKey',  ---关节预设编号列表` |
| `ListJointAssistantProperty` | `'ListJointAssistantProperty',  ---关节属性列表` |
| `ListJointAssistantType` | `'ListJointAssistantType',  ---关节类型列表` |
| `ListLevelKey` | `'ListLevelKey',  ---关卡编号列表` |
| `ListLifeEntity` | `'ListLifeEntity',  ---生命体列表` |
| `ListLifeEntityKey` | `'ListLifeEntityKey',  ---生命体编号列表` |
| `ListModelSocket` | `'ListModelSocket',  ---部位列表` |
| `ListModifier` | `'ListModifier',  ---效果列表` |
| `ListModifierKey` | `'ListModifierKey',  ---效果编号列表` |
| `ListMontageKey` | `'ListMontageKey',  ---剧情动画编号列表` |
| `ListMoveMode` | `'ListMoveMode',  ---AI移动模式列表` |
| `ListObstacle` | `'ListObstacle',  ---组件列表` |
| `ListObstacleID` | `'ListObstacleID',  ---组件ID列表` |
| `ListObstacleKey` | `'ListObstacleKey',  ---组件编号列表` |
| `ListOrientationType` | `'ListOrientationType',  ---方位枚举列表` |
| `ListPaintArea` | `'ListPaintArea',  ---染色区域列表` |
| `ListPathID` | `'ListPathID',  ---路径ID列表` |
| `ListPathPointID` | `'ListPathPointID',  ---路点ID列表` |
| `ListPatrolType` | `'ListPatrolType',  ---AI巡逻类型列表` |
| `ListPlaneType` | `'ListPlaneType',  ---拖动平面列表` |
| `ListQuaternion` | `'ListQuaternion',  ---四元数列表` |
| `ListRigidBodyType` | `'ListRigidBodyType',  ---物理类型列表` |
| `ListRole` | `'ListRole',  ---玩家列表` |
| `ListRoleID` | `'ListRoleID',  ---玩家ID列表` |
| `ListSfxID` | `'ListSfxID',  ---特效ID列表` |
| `ListSfxKey` | `'ListSfxKey',  ---特效编号列表` |
| `ListSheetID` | `'ListSheetID',  ---表格列表` |
| `ListSkeleton` | `'ListSkeleton',  ---骨骼列表` |
| `ListSkyBoxBackground` | `'ListSkyBoxBackground',  ---天空盒背景列表` |
| `ListSkyBoxGradualType` | `'ListSkyBoxGradualType',  ---天空盒渐变类型列表` |
| `ListSound3DKey` | `'ListSound3DKey',  ---3D音效编号列表` |
| `ListSoundID` | `'ListSoundID',  ---音效ID列表` |
| `ListSoundKey` | `'ListSoundKey',  ---音效编号列表` |
| `ListStr` | `'ListStr',  ---字符串列表` |
| `ListTimer` | `'ListTimer',  ---计时器列表` |
| `ListTimestamp` | `'ListTimestamp',  ---时间戳列表` |
| `ListTrigger` | `'ListTrigger',  ---触发器列表` |
| `ListTriggerSpace` | `'ListTriggerSpace',  ---逻辑体列表` |
| `ListTriggerSpaceEventType` | `'ListTriggerSpaceEventType',  ---触发区域类型列表` |
| `ListTriggerSpaceID` | `'ListTriggerSpaceID',  ---逻辑体ID列表` |
| `ListTriggerSpaceKey` | `'ListTriggerSpaceKey',  ---逻辑体编号列表` |
| `ListUIPreset` | `'ListUIPreset',  ---UIPreset列表` |
| `ListUIPresetNode` | `'ListUIPresetNode',  ---UI预设节点列表` |
| `ListUgcCommodity` | `'ListUgcCommodity',  ---道具列表` |
| `ListUgcGoods` | `'ListUgcGoods',  ---商品列表` |
| `ListUnit` | `'ListUnit',  ---单位列表` |
| `ListUnitGroup` | `'ListUnitGroup',  ---物理组件组列表` |
| `ListUnitGroupKey` | `'ListUnitGroupKey',  ---组件组编号列表` |
| `ListUnitID` | `'ListUnitID',  ---单位ID列表` |
| `ListUnitKey` | `'ListUnitKey',  ---单位编号列表` |
| `ListUnitType` | `'ListUnitType',  ---单位类型列表` |
| `ListValueType` | `'ListValueType',  ---值类型列表` |
| `ListVector3` | `'ListVector3',  ---向量列表` |
| `ListVehicle` | `'ListVehicle',  ---载具列表` |
| `ListVehicleKey` | `'ListVehicleKey',  ---单位编号(载具)列表` |
| `ListWindFieldShapeType` | `'ListWindFieldShapeType',  ---风场形状列表` |
| `ModelSocket` | `'ModelSocket',  ---部位` |
| `Modifier` | `'Modifier',  ---效果` |
| `ModifierKey` | `'ModifierKey',  ---效果编号` |
| `MontageKey` | `'MontageKey',  ---剧情动画编号` |
| `MoveMode` | `'MoveMode',  ---AI移动模式` |
| `Obstacle` | `'Obstacle',  ---组件` |
| `ObstacleID` | `'ObstacleID',  ---组件ID` |
| `ObstacleKey` | `'ObstacleKey',  ---组件编号` |
| `OrientationType` | `'OrientationType',  ---方位枚举` |
| `PaintArea` | `'PaintArea',  ---染色区域` |
| `PathID` | `'PathID',  ---路径ID` |
| `PathPointID` | `'PathPointID',  ---路点ID` |
| `PatrolType` | `'PatrolType',  ---AI巡逻类型` |
| `PlaneType` | `'PlaneType',  ---拖动平面` |
| `Quaternion` | `'Quaternion',  ---四元数` |
| `RigidBodyType` | `'RigidBodyType',  ---物理类型` |
| `Role` | `'Role',  ---玩家` |
| `RoleID` | `'RoleID',  ---玩家ID` |
| `SfxID` | `'SfxID',  ---特效ID` |
| `SfxKey` | `'SfxKey',  ---特效编号` |
| `SheetID` | `'SheetID',  ---表格` |
| `Skeleton` | `'Skeleton',  ---骨骼` |
| `SkyBoxBackground` | `'SkyBoxBackground',  ---天空盒背景` |
| `SkyBoxGradualType` | `'SkyBoxGradualType',  ---天空盒渐变类型` |
| `Sound3DKey` | `'Sound3DKey',  ---3D音效编号` |
| `SoundID` | `'SoundID',  ---音效ID` |
| `SoundKey` | `'SoundKey',  ---音效编号` |
| `Str` | `'Str',  ---字符串` |
| `Timer` | `'Timer',  ---计时器` |
| `Timestamp` | `'Timestamp',  ---时间戳` |
| `Trigger` | `'Trigger',  ---触发器` |
| `TriggerSpace` | `'TriggerSpace',  ---逻辑体` |
| `TriggerSpaceEventType` | `'TriggerSpaceEventType',  ---触发区域类型` |
| `TriggerSpaceID` | `'TriggerSpaceID',  ---逻辑体ID` |
| `TriggerSpaceKey` | `'TriggerSpaceKey',  ---逻辑体编号` |
| `UIPreset` | `'UIPreset',  ---UIPreset` |
| `UIPresetNode` | `'UIPresetNode',  ---UI预设节点` |
| `UgcCommodity` | `'UgcCommodity',  ---道具` |
| `UgcGoods` | `'UgcGoods',  ---商品` |
| `Unit` | `'Unit',  ---单位` |
| `UnitGroup` | `'UnitGroup',  ---物理组件组` |
| `UnitGroupKey` | `'UnitGroupKey',  ---组件组编号` |
| `UnitID` | `'UnitID',  ---单位ID` |
| `UnitKey` | `'UnitKey',  ---单位编号` |
| `UnitType` | `'UnitType',  ---单位类型` |
| `ValueType` | `'ValueType',  ---值类型` |
| `Vector3` | `'Vector3',  ---向量` |
| `Vehicle` | `'Vehicle',  ---载具` |
| `VehicleKey` | `'VehicleKey',  ---单位编号(载具)` |
| `WindFieldShapeType` | `'WindFieldShapeType',  ---风场形状` |


### `Enums.WindFieldShapeType` {#Enums_WindFieldShapeType}

| 枚举值 | 值 |
|--------|-----|
| `CONICAL` | `0,  ---锥形` |
| `SECTOR` | `1,  ---扇形` |
| `WAVE` | `2,  ---波浪形` |


---

## 类型别名

| 别名 | 类型 | 说明 |
|------|------|------|
| `AbilityAnchorID` | `string 技能锚点ID` |  |
| `AbilitySlot` | `integer 技能槽位` |  |
| `AnimKey` | `integer 动画编号` |  |
| `BattleShopKey` | `integer 商店` |  |
| `CharacterKey` | `LifeEntityKey 角色编号` |  |
| `Color` | `integer 颜色` |  |
| `CommodityInfo` | `{[1]: UgcCommodity, [2]: integer}  {商品项目ID, 道具数量}` |  |
| `CustomTriggerSpaceID` | `UnitID 触发区域ID` |  |
| `DamageSchema` | `integer 伤害方案` |  |
| `DecorationKey` | `UnitKey 装饰物编号` |  |
| `E3DLayer` | `string 场景UI实例` |  |
| `EAnimationState` | `integer UI动画状态` |  |
| `EButton` | `ENode UI按钮节点` |  |
| `EImage` | `ENode UI图片节点` |  |
| `ELabel` | `ENode UI文本节点` |  |
| `ENodeTouchEventType` | `integer 界面交互事件类型` |  |
| `EmojiKey` | `integer 气泡表情编号` |  |
| `EquipmentKey` | `integer 物品编号` |  |
| `FontKey` | `integer 字体key` |  |
| `InteractBtnID` | `integer 交互按钮编号` |  |
| `JointAssistantType` | `integer 关节类型` |  |
| `LifeEntityKey` | `UnitKey 生命体编号` |  |
| `MontageKey` | `string 剧情动画编号` |  |
| `ObstacleKey` | `UnitKey 组件编号` |  |
| `PathID` | `UnitID 路径ID` |  |
| `RoleID` | `integer 玩家ID` |  |
| `SfxKey` | `integer 特效编号` |  |
| `Skeleton` | `string 骨骼` |  |
| `SoundID` | `integer 音效ID` |  |
| `Timestamp` | `integer 时间戳` |  |
| `UIPreset` | `string UIPreset` |  |
| `UgcGoods` | `string 商品` |  |
| `UnitGroupKey` | `UnitKey 组件组编号` |  |
| `UnitKey` | `integer 单位编号` |  |
| `VehicleKey` | `UnitKey 单位编号(载具)` |  |
