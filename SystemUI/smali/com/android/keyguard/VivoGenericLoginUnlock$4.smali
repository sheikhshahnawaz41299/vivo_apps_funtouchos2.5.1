.class Lcom/android/keyguard/VivoGenericLoginUnlock$4;
.super Ljava/lang/Object;
.source "VivoGenericLoginUnlock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/VivoGenericLoginUnlock;->loginDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoGenericLoginUnlock;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$4;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$4;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$602(Lcom/android/keyguard/VivoGenericLoginUnlock;Z)Z

    .line 456
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$4;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-static {v0}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$1000(Lcom/android/keyguard/VivoGenericLoginUnlock;)V

    .line 457
    return-void
.end method
