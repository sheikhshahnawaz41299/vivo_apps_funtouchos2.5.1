.class Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab$1;
.super Ljava/lang/Object;
.source "SlideColorTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->invalidate()V

    .line 142
    return-void
.end method
