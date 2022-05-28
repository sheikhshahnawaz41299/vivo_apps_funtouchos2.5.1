.class public Lcom/vivo/settings/BBKPreferenceActivityforBtn;
.super Lcom/vivo/app/VivoPreferenceActivity;
.source "BBKPreferenceActivityforBtn.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BBKPreferenceActivityforBtn"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/vivo/app/VivoPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/vivo/app/VivoPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f040015

    invoke-virtual {p0, v0}, Lcom/vivo/settings/BBKPreferenceActivityforBtn;->setContentView(I)V

    .line 21
    invoke-static {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->updateList(Landroid/app/ListActivity;)V

    .line 22
    return-void
.end method
