.class Lcom/vivo/motionrecognition/SmartWakeupSettings$5;
.super Ljava/lang/Object;
.source "SmartWakeupSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/motionrecognition/SmartWakeupSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/motionrecognition/SmartWakeupSettings;


# direct methods
.method constructor <init>(Lcom/vivo/motionrecognition/SmartWakeupSettings;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings$5;->this$0:Lcom/vivo/motionrecognition/SmartWakeupSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 269
    return-void
.end method
