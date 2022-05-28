.class public Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_ripple.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "ripple"

.field private static final mExportFuncIdx_addDrop:I = 0x0

.field private static final mExportFuncIdx_clean:I = 0x1

.field private static final mExportVarIdx_g_Constants:I = 0x7

.field private static final mExportVarIdx_g_PFBackground:I = 0x1

.field private static final mExportVarIdx_g_PVWater:I = 0x0

.field private static final mExportVarIdx_g_TRiverbed:I = 0x3

.field private static final mExportVarIdx_g_WaterMesh:I = 0x2

.field private static final mExportVarIdx_g_meshHeight:I = 0x4

.field private static final mExportVarIdx_g_rotate:I = 0x6

.field private static final mExportVarIdx_g_xOffset:I = 0x5


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __F32:Landroid/renderscript/Element;

.field private __MESH:Landroid/renderscript/Element;

.field private __PROGRAM_FRAGMENT:Landroid/renderscript/Element;

.field private __PROGRAM_VERTEX:Landroid/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/renderscript/FieldPacker;

.field private __rs_fp_F32:Landroid/renderscript/FieldPacker;

.field private __rs_fp_MESH:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_FRAGMENT:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_VERTEX:Landroid/renderscript/FieldPacker;

.field private mExportVar_g_Constants:Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;

.field private mExportVar_g_PFBackground:Landroid/renderscript/ProgramFragment;

.field private mExportVar_g_PVWater:Landroid/renderscript/ProgramVertex;

.field private mExportVar_g_TRiverbed:Landroid/renderscript/Allocation;

.field private mExportVar_g_WaterMesh:Landroid/renderscript/Mesh;

.field private mExportVar_g_meshHeight:F

.field private mExportVar_g_rotate:F

.field private mExportVar_g_xOffset:F


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 5
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "ripple"

    const-string v3, "raw"

    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "id"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_VERTEX(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->__PROGRAM_VERTEX:Landroid/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_FRAGMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->__PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroid/renderscript/Element;->MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->__MESH:Landroid/renderscript/Element;

    .line 46
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->__ALLOCATION:Landroid/renderscript/Element;

    .line 47
    invoke-static {p1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->__F32:Landroid/renderscript/Element;

    .line 48
    return-void
.end method


# virtual methods
.method public bind_g_Constants(Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;)V
    .locals 2
    .param p1, "v"    # Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;

    .prologue
    const/4 v1, 0x7

    .line 168
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->mExportVar_g_Constants:Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;

    .line 169
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public getFieldID_g_PFBackground()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_g_PVWater()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_g_TRiverbed()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 117
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_g_WaterMesh()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 102
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_g_meshHeight()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 132
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_g_rotate()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_g_xOffset()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public get_g_Constants()Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->mExportVar_g_Constants:Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;

    return-object v0
.end method

.method public get_g_PFBackground()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->mExportVar_g_PFBackground:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_g_PVWater()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->mExportVar_g_PVWater:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_g_TRiverbed()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->mExportVar_g_TRiverbed:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_g_WaterMesh()Landroid/renderscript/Mesh;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->mExportVar_g_WaterMesh:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_g_meshHeight()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->mExportVar_g_meshHeight:F

    return v0
.end method

.method public get_g_rotate()F
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->mExportVar_g_rotate:F

    return v0
.end method

.method public get_g_xOffset()F
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->mExportVar_g_xOffset:F

    return v0
.end method

.method public invoke_addDrop(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 179
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 180
    .local v0, "addDrop_fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 181
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 182
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 183
    return-void
.end method

.method public invoke_clean()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->invoke(I)V

    .line 188
    return-void
.end method

.method public declared-synchronized set_g_PFBackground(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/ProgramFragment;

    .prologue
    .line 78
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 79
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->mExportVar_g_PFBackground:Landroid/renderscript/ProgramFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_g_PVWater(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/ProgramVertex;

    .prologue
    .line 63
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 64
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->mExportVar_g_PVWater:Landroid/renderscript/ProgramVertex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_g_TRiverbed(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Allocation;

    .prologue
    .line 108
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 109
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->mExportVar_g_TRiverbed:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_g_WaterMesh(Landroid/renderscript/Mesh;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Mesh;

    .prologue
    .line 93
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 94
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->mExportVar_g_WaterMesh:Landroid/renderscript/Mesh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_g_meshHeight(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 123
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->setVar(IF)V

    .line 124
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->mExportVar_g_meshHeight:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_g_rotate(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 153
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->setVar(IF)V

    .line 154
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->mExportVar_g_rotate:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_g_xOffset(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 138
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->setVar(IF)V

    .line 139
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->mExportVar_g_xOffset:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
