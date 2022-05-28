.class Lcom/android/settings/tts/VivoTextToSpeechSettings$2;
.super Ljava/lang/Object;
.source "VivoTextToSpeechSettings.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/VivoTextToSpeechSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/VivoTextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/VivoTextToSpeechSettings;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings$2;->this$0:Lcom/android/settings/tts/VivoTextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings$2;->this$0:Lcom/android/settings/tts/VivoTextToSpeechSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->onUpdateEngine(I)V

    .line 158
    return-void
.end method
