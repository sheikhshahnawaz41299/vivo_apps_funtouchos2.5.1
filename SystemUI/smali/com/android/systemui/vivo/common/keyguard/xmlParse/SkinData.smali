.class public Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;
.super Ljava/lang/Object;
.source "SkinData.java"


# instance fields
.field private mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;


# direct methods
.method public constructor <init>(Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;)V
    .locals 0
    .param p1, "skin"    # Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    .line 8
    return-void
.end method


# virtual methods
.method public getSkin()Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    return-object v0
.end method

.method public parseSkinFromXML()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->parseSkinFromXML()V

    .line 21
    return-void
.end method

.method public releaseBitmap()V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->recycle()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    .line 17
    return-void
.end method
