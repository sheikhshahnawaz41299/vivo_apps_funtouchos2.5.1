.class public Lcom/tpad/ux/funlocker/RenderView$UXEngine;
.super Ljava/lang/Object;
.source "RenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tpad/ux/funlocker/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UXEngine"
.end annotation


# static fields
.field static final RATE:I = 0x28


# instance fields
.field private boostRenderFlag:Z

.field private dirtyRet:Ljava/lang/String;

.field private isInvalidate:Z

.field private leftSide:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private rate:I

.field private renderRet:I

.field private startRet:I

.field private topSide:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/16 v0, 0x28

    iput v0, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->rate:I

    .line 163
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "rate"    # I

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput p1, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->rate:I

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->mBitmap:Landroid/graphics/Bitmap;

    .line 171
    const/16 v0, 0x28

    iput v0, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->rate:I

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;III)V
    .locals 0
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "leftSide"    # I
    .param p3, "topSide"    # I
    .param p4, "rate"    # I

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput p4, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->rate:I

    .line 183
    iput p2, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->leftSide:I

    .line 184
    iput p3, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->topSide:I

    .line 185
    iput-object p1, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->mBitmap:Landroid/graphics/Bitmap;

    .line 186
    return-void
.end method

.method static synthetic access$0(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->isInvalidate:Z

    return v0
.end method

.method static synthetic access$1(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->rate:I

    return v0
.end method

.method static synthetic access$10(Lcom/tpad/ux/funlocker/RenderView$UXEngine;I)V
    .locals 0

    .prologue
    .line 151
    iput p1, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->renderRet:I

    return-void
.end method

.method static synthetic access$11(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->boostRenderFlag:Z

    return v0
.end method

.method static synthetic access$12(Lcom/tpad/ux/funlocker/RenderView$UXEngine;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->dirtyRet:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->dirtyRet:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/tpad/ux/funlocker/RenderView$UXEngine;I)V
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->version:I

    return-void
.end method

.method static synthetic access$15(Lcom/tpad/ux/funlocker/RenderView$UXEngine;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$16(Lcom/tpad/ux/funlocker/RenderView$UXEngine;I)V
    .locals 0

    .prologue
    .line 154
    iput p1, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->leftSide:I

    return-void
.end method

.method static synthetic access$17(Lcom/tpad/ux/funlocker/RenderView$UXEngine;I)V
    .locals 0

    .prologue
    .line 153
    iput p1, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->topSide:I

    return-void
.end method

.method static synthetic access$2(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->version:I

    return v0
.end method

.method static synthetic access$4(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->startRet:I

    return v0
.end method

.method static synthetic access$5(Lcom/tpad/ux/funlocker/RenderView$UXEngine;Z)V
    .locals 0

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->boostRenderFlag:Z

    return-void
.end method

.method static synthetic access$6(Lcom/tpad/ux/funlocker/RenderView$UXEngine;Z)V
    .locals 0

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->isInvalidate:Z

    return-void
.end method

.method static synthetic access$7(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->leftSide:I

    return v0
.end method

.method static synthetic access$8(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->topSide:I

    return v0
.end method

.method static synthetic access$9(Lcom/tpad/ux/funlocker/RenderView$UXEngine;I)V
    .locals 0

    .prologue
    .line 150
    iput p1, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->startRet:I

    return-void
.end method


# virtual methods
.method public getDirtyRet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->dirtyRet:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftSide()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->leftSide:I

    return v0
.end method

.method public getRate()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->rate:I

    return v0
.end method

.method public getRenderRet()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->renderRet:I

    return v0
.end method

.method public getStartRet()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->startRet:I

    return v0
.end method

.method public getTopSide()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->topSide:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->version:I

    return v0
.end method

.method public getmBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isBoostRender()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->boostRenderFlag:Z

    return v0
.end method

.method public isInvalidate()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->isInvalidate:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 231
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 232
    const-string v1, "leftSide : %d , topSide : %d , version : %d , startRet : %d , renderRet : %d , isInvalidate : %s , rate : %d"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 233
    iget v4, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->leftSide:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->topSide:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->version:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->startRet:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->renderRet:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 234
    iget-boolean v4, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->isInvalidate:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->rate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 231
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    return-object v0
.end method
