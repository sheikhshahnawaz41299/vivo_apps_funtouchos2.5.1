.class Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;
.super Ljava/lang/Object;
.source "LockSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Node"
.end annotation


# instance fields
.field public mDoubleValue:D

.field public mIntValue:I

.field public mStrValue:Ljava/lang/String;

.field public mType:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;->this$0:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
