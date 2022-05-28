.class Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;
.super Ljava/lang/Object;
.source "RippleRS.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RippleRS"


# instance fields
.field private backgroundBitmap:Landroid/graphics/Bitmap;

.field private buf1:[I

.field private hResolution:I

.field protected mHeight:I

.field private mMesh:Landroid/renderscript/Mesh;

.field protected mPreview:Z

.field protected mRS:Landroid/renderscript/RenderScriptGL;

.field protected mResources:Landroid/content/res/Resources;

.field private mScript:Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;

.field protected mScriptC:Landroid/renderscript/ScriptC;

.field protected mWidth:I

.field private wResolution:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mWidth:I

    .line 37
    iput p2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mHeight:I

    .line 38
    return-void
.end method

.method private createMesh()V
    .locals 15

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    const/high16 v13, 0x3f800000    # 1.0f

    .line 78
    new-instance v4, Landroid/renderscript/Mesh$TriangleMeshBuilder;

    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v12, 0x2

    invoke-direct {v4, v11, v12, v10}, Landroid/renderscript/Mesh$TriangleMeshBuilder;-><init>(Landroid/renderscript/RenderScript;II)V

    .line 79
    .local v4, "tmb":Landroid/renderscript/Mesh$TriangleMeshBuilder;
    iget v11, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mWidth:I

    iget v12, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mHeight:I

    if-le v11, v12, :cond_0

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mHeight:I

    .line 80
    .local v5, "width":I
    :goto_0
    iget v11, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mWidth:I

    iget v12, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mHeight:I

    if-le v11, v12, :cond_1

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mWidth:I

    .line 81
    .local v0, "height":I
    :goto_1
    const/16 v11, 0x30

    iput v11, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->wResolution:I

    .line 82
    iget v11, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->wResolution:I

    mul-int/2addr v11, v0

    int-to-float v11, v11

    int-to-float v12, v5

    div-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->hResolution:I

    .line 84
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_2
    iget v11, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->hResolution:I

    if-gt v7, v11, :cond_3

    .line 85
    int-to-float v11, v7

    iget v12, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->hResolution:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    mul-float/2addr v11, v14

    sub-float v8, v11, v13

    .line 86
    .local v8, "yOffset":F
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_3
    iget v11, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->wResolution:I

    if-gt v6, v11, :cond_2

    .line 87
    int-to-float v11, v6

    iget v12, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->wResolution:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    mul-float/2addr v11, v14

    sub-float/2addr v11, v13

    invoke-virtual {v4, v11, v8}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->addVertex(FF)Landroid/renderscript/Mesh$TriangleMeshBuilder;

    .line 86
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 79
    .end local v0    # "height":I
    .end local v5    # "width":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    .end local v8    # "yOffset":F
    :cond_0
    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mWidth:I

    goto :goto_0

    .line 80
    .restart local v5    # "width":I
    :cond_1
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mHeight:I

    goto :goto_1

    .line 84
    .restart local v0    # "height":I
    .restart local v6    # "x":I
    .restart local v7    # "y":I
    .restart local v8    # "yOffset":F
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 91
    .end local v6    # "x":I
    .end local v8    # "yOffset":F
    :cond_3
    const/4 v7, 0x0

    :goto_4
    iget v11, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->hResolution:I

    if-ge v7, v11, :cond_7

    .line 92
    and-int/lit8 v11, v7, 0x1

    if-nez v11, :cond_4

    move v3, v9

    .line 93
    .local v3, "shift":Z
    :goto_5
    iget v11, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->wResolution:I

    add-int/lit8 v11, v11, 0x1

    mul-int v8, v7, v11

    .line 94
    .local v8, "yOffset":I
    const/4 v6, 0x0

    .restart local v6    # "x":I
    :goto_6
    iget v11, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->wResolution:I

    if-ge v6, v11, :cond_6

    .line 95
    add-int v2, v8, v6

    .line 96
    .local v2, "index":I
    iget v11, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->wResolution:I

    add-int/2addr v11, v2

    add-int/lit8 v1, v11, 0x1

    .line 97
    .local v1, "iWR1":I
    if-eqz v3, :cond_5

    .line 98
    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v4, v2, v11, v1}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->addTriangle(III)Landroid/renderscript/Mesh$TriangleMeshBuilder;

    .line 99
    add-int/lit8 v11, v2, 0x1

    add-int/lit8 v12, v1, 0x1

    invoke-virtual {v4, v11, v12, v1}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->addTriangle(III)Landroid/renderscript/Mesh$TriangleMeshBuilder;

    .line 94
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .end local v1    # "iWR1":I
    .end local v2    # "index":I
    .end local v3    # "shift":Z
    .end local v6    # "x":I
    .end local v8    # "yOffset":I
    :cond_4
    move v3, v10

    .line 92
    goto :goto_5

    .line 101
    .restart local v1    # "iWR1":I
    .restart local v2    # "index":I
    .restart local v3    # "shift":Z
    .restart local v6    # "x":I
    .restart local v8    # "yOffset":I
    :cond_5
    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v4, v2, v11, v1}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->addTriangle(III)Landroid/renderscript/Mesh$TriangleMeshBuilder;

    .line 102
    add-int/lit8 v11, v2, 0x1

    add-int/lit8 v12, v1, 0x1

    invoke-virtual {v4, v2, v11, v12}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->addTriangle(III)Landroid/renderscript/Mesh$TriangleMeshBuilder;

    goto :goto_7

    .line 91
    .end local v1    # "iWR1":I
    .end local v2    # "index":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 106
    .end local v3    # "shift":Z
    .end local v6    # "x":I
    .end local v8    # "yOffset":I
    :cond_7
    invoke-virtual {v4, v9}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->create(Z)Landroid/renderscript/Mesh;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mMesh:Landroid/renderscript/Mesh;

    .line 107
    iget-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mScript:Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;

    iget-object v10, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v9, v10}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->set_g_WaterMesh(Landroid/renderscript/Mesh;)V

    .line 108
    return-void
.end method

.method private createProgramFragment()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 128
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v3}, Landroid/renderscript/Sampler;->CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v2

    .line 129
    .local v2, "mSampler":Landroid/renderscript/Sampler;
    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v3}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 130
    .local v0, "builder":Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    sget-object v3, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v4, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v0, v3, v4, v5}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 132
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v1

    .line 133
    .local v1, "mPfBackground":Landroid/renderscript/ProgramFragment;
    invoke-virtual {v1, v2, v5}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 134
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mScript:Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;

    invoke-virtual {v3, v1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->set_g_PFBackground(Landroid/renderscript/ProgramFragment;)V

    .line 135
    return-void
.end method

.method private createProgramVertex()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 138
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;-><init>(Landroid/renderscript/RenderScript;I)V

    .line 139
    .local v0, "mConstants":Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;
    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v2

    .line 140
    .local v2, "mUniformAlloc":Landroid/renderscript/Allocation;
    new-instance v3, Landroid/renderscript/ProgramVertex$Builder;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v3, v4}, Landroid/renderscript/ProgramVertex$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 141
    .local v3, "sb":Landroid/renderscript/ProgramVertex$Builder;
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f080002

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ProgramVertex$Builder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 142
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/renderscript/ProgramVertex$Builder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 143
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v4, v6}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/renderscript/ProgramVertex$Builder;->addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;

    .line 144
    invoke-virtual {v3}, Landroid/renderscript/ProgramVertex$Builder;->create()Landroid/renderscript/ProgramVertex;

    move-result-object v1

    .line 145
    .local v1, "mPvWater":Landroid/renderscript/ProgramVertex;
    invoke-virtual {v1, v2, v6}, Landroid/renderscript/ProgramVertex;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 146
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mScript:Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;

    invoke-virtual {v4, v1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->set_g_PVWater(Landroid/renderscript/ProgramVertex;)V

    .line 147
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mScript:Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;

    invoke-virtual {v4, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->bind_g_Constants(Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;)V

    .line 148
    return-void
.end method

.method private createState()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 111
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mScript:Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->hResolution:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->set_g_meshHeight(F)V

    .line 112
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mScript:Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;

    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->set_g_xOffset(F)V

    .line 113
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mScript:Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mWidth:I

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mHeight:I

    if-le v2, v3, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->set_g_rotate(F)V

    .line 114
    return-void
.end method

.method private loadTextures()V
    .locals 3

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 120
    const-string v1, "RippleRS"

    const-string v2, "loadTextures backgroundBitmap==null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 124
    .local v0, "allocation":Landroid/renderscript/Allocation;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mScript:Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;

    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->set_g_TRiverbed(Landroid/renderscript/Allocation;)V

    goto :goto_0
.end method


# virtual methods
.method addDrop(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 151
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mWidth:I

    int-to-float v2, v2

    div-float v2, p1, v2

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->wResolution:I

    int-to-float v3, v3

    mul-float v0, v2, v3

    .line 152
    .local v0, "dropX":F
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mHeight:I

    int-to-float v2, v2

    div-float v2, p2, v2

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->hResolution:I

    int-to-float v3, v3

    mul-float v1, v2, v3

    .line 153
    .local v1, "dropY":F
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mScript:Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->invoke_addDrop(FF)V

    .line 154
    return-void
.end method

.method clean()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mScript:Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->invoke_clean()V

    .line 158
    return-void
.end method

.method protected createScript()Landroid/renderscript/ScriptC;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f080001

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mScript:Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->loadTextures()V

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->createMesh()V

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->createState()V

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->createProgramVertex()V

    .line 70
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->createProgramFragment()V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mScript:Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->setTimeZone(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mScript:Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;

    return-object v0
.end method

.method public init(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;ZLandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "rs"    # Landroid/renderscript/RenderScriptGL;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "isPreview"    # Z
    .param p4, "id"    # Landroid/graphics/Bitmap;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 42
    iput-object p2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mResources:Landroid/content/res/Resources;

    .line 43
    iput-boolean p3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mPreview:Z

    .line 44
    iput-object p4, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mScriptC:Landroid/renderscript/ScriptC;

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->createScript()Landroid/renderscript/ScriptC;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mScriptC:Landroid/renderscript/ScriptC;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mScriptC:Landroid/renderscript/ScriptC;

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 49
    const-string v0, "TAG"

    const-string v1, "bindRootScript"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public resize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mWidth:I

    .line 59
    iput p2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mHeight:I

    .line 60
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->mScript:Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;

    if-le p1, p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptC_ripple;->set_g_rotate(F)V

    .line 61
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 53
    const-string v0, "RippleRS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImageBitmap image = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 55
    return-void
.end method
