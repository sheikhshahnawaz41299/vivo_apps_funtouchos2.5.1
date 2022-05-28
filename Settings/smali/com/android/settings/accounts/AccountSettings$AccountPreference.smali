.class Lcom/android/settings/accounts/AccountSettings$AccountPreference;
.super Landroid/preference/Preference;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountPreference"
.end annotation


# static fields
.field public static final SYNC_DISABLED:I = 0x1

.field public static final SYNC_ENABLED:I = 0x0

.field public static final SYNC_ERROR:I = 0x2

.field public static final SYNC_UNSUPPORTED:I = 0x3


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private final mFragment:Ljava/lang/String;

.field private final mFragmentArguments:Landroid/os/Bundle;

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderIconView:Landroid/widget/ImageView;

.field private mStatus:I

.field private mSyncStatusIcon:Landroid/widget/ImageView;

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mTitleResId:I

.field private final mTitleResPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/accounts/AccountSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "titleResPackageName"    # Ljava/lang/String;
    .param p5, "titleResId"    # I
    .param p6, "fragment"    # Ljava/lang/String;
    .param p7, "fragmentArguments"    # Landroid/os/Bundle;
    .param p8, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 801
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->this$0:Lcom/android/settings/accounts/AccountSettings;

    .line 802
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 803
    iput-object p3, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    .line 804
    iput-object p4, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitleResPackageName:Ljava/lang/String;

    .line 805
    iput p5, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitleResId:I

    .line 806
    iput-object p6, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    .line 807
    iput-object p7, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    .line 808
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setLayoutResource(I)V

    .line 810
    invoke-virtual {p0, p3}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 811
    invoke-virtual {p0, p8}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 812
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 813
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setSyncStatus(I)V

    .line 814
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mAccountManager:Landroid/accounts/AccountManager;

    .line 816
    invoke-virtual {p0, p0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 817
    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/accounts/AccountSettings$AccountPreference;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSettings$AccountPreference;

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitleResPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accounts/AccountSettings$AccountPreference;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSettings$AccountPreference;

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private getSyncContentDescription(I)Ljava/lang/String;
    .locals 4
    .param p1, "status"    # I

    .prologue
    const v3, 0x7f0b0587

    .line 885
    packed-switch p1, :pswitch_data_0

    .line 895
    const-string v0, "AccountSettings"

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

    .line 896
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 887
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0585

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 889
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0586

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 891
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 893
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 885
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
    .line 864
    packed-switch p1, :pswitch_data_0

    .line 878
    const v0, 0x7f0200ab

    .line 879
    .local v0, "res":I
    const-string v1, "AccountSettings"

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

    .line 881
    :goto_0
    return v0

    .line 866
    .end local v0    # "res":I
    :pswitch_0
    const v0, 0x7f0200a7

    .line 867
    .restart local v0    # "res":I
    goto :goto_0

    .line 869
    .end local v0    # "res":I
    :pswitch_1
    const v0, 0x7f0200a9

    .line 870
    .restart local v0    # "res":I
    goto :goto_0

    .line 872
    .end local v0    # "res":I
    :pswitch_2
    const v0, 0x7f0200ab

    .line 873
    .restart local v0    # "res":I
    goto :goto_0

    .line 875
    .end local v0    # "res":I
    :pswitch_3
    const/4 v0, 0x0

    .line 876
    .restart local v0    # "res":I
    goto :goto_0

    .line 864
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getSyncStatusMessage(I)Ljava/lang/String;
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 837
    packed-switch p1, :pswitch_data_0

    .line 851
    const v0, 0x7f0b0590

    .line 852
    .local v0, "res":I
    const-string v1, "AccountSettings"

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

    .line 855
    :goto_0
    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 858
    :goto_1
    return-object v1

    .line 839
    .end local v0    # "res":I
    :pswitch_0
    const v0, 0x7f0b058e

    .line 840
    .restart local v0    # "res":I
    goto :goto_0

    .line 842
    .end local v0    # "res":I
    :pswitch_1
    const v0, 0x7f0b058f

    .line 843
    .restart local v0    # "res":I
    goto :goto_0

    .line 845
    .end local v0    # "res":I
    :pswitch_2
    const v0, 0x7f0b0590

    .line 846
    .restart local v0    # "res":I
    goto :goto_0

    .line 848
    .end local v0    # "res":I
    :pswitch_3
    const/4 v0, 0x0

    .line 849
    .restart local v0    # "res":I
    goto :goto_0

    .line 858
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitleResPackageName:Ljava/lang/String;

    goto :goto_1

    .line 837
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 821
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 822
    iget v0, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mStatus:I

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->getSyncStatusMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 823
    const v0, 0x7f0e0008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    .line 824
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 825
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 826
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 902
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 903
    const-string v0, "com.bbk.account"

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitleResPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 904
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.bbk.account.ACCOUNT_MAIN_SCREEN"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 905
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 911
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v4, 0x1

    .line 913
    :cond_0
    return v4

    .line 907
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitleResPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitleResId:I

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSyncStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 828
    iput p1, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mStatus:I

    .line 829
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 832
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->getSyncStatusMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 833
    return-void
.end method
