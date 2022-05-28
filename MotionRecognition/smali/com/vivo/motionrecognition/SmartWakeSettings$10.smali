.class Lcom/vivo/motionrecognition/SmartWakeSettings$10;
.super Ljava/lang/Object;
.source "SmartWakeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/motionrecognition/SmartWakeSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/motionrecognition/SmartWakeSettings;


# direct methods
.method constructor <init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings$10;->this$0:Lcom/vivo/motionrecognition/SmartWakeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 395
    return-void
.end method
