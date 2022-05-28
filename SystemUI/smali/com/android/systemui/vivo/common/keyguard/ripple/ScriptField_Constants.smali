.class public Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    }
.end annotation


# static fields
.field private static mElementCache:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/renderscript/Element;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field private mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElementCache:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 102
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 103
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 104
    invoke-static {p1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 108
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 109
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 110
    invoke-static {p1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->init(Landroid/renderscript/RenderScript;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "count"    # I
    .param p3, "usages"    # I

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 115
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 116
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 117
    invoke-static {p1}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->init(Landroid/renderscript/RenderScript;II)V

    .line 119
    return-void
.end method

.method private copyToArray(Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;I)V
    .locals 3
    .param p1, "i"    # Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    .param p2, "index"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/FieldPacker;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->copyToArrayLocal(Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;Landroid/renderscript/FieldPacker;)V

    .line 185
    return-void
.end method

.method private copyToArrayLocal(Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;Landroid/renderscript/FieldPacker;)V
    .locals 1
    .param p1, "i"    # Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    .param p2, "fp"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 161
    iget-object v0, p1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop01:Landroid/renderscript/Float4;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 162
    iget-object v0, p1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop02:Landroid/renderscript/Float4;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 163
    iget-object v0, p1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop03:Landroid/renderscript/Float4;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 164
    iget-object v0, p1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop04:Landroid/renderscript/Float4;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 165
    iget-object v0, p1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop05:Landroid/renderscript/Float4;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 166
    iget-object v0, p1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop06:Landroid/renderscript/Float4;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 167
    iget-object v0, p1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop07:Landroid/renderscript/Float4;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 168
    iget-object v0, p1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop08:Landroid/renderscript/Float4;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 169
    iget-object v0, p1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop09:Landroid/renderscript/Float4;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 170
    iget-object v0, p1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop10:Landroid/renderscript/Float4;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 171
    iget-object v0, p1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop11:Landroid/renderscript/Float4;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 172
    iget-object v0, p1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop12:Landroid/renderscript/Float4;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 173
    iget-object v0, p1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop13:Landroid/renderscript/Float4;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 174
    iget-object v0, p1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop14:Landroid/renderscript/Float4;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 175
    iget-object v0, p1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop15:Landroid/renderscript/Float4;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 176
    iget-object v0, p1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Offset:Landroid/renderscript/Float4;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 177
    iget v0, p1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Rotate:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 178
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 179
    return-void
.end method

.method public static create1D(Landroid/renderscript/RenderScript;I)Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "dimX"    # I

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->create1D(Landroid/renderscript/RenderScript;II)Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;

    move-result-object v0

    return-object v0
.end method

.method public static create1D(Landroid/renderscript/RenderScript;II)Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "dimX"    # I
    .param p2, "usages"    # I

    .prologue
    .line 122
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;-><init>(Landroid/renderscript/RenderScript;)V

    .line 123
    .local v0, "obj":Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;
    iget-object v1, v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-static {p0, v1, p1, p2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    .line 124
    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;II)Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "dimX"    # I
    .param p2, "dimY"    # I

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->create2D(Landroid/renderscript/RenderScript;III)Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;

    move-result-object v0

    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;III)Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "dimX"    # I
    .param p2, "dimY"    # I
    .param p3, "usages"    # I

    .prologue
    .line 136
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;-><init>(Landroid/renderscript/RenderScript;)V

    .line 137
    .local v1, "obj":Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v3, v1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-direct {v0, p0, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 138
    .local v0, "b":Landroid/renderscript/Type$Builder;
    invoke-virtual {v0, p1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 139
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 140
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    .line 141
    .local v2, "t":Landroid/renderscript/Type;
    invoke-static {p0, v2, p3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    .line 142
    return-object v1
.end method

.method public static createCustom(Landroid/renderscript/RenderScript;Landroid/renderscript/Type$Builder;I)Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "tb"    # Landroid/renderscript/Type$Builder;
    .param p2, "usages"    # I

    .prologue
    .line 151
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;-><init>(Landroid/renderscript/RenderScript;)V

    .line 152
    .local v0, "obj":Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;
    invoke-virtual {p1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    .line 153
    .local v1, "t":Landroid/renderscript/Type;
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    if-eq v2, v3, :cond_0

    .line 154
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Type.Builder did not match expected element type."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_0
    invoke-static {p0, v1, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    .line 157
    return-object v0
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 77
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 78
    .local v0, "eb":Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "Drop01"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 79
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "Drop02"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 80
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "Drop03"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 81
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "Drop04"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 82
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "Drop05"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 83
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "Drop06"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 84
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "Drop07"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 85
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "Drop08"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 86
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "Drop09"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 87
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "Drop10"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 88
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "Drop11"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 89
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "Drop12"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 90
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "Drop13"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 91
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "Drop14"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 92
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "Drop15"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 93
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "Offset"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 94
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "Rotate"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 95
    invoke-static {p0}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "#rs_padding_1"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 96
    invoke-static {p0}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "#rs_padding_2"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 97
    invoke-static {p0}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "#rs_padding_3"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 98
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method

.method public static createTypeBuilder(Landroid/renderscript/RenderScript;)Landroid/renderscript/Type$Builder;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 146
    invoke-static {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 147
    .local v0, "e":Landroid/renderscript/Element;
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    return-object v1
.end method


# virtual methods
.method public declared-synchronized copyAll()V
    .locals 4

    .prologue
    .line 545
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->copyToArray(Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    monitor-exit p0

    return-void

    .line 545
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(I)Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 201
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_Drop01(I)Landroid/renderscript/Float4;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 460
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 461
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop01:Landroid/renderscript/Float4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_Drop02(I)Landroid/renderscript/Float4;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 465
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 466
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop02:Landroid/renderscript/Float4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_Drop03(I)Landroid/renderscript/Float4;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 471
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop03:Landroid/renderscript/Float4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_Drop04(I)Landroid/renderscript/Float4;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 476
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop04:Landroid/renderscript/Float4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_Drop05(I)Landroid/renderscript/Float4;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 481
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop05:Landroid/renderscript/Float4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_Drop06(I)Landroid/renderscript/Float4;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 485
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 486
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop06:Landroid/renderscript/Float4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_Drop07(I)Landroid/renderscript/Float4;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 490
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 491
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop07:Landroid/renderscript/Float4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_Drop08(I)Landroid/renderscript/Float4;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 495
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 496
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop08:Landroid/renderscript/Float4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_Drop09(I)Landroid/renderscript/Float4;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 500
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 501
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop09:Landroid/renderscript/Float4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_Drop10(I)Landroid/renderscript/Float4;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 505
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 506
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop10:Landroid/renderscript/Float4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_Drop11(I)Landroid/renderscript/Float4;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 510
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 511
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop11:Landroid/renderscript/Float4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_Drop12(I)Landroid/renderscript/Float4;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 515
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 516
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop12:Landroid/renderscript/Float4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_Drop13(I)Landroid/renderscript/Float4;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 520
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 521
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop13:Landroid/renderscript/Float4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_Drop14(I)Landroid/renderscript/Float4;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 525
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 526
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop14:Landroid/renderscript/Float4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_Drop15(I)Landroid/renderscript/Float4;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 531
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop15:Landroid/renderscript/Float4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_Offset(I)Landroid/renderscript/Float4;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 536
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Offset:Landroid/renderscript/Float4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_Rotate(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 540
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 541
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Rotate:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resize(I)V
    .locals 6
    .param p1, "newSize"    # I

    .prologue
    .line 550
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    if-eqz v3, :cond_2

    .line 551
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    array-length v2, v3

    .line 552
    .local v2, "oldSize":I
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 553
    .local v0, "copySize":I
    if-ne p1, v2, :cond_1

    .line 561
    .end local v0    # "copySize":I
    .end local v2    # "oldSize":I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 554
    .restart local v0    # "copySize":I
    .restart local v2    # "oldSize":I
    :cond_1
    :try_start_1
    new-array v1, p1, [Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 555
    .local v1, "ni":[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 556
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 559
    .end local v0    # "copySize":I
    .end local v1    # "ni":[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    .end local v2    # "oldSize":I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, p1}, Landroid/renderscript/Allocation;->resize(I)V

    .line 560
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/renderscript/FieldPacker;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v4}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 550
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set(Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;IZ)V
    .locals 2
    .param p1, "i"    # Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;
    .param p2, "index"    # I
    .param p3, "copyNow"    # Z

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aput-object p1, v1, p2

    .line 190
    if-eqz p3, :cond_1

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->copyToArray(Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;I)V

    .line 192
    new-instance v0, Landroid/renderscript/FieldPacker;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 193
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->copyToArrayLocal(Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;Landroid/renderscript/FieldPacker;)V

    .line 194
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .end local v0    # "fp":Landroid/renderscript/FieldPacker;
    :cond_1
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_Drop01(ILandroid/renderscript/Float4;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/Float4;
    .param p3, "copyNow"    # Z

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    invoke-direct {v2}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;-><init>()V

    aput-object v2, v1, p1

    .line 208
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop01:Landroid/renderscript/Float4;

    .line 209
    if-eqz p3, :cond_3

    .line 210
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 211
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 212
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 213
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 214
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .end local v0    # "fp":Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_Drop02(ILandroid/renderscript/Float4;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/Float4;
    .param p3, "copyNow"    # Z

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    invoke-direct {v2}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;-><init>()V

    aput-object v2, v1, p1

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop02:Landroid/renderscript/Float4;

    .line 224
    if-eqz p3, :cond_3

    .line 225
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 226
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 227
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 228
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 229
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    .end local v0    # "fp":Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_Drop03(ILandroid/renderscript/Float4;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/Float4;
    .param p3, "copyNow"    # Z

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    invoke-direct {v2}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;-><init>()V

    aput-object v2, v1, p1

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop03:Landroid/renderscript/Float4;

    .line 239
    if-eqz p3, :cond_3

    .line 240
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x20

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 241
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 242
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 243
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 244
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .end local v0    # "fp":Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_Drop04(ILandroid/renderscript/Float4;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/Float4;
    .param p3, "copyNow"    # Z

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    invoke-direct {v2}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;-><init>()V

    aput-object v2, v1, p1

    .line 253
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop04:Landroid/renderscript/Float4;

    .line 254
    if-eqz p3, :cond_3

    .line 255
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 256
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 257
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 258
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 259
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .end local v0    # "fp":Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_Drop05(ILandroid/renderscript/Float4;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/Float4;
    .param p3, "copyNow"    # Z

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    invoke-direct {v2}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;-><init>()V

    aput-object v2, v1, p1

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop05:Landroid/renderscript/Float4;

    .line 269
    if-eqz p3, :cond_3

    .line 270
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x40

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 271
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 272
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 273
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 274
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    .end local v0    # "fp":Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 265
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_Drop06(ILandroid/renderscript/Float4;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/Float4;
    .param p3, "copyNow"    # Z

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    invoke-direct {v2}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;-><init>()V

    aput-object v2, v1, p1

    .line 283
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop06:Landroid/renderscript/Float4;

    .line 284
    if-eqz p3, :cond_3

    .line 285
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x50

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 286
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 287
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 288
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 289
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    .end local v0    # "fp":Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 280
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_Drop07(ILandroid/renderscript/Float4;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/Float4;
    .param p3, "copyNow"    # Z

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    invoke-direct {v2}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;-><init>()V

    aput-object v2, v1, p1

    .line 298
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop07:Landroid/renderscript/Float4;

    .line 299
    if-eqz p3, :cond_3

    .line 300
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x60

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 301
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 302
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 303
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 304
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x6

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    .end local v0    # "fp":Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 295
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_Drop08(ILandroid/renderscript/Float4;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/Float4;
    .param p3, "copyNow"    # Z

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 312
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    invoke-direct {v2}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;-><init>()V

    aput-object v2, v1, p1

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop08:Landroid/renderscript/Float4;

    .line 314
    if-eqz p3, :cond_3

    .line 315
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x70

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 316
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 317
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 318
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 319
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x7

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    .end local v0    # "fp":Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_Drop09(ILandroid/renderscript/Float4;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/Float4;
    .param p3, "copyNow"    # Z

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    invoke-direct {v2}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;-><init>()V

    aput-object v2, v1, p1

    .line 328
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop09:Landroid/renderscript/Float4;

    .line 329
    if-eqz p3, :cond_3

    .line 330
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 331
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 332
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 333
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 334
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0x8

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    .end local v0    # "fp":Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 325
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_Drop10(ILandroid/renderscript/Float4;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/Float4;
    .param p3, "copyNow"    # Z

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    invoke-direct {v2}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;-><init>()V

    aput-object v2, v1, p1

    .line 343
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop10:Landroid/renderscript/Float4;

    .line 344
    if-eqz p3, :cond_3

    .line 345
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x90

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 346
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 347
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 348
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 349
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0x9

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    .end local v0    # "fp":Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_Drop11(ILandroid/renderscript/Float4;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/Float4;
    .param p3, "copyNow"    # Z

    .prologue
    .line 355
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 357
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    invoke-direct {v2}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;-><init>()V

    aput-object v2, v1, p1

    .line 358
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop11:Landroid/renderscript/Float4;

    .line 359
    if-eqz p3, :cond_3

    .line 360
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit16 v2, v2, 0xa0

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 361
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 362
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 363
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 364
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xa

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    .end local v0    # "fp":Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 355
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_Drop12(ILandroid/renderscript/Float4;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/Float4;
    .param p3, "copyNow"    # Z

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 372
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    invoke-direct {v2}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;-><init>()V

    aput-object v2, v1, p1

    .line 373
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop12:Landroid/renderscript/Float4;

    .line 374
    if-eqz p3, :cond_3

    .line 375
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit16 v2, v2, 0xb0

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 376
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 377
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 378
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 379
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xb

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    .end local v0    # "fp":Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 370
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_Drop13(ILandroid/renderscript/Float4;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/Float4;
    .param p3, "copyNow"    # Z

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    invoke-direct {v2}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;-><init>()V

    aput-object v2, v1, p1

    .line 388
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop13:Landroid/renderscript/Float4;

    .line 389
    if-eqz p3, :cond_3

    .line 390
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit16 v2, v2, 0xc0

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 391
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 392
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 393
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 394
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xc

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    .end local v0    # "fp":Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 385
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_Drop14(ILandroid/renderscript/Float4;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/Float4;
    .param p3, "copyNow"    # Z

    .prologue
    .line 400
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    invoke-direct {v2}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;-><init>()V

    aput-object v2, v1, p1

    .line 403
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop14:Landroid/renderscript/Float4;

    .line 404
    if-eqz p3, :cond_3

    .line 405
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit16 v2, v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 406
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 407
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 408
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 409
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xd

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    .end local v0    # "fp":Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 400
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_Drop15(ILandroid/renderscript/Float4;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/Float4;
    .param p3, "copyNow"    # Z

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    invoke-direct {v2}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;-><init>()V

    aput-object v2, v1, p1

    .line 418
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Drop15:Landroid/renderscript/Float4;

    .line 419
    if-eqz p3, :cond_3

    .line 420
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit16 v2, v2, 0xe0

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 421
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 422
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 423
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 424
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xe

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    .end local v0    # "fp":Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 415
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_Offset(ILandroid/renderscript/Float4;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/Float4;
    .param p3, "copyNow"    # Z

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 432
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    invoke-direct {v2}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;-><init>()V

    aput-object v2, v1, p1

    .line 433
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Offset:Landroid/renderscript/Float4;

    .line 434
    if-eqz p3, :cond_3

    .line 435
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit16 v2, v2, 0xf0

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 436
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 437
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 438
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 439
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xf

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    .end local v0    # "fp":Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 430
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_Rotate(IFZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # F
    .param p3, "copyNow"    # Z

    .prologue
    .line 445
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    invoke-direct {v2}, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;-><init>()V

    aput-object v2, v1, p1

    .line 448
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mItemArray:[Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants$Item;->Rotate:F

    .line 449
    if-eqz p3, :cond_3

    .line 450
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x100

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 451
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 452
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 453
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 454
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/ScriptField_Constants;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    .end local v0    # "fp":Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 445
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
