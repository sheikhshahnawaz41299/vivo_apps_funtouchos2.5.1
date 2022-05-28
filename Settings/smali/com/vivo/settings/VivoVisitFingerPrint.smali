.class public Lcom/vivo/settings/VivoVisitFingerPrint;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoVisitFingerPrint.java"


# static fields
.field private static final DLG_MODIFY_OR_DELETE_VISIT_FINGER_PRINT:I = 0x0

.field private static final FINAGER_PRINT_VISIT_ACTION:Ljava/lang/String; = "android.intent.vivo.fingerprint.enrol"

.field private static final FINAGER_PRINT_VISIT_EXTRA:Ljava/lang/String; = "visitor_model"

.field private static final FINAGER_PRINT_VISIT_REQUEST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VivoVisitFingerPrint"


# instance fields
.field mDel_finger:Landroid/preference/Preference;

.field mModify_finger:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/vivo/settings/VivoVisitFingerPrint;->mModify_finger:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/vivo/settings/VivoVisitFingerPrint;->mDel_finger:Landroid/preference/Preference;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 90
    const-string v0, "VivoVisitFingerPrint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/vivo/settings/VivoVisitFingerPrint;->finish()V

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f060066

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoVisitFingerPrint;->addPreferencesFromResource(I)V

    .line 31
    const-string v0, "modify_fingerprint"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoVisitFingerPrint;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoVisitFingerPrint;->mModify_finger:Landroid/preference/Preference;

    .line 32
    const-string v0, "del_fingerprint"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoVisitFingerPrint;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoVisitFingerPrint;->mDel_finger:Landroid/preference/Preference;

    .line 33
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "dialogId"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 86
    :goto_0
    return-object v0

    .line 65
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoVisitFingerPrint;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b082b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b096a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b082a

    new-instance v3, Lcom/vivo/settings/VivoVisitFingerPrint$2;

    invoke-direct {v3, p0}, Lcom/vivo/settings/VivoVisitFingerPrint$2;-><init>(Lcom/vivo/settings/VivoVisitFingerPrint;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b07ca

    new-instance v3, Lcom/vivo/settings/VivoVisitFingerPrint$1;

    invoke-direct {v3, p0}, Lcom/vivo/settings/VivoVisitFingerPrint$1;-><init>(Lcom/vivo/settings/VivoVisitFingerPrint;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 43
    const-string v2, "VivoVisitFingerPrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick preference = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v2, p0, Lcom/vivo/settings/VivoVisitFingerPrint;->mModify_finger:Landroid/preference/Preference;

    if-ne p2, v2, :cond_0

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.vivo.fingerprint.enrol"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v2, "visitor_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/vivo/settings/VivoVisitFingerPrint;->startActivityForResult(Landroid/content/Intent;I)V

    .line 54
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/vivo/settings/VivoVisitFingerPrint;->mDel_finger:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 50
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/vivo/settings/VivoVisitFingerPrint;->showDialog(I)V

    goto :goto_0

    .line 52
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 38
    invoke-virtual {p0}, Lcom/vivo/settings/VivoVisitFingerPrint;->showBBKBackButton()V

    .line 39
    return-void
.end method
