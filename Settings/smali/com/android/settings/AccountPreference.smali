.class public Lcom/android/settings/AccountPreference;
.super Landroid/preference/Preference;
.source "AccountPreference.java"


# static fields
.field public static final SYNC_DISABLED:I = 0x1

.field public static final SYNC_ENABLED:I = 0x0

.field public static final SYNC_ERROR:I = 0x2

.field public static final SYNC_IN_PROGRESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AccountPreference"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAuthorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderIconView:Landroid/widget/ImageView;

.field private mShowTypeIcon:Z

.field private mStatus:I

.field private mSyncStatusIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "showTypeIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p4, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object p2, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    .line 60
    iput-object p4, p0, Lcom/android/settings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    .line 61
    iput-object p3, p0, Lcom/android/settings/AccountPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 62
    iput-boolean p5, p0, Lcom/android/settings/AccountPreference;->mShowTypeIcon:Z

    .line 63
    if-eqz p5, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0, v1}, Lcom/android/settings/AccountPreference;->setPersistent(Z)V

    .line 71
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccountPreference;->mAccountManager:Landroid/accounts/AccountManager;

    .line 73
    return-void

    .line 66
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/AccountPreference;->getSyncStatusIcon(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountPreference;->setIcon(I)V

    goto :goto_0
.end method

.method private getSyncContentDescription(I)Ljava/lang/String;
    .locals 4
    .param p1, "status"    # I

    .prologue
    const v3, 0x7f0b0587

    .line 157
    packed-switch p1, :pswitch_data_0

    .line 167
    const-string v0, "AccountPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sync status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 159
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0585

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0586

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 163
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 165
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0788

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getSyncStatusIcon(I)I
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 136
    packed-switch p1, :pswitch_data_0

    .line 150
    const v0, 0x7f0200ab

    .line 151
    .local v0, "res":I
    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return v0

    .line 138
    .end local v0    # "res":I
    :pswitch_0
    const v0, 0x7f0200a7

    .line 139
    .restart local v0    # "res":I
    goto :goto_0

    .line 141
    .end local v0    # "res":I
    :pswitch_1
    const v0, 0x7f0200a9

    .line 142
    .restart local v0    # "res":I
    goto :goto_0

    .line 144
    .end local v0    # "res":I
    :pswitch_2
    const v0, 0x7f0200ab

    .line 145
    .restart local v0    # "res":I
    goto :goto_0

    .line 147
    .end local v0    # "res":I
    :pswitch_3
    const v0, 0x7f0200a7

    .line 148
    .restart local v0    # "res":I
    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getSyncStatusMessage(I)I
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 114
    packed-switch p1, :pswitch_data_0

    .line 128
    const v0, 0x7f0b0590

    .line 129
    .local v0, "res":I
    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return v0

    .line 116
    .end local v0    # "res":I
    :pswitch_0
    const v0, 0x7f0b058e

    .line 117
    .restart local v0    # "res":I
    goto :goto_0

    .line 119
    .end local v0    # "res":I
    :pswitch_1
    const v0, 0x7f0b058f

    .line 120
    .restart local v0    # "res":I
    goto :goto_0

    .line 122
    .end local v0    # "res":I
    :pswitch_2
    const v0, 0x7f0b0590

    .line 123
    .restart local v0    # "res":I
    goto :goto_0

    .line 125
    .end local v0    # "res":I
    :pswitch_3
    const v0, 0x7f0b0789

    .line 126
    .restart local v0    # "res":I
    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthorities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 86
    iget v0, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    invoke-direct {p0, v0}, Lcom/android/settings/AccountPreference;->getSyncStatusMessage(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountPreference;->setSummary(I)V

    .line 87
    iget-boolean v0, p0, Lcom/android/settings/AccountPreference;->mShowTypeIcon:Z

    if-nez v0, :cond_0

    .line 88
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    .line 89
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings/AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings/AccountPreference;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 93
    :cond_0
    return-void
.end method

.method public setProviderIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/AccountPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 96
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :cond_0
    return-void
.end method

.method public setSyncStatus(IZ)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "updateSummary"    # Z

    .prologue
    .line 102
    iput p1, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    .line 103
    iget-boolean v0, p0, Lcom/android/settings/AccountPreference;->mShowTypeIcon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/settings/AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings/AccountPreference;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    if-eqz p2, :cond_1

    .line 108
    invoke-direct {p0, p1}, Lcom/android/settings/AccountPreference;->getSyncStatusMessage(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountPreference;->setSummary(I)V

    .line 110
    :cond_1
    return-void
.end method
