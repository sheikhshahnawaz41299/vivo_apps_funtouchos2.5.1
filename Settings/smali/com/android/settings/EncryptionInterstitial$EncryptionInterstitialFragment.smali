.class public Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EncryptionInterstitial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EncryptionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptionInterstitialFragment"
.end annotation


# static fields
.field private static final ACCESSIBILITY_WARNING_DIALOG:I = 0x1


# instance fields
.field private mDontRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

.field private mEncryptionMessage:Landroid/widget/TextView;

.field private mPasswordRequired:Z

.field private mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setRequirePasswordState(Z)V
    .locals 5
    .param p1, "required"    # Z

    .prologue
    .line 194
    const-string v2, "EncryptionInterstitial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRequirePasswordState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iput-boolean p1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    .line 196
    iget-object v2, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 197
    iget-object v3, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 201
    .local v1, "sa":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getResultIntentData()Landroid/content/Intent;

    move-result-object v0

    .line 202
    .local v0, "resultIntentData":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 203
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "resultIntentData":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 204
    .restart local v0    # "resultIntentData":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsActivity;->setResultIntentData(Landroid/content/Intent;)V

    .line 206
    :cond_0
    const-string v2, "extra_require_password"

    iget-boolean v3, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    return-void

    .line 197
    .end local v0    # "resultIntentData":Landroid/content/Intent;
    .end local v1    # "sa":Lcom/android/settings/SettingsActivity;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 211
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 212
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    iget-object v1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    if-ne p1, v1, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 133
    .local v0, "accEn":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    if-nez v1, :cond_0

    .line 134
    invoke-direct {p0, v2}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 135
    invoke-virtual {p0, v3}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->showDialog(I)V

    .line 142
    .end local v0    # "accEn":Z
    :goto_0
    return-void

    .line 137
    .restart local v0    # "accEn":Z
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    goto :goto_0

    .line 140
    .end local v0    # "accEn":Z
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1, "dialogId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 146
    packed-switch p1, :pswitch_data_0

    .line 189
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 148
    :pswitch_0
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    .line 152
    .local v3, "quality":I
    sparse-switch v3, :sswitch_data_0

    .line 163
    const v4, 0x7f0b0746

    .line 164
    .local v4, "titleId":I
    const v2, 0x7f0b0749

    .line 169
    .local v2, "messageId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 174
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 176
    const-string v0, ""

    .line 181
    .local v0, "exampleAccessibility":Ljava/lang/CharSequence;
    :goto_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {p0, v2, v6}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 154
    .end local v0    # "exampleAccessibility":Ljava/lang/CharSequence;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v2    # "messageId":I
    .end local v4    # "titleId":I
    :sswitch_0
    const v4, 0x7f0b0745

    .line 155
    .restart local v4    # "titleId":I
    const v2, 0x7f0b0748

    .line 156
    .restart local v2    # "messageId":I
    goto :goto_0

    .line 159
    .end local v2    # "messageId":I
    .end local v4    # "titleId":I
    :sswitch_1
    const v4, 0x7f0b0744

    .line 160
    .restart local v4    # "titleId":I
    const v2, 0x7f0b0747

    .line 161
    .restart local v2    # "messageId":I
    goto :goto_0

    .line 178
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_0
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "exampleAccessibility":Ljava/lang/CharSequence;
    goto :goto_1

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 152
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 85
    const v2, 0x7f04005c

    .line 86
    .local v2, "layoutId":I
    const v6, 0x7f04005c

    invoke-virtual {p1, v6, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 87
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f0e010e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    .line 89
    const v6, 0x7f0e010f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    .line 91
    const v6, 0x7f0e010d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mEncryptionMessage:Landroid/widget/TextView;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "extra_password_quality"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 94
    .local v4, "quality":I
    const-string v6, "EncryptionInterstitial"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "quality : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sparse-switch v4, :sswitch_data_0

    .line 111
    const v3, 0x7f0b073d

    .line 112
    .local v3, "msgId":I
    const v1, 0x7f0b0740

    .line 113
    .local v1, "enableId":I
    const v0, 0x7f0b0743

    .line 116
    .local v0, "disableId":I
    :goto_0
    iget-object v6, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mEncryptionMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v6, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    invoke-virtual {v6, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v6, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 121
    iget-object v6, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    invoke-virtual {v6, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v6, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    invoke-virtual {v6, v0}, Landroid/widget/RadioButton;->setText(I)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "extra_require_password"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 126
    return-object v5

    .line 100
    .end local v0    # "disableId":I
    .end local v1    # "enableId":I
    .end local v3    # "msgId":I
    :sswitch_0
    const v3, 0x7f0b073c

    .line 101
    .restart local v3    # "msgId":I
    const v1, 0x7f0b073f

    .line 102
    .restart local v1    # "enableId":I
    const v0, 0x7f0b0742

    .line 103
    .restart local v0    # "disableId":I
    goto :goto_0

    .line 106
    .end local v0    # "disableId":I
    .end local v1    # "enableId":I
    .end local v3    # "msgId":I
    :sswitch_1
    const v3, 0x7f0b073b

    .line 107
    .restart local v3    # "msgId":I
    const v1, 0x7f0b073e

    .line 108
    .restart local v1    # "enableId":I
    const v0, 0x7f0b0741

    .line 109
    .restart local v0    # "disableId":I
    goto :goto_0

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method
