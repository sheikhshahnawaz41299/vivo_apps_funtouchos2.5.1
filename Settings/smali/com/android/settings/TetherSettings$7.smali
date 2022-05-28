.class Lcom/android/settings/TetherSettings$7;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    .prologue
    .line 765
    iput-object p1, p0, Lcom/android/settings/TetherSettings$7;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/settings/TetherSettings$7;->this$0:Lcom/android/settings/TetherSettings;

    iget-object v1, p0, Lcom/android/settings/TetherSettings$7;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->access$2500(Lcom/android/settings/TetherSettings;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->access$2600(Lcom/android/settings/TetherSettings;I)V

    .line 769
    iget-object v0, p0, Lcom/android/settings/TetherSettings$7;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->access$2700(Lcom/android/settings/TetherSettings;I)V

    .line 770
    return-void
.end method
