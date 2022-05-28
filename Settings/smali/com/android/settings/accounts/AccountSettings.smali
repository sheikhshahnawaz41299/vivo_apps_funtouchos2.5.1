.class public Lcom/android/settings/accounts/AccountSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/SettingsActivity$OnKeyEventListener;
.implements Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;,
        Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;,
        Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;,
        Lcom/android/settings/accounts/AccountSettings$AccountPreference;,
        Lcom/android/settings/accounts/AccountSettings$ProfileData;
    }
.end annotation


# static fields
.field private static final ACCOUNT_MANAGER_TYPE:Ljava/lang/String; = "com.android.email.pop3"

.field private static final ADD_ACCOUNT_ACTION:Ljava/lang/String; = "android.settings.ADD_ACCOUNT_SETTINGS"

.field private static final EMAIL_PACKAGE_NAME:Ljava/lang/String; = "com.android.email"

.field private static final EMAIL_WELCOME_CLASS_NAME:Ljava/lang/String; = "com.android.email.activity.setup.AccountSetupFinal"

.field private static final EXTRA_FLOW_ACCOUNT_TYPE:Ljava/lang/String; = "FLOW_ACCOUNT_TYPE"

.field private static final EXTRA_FLOW_MODE:Ljava/lang/String; = "FLOW_MODE"

.field private static final FLOW_MODE_ACCOUNT_MANAGER:I = 0x1

.field private static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field private static final ORDER_LAST:I = 0x3e9

.field private static final ORDER_LAST_BUT_TWO:I = 0x3e7

.field private static final ORDER_NEXT_TO_LAST:I = 0x3e8

.field public static final RESULT_CODE_BACK:I = 0x15

.field public static final RESULT_CODE_FINISH:I = 0x16

.field public static final RESULT_CODE_NEXT:I = 0x14

.field public static final TAG:Ljava/lang/String; = "AccountSettings"

.field private static final TAG_CONFIRM_AUTO_SYNC_CHANGE:Ljava/lang/String; = "confirmAutoSyncChange"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAuthorities:[Ljava/lang/String;

.field private mAuthoritiesCount:I

.field private mContext:Landroid/content/Context;

.field private mIsSetupWizard:Z

.field private mIsvivoAccountLogin:Z

.field private mIsvivoAccountadded:Z

.field private mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

.field private mProfileNotAvailablePreference:Landroid/preference/Preference;

.field private mProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/accounts/AccountSettings$ProfileData;",
            ">;"
        }
    .end annotation
.end field

.field private mShowOperatorAccount:Z

.field private mUm:Landroid/os/UserManager;

.field private tv_nextStep:Landroid/widget/TextView;

.field private vivoAccountName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 120
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    .line 121
    new-instance v0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings/accounts/AccountSettings;Lcom/android/settings/accounts/AccountSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    .line 125
    iput v1, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthoritiesCount:I

    .line 127
    iput-boolean v1, p0, Lcom/android/settings/accounts/AccountSettings;->mShowOperatorAccount:Z

    .line 130
    iput-object v2, p0, Lcom/android/settings/accounts/AccountSettings;->mAccountManager:Landroid/accounts/AccountManager;

    .line 132
    iput-boolean v1, p0, Lcom/android/settings/accounts/AccountSettings;->mIsvivoAccountLogin:Z

    .line 133
    iput-boolean v1, p0, Lcom/android/settings/accounts/AccountSettings;->mIsvivoAccountadded:Z

    .line 137
    iput-boolean v1, p0, Lcom/android/settings/accounts/AccountSettings;->mIsSetupWizard:Z

    .line 995
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/AccountSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSettings;->nextStep(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/accounts/AccountSettings;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/accounts/AccountSettings;Lcom/android/settings/accounts/AccountSettings$ProfileData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSettings;
    .param p1, "x1"    # Lcom/android/settings/accounts/AccountSettings$ProfileData;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSettings;->updateAccountTypes(Lcom/android/settings/accounts/AccountSettings$ProfileData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/accounts/AccountSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSettings;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountSettings;->mIsSetupWizard:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/accounts/AccountSettings;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accounts/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSettings;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/accounts/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSettings;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->cleanUpPreferences()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/accounts/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSettings;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->listenToAccountUpdates()V

    return-void
.end method

.method private accountTypeHasAnyRequestedAuthorities(Lcom/android/settings/accounts/AuthenticatorHelper;Ljava/lang/String;)Z
    .locals 6
    .param p1, "helper"    # Lcom/android/settings/accounts/AuthenticatorHelper;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 741
    iget v4, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthoritiesCount:I

    if-nez v4, :cond_1

    .line 756
    :cond_0
    :goto_0
    return v2

    .line 745
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/settings/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 747
    .local v0, "authoritiesForType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 748
    const-string v2, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No sync authorities for account type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 749
    goto :goto_0

    .line 751
    :cond_2
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v4, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthoritiesCount:I

    if-ge v1, v4, :cond_3

    .line 752
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 751
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    .line 756
    goto :goto_0
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 9
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 406
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 407
    .local v4, "addAccountOptions":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 408
    .local v8, "mPendingIntent":Landroid/app/PendingIntent;
    const-string v0, "pendingIntent"

    invoke-virtual {v4, v0, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 409
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v1, p1

    move-object v3, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 417
    return-void
.end method

.method private cleanUpPreferences()V
    .locals 2

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 553
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 557
    return-void
.end method

.method private finishActivityByResult(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    .line 1113
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishActivityByResult, resultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1115
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1116
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1117
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1119
    :cond_0
    return-void
.end method

.method private getAccountTypePreferences(Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 21
    .param p1, "helper"    # Lcom/android/settings/accounts/AuthenticatorHelper;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/accounts/AuthenticatorHelper;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accounts/AccountSettings$AccountPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 664
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v14

    .line 665
    .local v14, "accountTypes":[Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    array-length v2, v14

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 668
    .local v13, "accountTypePreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/accounts/AccountSettings$AccountPreference;>;"
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    array-length v2, v14

    move/from16 v0, v17

    if-ge v0, v2, :cond_7

    .line 669
    aget-object v12, v14, v17

    .line 670
    .local v12, "accountType":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v12}, Lcom/android/settings/Utils;->showAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 668
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 676
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/settings/accounts/AccountSettings;->accountTypeHasAnyRequestedAuthorities(Lcom/android/settings/accounts/AuthenticatorHelper;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 680
    .local v5, "label":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 683
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/settings/accounts/AuthenticatorHelper;->getPackageForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 685
    .local v6, "titleResPackageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/AccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v16

    .line 688
    .local v16, "allAccounts":[Landroid/accounts/Account;
    const/16 v18, 0x0

    .local v18, "j":I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    .local v19, "n":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 689
    aget-object v11, v16, v18

    .line 690
    .local v11, "account":Landroid/accounts/Account;
    iget-object v2, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "BBKOnLineService"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 691
    iget-object v2, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/accounts/AccountSettings;->vivoAccountName:Ljava/lang/String;

    .line 688
    :cond_2
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 692
    :cond_3
    iget-object v2, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 693
    iget-object v5, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_3

    .line 698
    .end local v11    # "account":Landroid/accounts/Account;
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelIdForType(Ljava/lang/String;)I

    move-result v7

    .line 700
    .local v7, "titleResId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v12, v0}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v15

    .line 702
    .local v15, "accounts":[Landroid/accounts/Account;
    array-length v2, v15

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v20, 0x1

    .line 705
    .local v20, "skipToAccount":Z
    :goto_4
    if-eqz v20, :cond_6

    .line 706
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 707
    .local v9, "fragmentArguments":Landroid/os/Bundle;
    const-string v2, "account"

    const/4 v3, 0x0

    aget-object v3, v15, v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 709
    const-string v2, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 711
    new-instance v2, Lcom/android/settings/accounts/AccountSettings$AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v3, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v12}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12}, Lcom/android/settings/accounts/AuthenticatorHelper;->preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 702
    .end local v9    # "fragmentArguments":Landroid/os/Bundle;
    .end local v20    # "skipToAccount":Z
    :cond_5
    const/16 v20, 0x0

    goto :goto_4

    .line 716
    .restart local v20    # "skipToAccount":Z
    :cond_6
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 717
    .restart local v9    # "fragmentArguments":Landroid/os/Bundle;
    const-string v2, "account_type"

    invoke-virtual {v9, v2, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v2, "account_label"

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v2, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 722
    new-instance v2, Lcom/android/settings/accounts/AccountSettings$AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v3, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v12}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 730
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v6    # "titleResPackageName":Ljava/lang/String;
    .end local v7    # "titleResId":I
    .end local v9    # "fragmentArguments":Landroid/os/Bundle;
    .end local v12    # "accountType":Ljava/lang/String;
    .end local v15    # "accounts":[Landroid/accounts/Account;
    .end local v16    # "allAccounts":[Landroid/accounts/Account;
    .end local v18    # "j":I
    .end local v19    # "n":I
    .end local v20    # "skipToAccount":Z
    :cond_7
    new-instance v2, Lcom/android/settings/accounts/AccountSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/accounts/AccountSettings$4;-><init>(Lcom/android/settings/accounts/AccountSettings;)V

    invoke-static {v13, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 736
    return-object v13
.end method

.method private static isDeviceOwner(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1079
    const/4 v3, 0x0

    .line 1080
    .local v3, "isdeviceowner":Z
    const-string v5, "device_policy"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 1082
    .local v1, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 1083
    .local v0, "aclist":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ManagedProvisioning_DeviceOwner"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1084
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1085
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 1086
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1087
    const/4 v3, 0x1

    .line 1085
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1091
    .end local v2    # "i":I
    :cond_1
    return v3
.end method

.method private listenToAccountUpdates()V
    .locals 4

    .prologue
    .line 560
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 561
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 562
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 563
    .local v0, "authenticatorHelper":Lcom/android/settings/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 561
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 567
    .end local v0    # "authenticatorHelper":Lcom/android/settings/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private newAddAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 491
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 492
    .local v0, "preference":Landroid/preference/Preference;
    const v1, 0x7f0b058c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 493
    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 494
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 495
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 496
    return-object v0
.end method

.method private newAddOperatorAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 509
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 510
    .local v0, "preference":Landroid/preference/Preference;
    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 511
    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 512
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 513
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 514
    return-object v0
.end method

.method private newDividerPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 545
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 546
    .local v0, "preference":Landroid/preference/Preference;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 547
    const v1, 0x7f0400ed

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 548
    return-object v0
.end method

.method private newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 500
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 501
    .local v0, "preference":Landroid/preference/Preference;
    const v1, 0x7f0b099f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 502
    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 503
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 504
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 505
    return-object v0
.end method

.method private newSyncProfilePreference(Landroid/content/Context;)Landroid/preference/VivoCheckBoxPreference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 518
    new-instance v0, Landroid/preference/VivoCheckBoxPreference;

    invoke-direct {v0, p1}, Landroid/preference/VivoCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 519
    .local v0, "preference":Landroid/preference/VivoCheckBoxPreference;
    const v1, 0x7f0b083d

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setTitle(I)V

    .line 520
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 521
    invoke-virtual {v0, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 523
    return-object v0
.end method

.method private newVivoAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 528
    new-instance v3, Landroid/preference/Preference;

    invoke-direct {v3, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 529
    .local v3, "preference":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 531
    .local v1, "micon":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/vivo/content/ImageUtil;->getInstance(Landroid/content/Context;)Lcom/vivo/content/ImageUtil;

    move-result-object v0

    .line 532
    .local v0, "imageUtil":Lcom/vivo/content/ImageUtil;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v1}, Lcom/vivo/content/ImageUtil;->createRedrawIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 534
    .end local v1    # "micon":Landroid/graphics/drawable/Drawable;
    .local v2, "micon":Landroid/graphics/drawable/Drawable;
    const/high16 v4, 0x7f040000

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 535
    const v4, 0x7f0b074b

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 536
    const v4, 0x7f0b074a

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 537
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 538
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/accounts/AccountSettings;->mIsvivoAccountLogin:Z

    .line 539
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/accounts/AccountSettings;->mIsvivoAccountadded:Z

    .line 540
    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 541
    return-object v3
.end method

.method private nextStep(Z)V
    .locals 1
    .param p1, "isNext"    # Z

    .prologue
    .line 1102
    if-eqz p1, :cond_0

    const/16 v0, 0x14

    .line 1103
    .local v0, "result":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->finishActivityByResult(I)V

    .line 1104
    return-void

    .line 1102
    .end local v0    # "result":I
    :cond_0
    const/16 v0, 0x15

    goto :goto_0
.end method

.method private stopListeningToAccountUpdates()V
    .locals 4

    .prologue
    .line 570
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 571
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 572
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 573
    .local v0, "authenticatorHelper":Lcom/android/settings/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 571
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 577
    .end local v0    # "authenticatorHelper":Lcom/android/settings/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private updateAccountTypes(Lcom/android/settings/accounts/AccountSettings$ProfileData;)V
    .locals 12
    .param p1, "profileData"    # Lcom/android/settings/accounts/AccountSettings$ProfileData;

    .prologue
    const/4 v11, 0x1

    .line 580
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 582
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/accounts/AccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/accounts/AccountSettings;->isDeviceOwner(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/accounts/AccountSettings;->newVivoAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->vivoAccountPreference:Landroid/preference/Preference;

    .line 584
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/accounts/AccountSettings;->newDividerPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->firDividerPreference:Landroid/preference/Preference;

    .line 585
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/accounts/AccountSettings;->newDividerPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->secDividerPreference:Landroid/preference/Preference;

    .line 586
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v9, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->firDividerPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 587
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v9, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->vivoAccountPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 588
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v9, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->secDividerPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 591
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/accounts/AccountSettings;->newSyncProfilePreference(Landroid/content/Context;)Landroid/preference/VivoCheckBoxPreference;

    move-result-object v8

    iput-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->syncProfilePreference:Landroid/preference/VivoCheckBoxPreference;

    .line 592
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v9, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->syncProfilePreference:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 593
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-nez v8, :cond_4

    .line 594
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 595
    .local v1, "currentProfile":Landroid/os/UserHandle;
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-static {v8}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v7

    .line 597
    .local v7, "userAutoSyncStatus":Z
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->syncProfilePreference:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v8, v7}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 604
    .end local v1    # "currentProfile":Landroid/os/UserHandle;
    .end local v7    # "userAutoSyncStatus":Z
    :goto_0
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 605
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v9, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/accounts/AccountSettings;->getAccountTypePreferences(Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v5

    .line 607
    .local v5, "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/accounts/AccountSettings$AccountPreference;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 609
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_8

    .line 610
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 611
    iget-object v8, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    iget-object v8, v8, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 612
    .local v4, "managedProfile":Landroid/os/UserHandle;
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-static {v8}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    .line 614
    .local v3, "managedAutoSyncStatus":Z
    const/4 v6, 0x1

    .line 615
    .local v6, "syncStatus":I
    if-eqz v3, :cond_1

    .line 616
    const/4 v6, 0x0

    .line 618
    :cond_1
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/accounts/AccountSettings$AccountPreference;

    invoke-virtual {v8, v6}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setSyncStatus(I)V

    .line 619
    iget-object v9, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/Preference;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 638
    .end local v3    # "managedAutoSyncStatus":Z
    .end local v4    # "managedProfile":Landroid/os/UserHandle;
    .end local v6    # "syncStatus":I
    :cond_2
    :goto_2
    iget-boolean v8, p0, Lcom/android/settings/accounts/AccountSettings;->mIsSetupWizard:Z

    if-eqz v8, :cond_3

    .line 639
    iget-object v8, p0, Lcom/android/settings/accounts/AccountSettings;->tv_nextStep:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0847

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 599
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v5    # "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/accounts/AccountSettings$AccountPreference;>;"
    :cond_4
    iget-object v8, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    iget-object v8, v8, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 600
    .restart local v4    # "managedProfile":Landroid/os/UserHandle;
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-static {v8}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    .line 602
    .restart local v3    # "managedAutoSyncStatus":Z
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->syncProfilePreference:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v8, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 621
    .end local v3    # "managedAutoSyncStatus":Z
    .end local v4    # "managedProfile":Landroid/os/UserHandle;
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v5    # "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/accounts/AccountSettings$AccountPreference;>;"
    :cond_5
    const-string v9, "com.bbk.account"

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/accounts/AccountSettings$AccountPreference;

    invoke-static {v8}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->access$500(Lcom/android/settings/accounts/AccountSettings$AccountPreference;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 622
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 623
    .restart local v1    # "currentProfile":Landroid/os/UserHandle;
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-static {v8}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v7

    .line 624
    .restart local v7    # "userAutoSyncStatus":Z
    const/4 v6, 0x1

    .line 625
    .restart local v6    # "syncStatus":I
    if-eqz v7, :cond_6

    .line 626
    const/4 v6, 0x0

    .line 628
    :cond_6
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/accounts/AccountSettings$AccountPreference;

    invoke-virtual {v8, v6}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setSyncStatus(I)V

    .line 629
    iget-object v9, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/Preference;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 631
    .end local v1    # "currentProfile":Landroid/os/UserHandle;
    .end local v6    # "syncStatus":I
    .end local v7    # "userAutoSyncStatus":Z
    :cond_7
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/accounts/AccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/accounts/AccountSettings;->isDeviceOwner(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 632
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->vivoAccountPreference:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/accounts/AccountSettings;->vivoAccountName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->vivoAccountPreference:Landroid/preference/Preference;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 634
    iput-boolean v11, p0, Lcom/android/settings/accounts/AccountSettings;->mIsvivoAccountLogin:Z

    goto/16 :goto_2

    .line 642
    :cond_8
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    if-eqz v8, :cond_9

    .line 643
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v9, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 645
    :cond_9
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addOperatorAccountPreference:Landroid/preference/Preference;

    if-eqz v8, :cond_a

    .line 646
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v9, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addOperatorAccountPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 657
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v5    # "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/accounts/AccountSettings$AccountPreference;>;"
    :cond_a
    :goto_3
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    if-eqz v8, :cond_b

    .line 658
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v9, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 660
    :cond_b
    return-void

    .line 650
    :cond_c
    iget-object v8, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 651
    iget-object v8, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const v9, 0x7f020033

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setIcon(I)V

    .line 652
    iget-object v8, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v8, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const v9, 0x7f0b078f

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 655
    iget-object v8, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v9, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method private updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V
    .locals 6
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p2, "addCategory"    # Z
    .param p3, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v5, 0x0

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 460
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    invoke-direct {v1, v5}, Lcom/android/settings/accounts/AccountSettings$ProfileData;-><init>(Lcom/android/settings/accounts/AccountSettings$1;)V

    .line 461
    .local v1, "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    iput-object p1, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    .line 462
    if-eqz p2, :cond_3

    .line 463
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    .line 464
    iget-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0b023b

    :goto_0
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 466
    iget-object v2, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 471
    :goto_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    new-instance v2, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-direct {v2, v0, v3, v4, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v2, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 474
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    const-string v3, "no_modify_accounts"

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 475
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->newAddAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    .line 476
    iget-boolean v2, p0, Lcom/android/settings/accounts/AccountSettings;->mShowOperatorAccount:Z

    if-eqz v2, :cond_4

    .line 477
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->newAddOperatorAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addOperatorAccountPreference:Landroid/preference/Preference;

    .line 484
    :cond_0
    :goto_2
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    .line 487
    :cond_1
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 488
    return-void

    .line 464
    :cond_2
    const v2, 0x7f0b023a

    goto :goto_0

    .line 468
    :cond_3
    iput-object p3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    goto :goto_1

    .line 480
    :cond_4
    iput-object v5, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addOperatorAccountPreference:Landroid/preference/Preference;

    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    .line 327
    .local v0, "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    if-eqz v0, :cond_0

    .line 328
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->updateAccountTypes(Lcom/android/settings/accounts/AccountSettings$ProfileData;)V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing Settings screen for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vivo/app/VivoBaseActivity;

    .line 231
    .local v0, "activity":Lcom/vivo/app/VivoBaseActivity;
    const v1, 0x7f0b0906

    invoke-virtual {v0, v1}, Lcom/vivo/app/VivoBaseActivity;->setTitle(I)V

    .line 232
    invoke-virtual {v0}, Lcom/vivo/app/VivoBaseActivity;->showTitleLeftButton()V

    .line 233
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vivo/app/VivoBaseActivity;->setTitleLeftButtonIcon(I)V

    .line 234
    new-instance v1, Lcom/android/settings/accounts/AccountSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/AccountSettings$2;-><init>(Lcom/android/settings/accounts/AccountSettings;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountSettings;->onTitleLeftButtonPressed(Landroid/view/View$OnClickListener;)V

    .line 244
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mContext:Landroid/content/Context;

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_is_sw"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accounts/AccountSettings;->mIsSetupWizard:Z

    .line 192
    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountSettings;->mIsSetupWizard:Z

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x480000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 196
    :cond_0
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    .line 197
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthoritiesCount:I

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accounts/AccountSettings;->mShowOperatorAccount:Z

    .line 203
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 249
    const/high16 v0, 0x7f110000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 250
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 251
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 207
    const v2, 0x7f040004

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 209
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0e013a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 210
    .local v0, "layout_nextStep":Landroid/widget/RelativeLayout;
    iget-boolean v2, p0, Lcom/android/settings/accounts/AccountSettings;->mIsSetupWizard:Z

    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 212
    const v2, 0x7f0e013b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/accounts/AccountSettings;->tv_nextStep:Landroid/widget/TextView;

    .line 213
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings;->tv_nextStep:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0846

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    new-instance v2, Lcom/android/settings/accounts/AccountSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/accounts/AccountSettings$1;-><init>(Lcom/android/settings/accounts/AccountSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    :goto_0
    return-object v1

    .line 221
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onDestroy()V

    return-void
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 1123
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1124
    iget-boolean v1, p0, Lcom/android/settings/accounts/AccountSettings;->mIsSetupWizard:Z

    if-eqz v1, :cond_0

    .line 1125
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->nextStep(Z)V

    .line 1126
    const/4 v0, 0x1

    .line 1129
    :cond_0
    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 313
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    .line 314
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    .line 315
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 317
    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountSettings;->mIsSetupWizard:Z

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnKeyEventListener(Lcom/android/settings/SettingsActivity$OnKeyEventListener;)V

    .line 322
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 12
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 337
    iget-object v9, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 338
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_a

    .line 339
    iget-object v9, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    .line 340
    .local v6, "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    iget-object v9, v6, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    if-ne p1, v9, :cond_0

    .line 341
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.extra.USER"

    iget-object v11, v6, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v3, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 343
    const-string v9, "authorities"

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v3, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/AccountSettings;->startActivity(Landroid/content/Intent;)V

    move v9, v10

    .line 402
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    :goto_1
    return v9

    .line 347
    .restart local v6    # "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    :cond_0
    iget-object v9, v6, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addOperatorAccountPreference:Landroid/preference/Preference;

    if-ne p1, v9, :cond_1

    .line 348
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 349
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v9, "com.android.email"

    const-string v11, "com.android.email.activity.setup.AccountSetupFinal"

    invoke-virtual {v3, v9, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v9, "FLOW_MODE"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    const-string v9, "FLOW_ACCOUNT_TYPE"

    const-string v11, "com.android.email.pop3"

    invoke-virtual {v3, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/AccountSettings;->startActivity(Landroid/content/Intent;)V

    move v9, v10

    .line 353
    goto :goto_1

    .line 355
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v9, v6, Lcom/android/settings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    if-ne p1, v9, :cond_2

    .line 356
    iget-object v9, v6, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    iget v8, v9, Landroid/content/pm/UserInfo;->id:I

    .line 357
    .local v8, "userId":I
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    new-instance v11, Lcom/android/settings/accounts/AccountSettings$3;

    invoke-direct {v11, p0, v8}, Lcom/android/settings/accounts/AccountSettings$3;-><init>(Lcom/android/settings/accounts/AccountSettings;I)V

    invoke-static {v9, v8, v11}, Lcom/android/settings/Utils;->createRemoveConfirmationDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    move v9, v10

    .line 365
    goto :goto_1

    .line 367
    .end local v8    # "userId":I
    :cond_2
    iget-object v9, v6, Lcom/android/settings/accounts/AccountSettings$ProfileData;->syncProfilePreference:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v9, :cond_3

    .line 369
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 370
    .local v1, "currentProfile":Landroid/os/UserHandle;
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-static {v9}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v7

    .line 372
    .local v7, "userAutoSyncStatus":Z
    iget-object v9, v6, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 373
    iget-object v9, v6, Lcom/android/settings/accounts/AccountSettings$ProfileData;->syncProfilePreference:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 374
    invoke-static {p0, v10, v1}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->show(Lcom/android/settings/accounts/AccountSettings;ZLandroid/os/UserHandle;)V

    .line 378
    :goto_2
    invoke-direct {p0, v6}, Lcom/android/settings/accounts/AccountSettings;->updateAccountTypes(Lcom/android/settings/accounts/AccountSettings$ProfileData;)V

    .line 390
    .end local v1    # "currentProfile":Landroid/os/UserHandle;
    .end local v7    # "userAutoSyncStatus":Z
    :cond_3
    :goto_3
    iget-object v9, v6, Lcom/android/settings/accounts/AccountSettings$ProfileData;->vivoAccountPreference:Landroid/preference/Preference;

    if-ne p1, v9, :cond_9

    .line 391
    iget-object v9, v6, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-nez v9, :cond_4

    .line 392
    iget-boolean v9, p0, Lcom/android/settings/accounts/AccountSettings;->mIsvivoAccountLogin:Z

    if-eqz v9, :cond_8

    .line 393
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.bbk.account.ACCOUNT_MAIN_SCREEN"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_4
    move v9, v10

    .line 399
    goto/16 :goto_1

    .line 376
    .restart local v1    # "currentProfile":Landroid/os/UserHandle;
    .restart local v7    # "userAutoSyncStatus":Z
    :cond_5
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-static {v11, v9}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    goto :goto_2

    .line 379
    :cond_6
    iget-object v9, v6, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 380
    iget-object v9, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    iget-object v9, v9, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 381
    .local v5, "managedProfile":Landroid/os/UserHandle;
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-static {v9}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v4

    .line 382
    .local v4, "managedAutoSyncStatus":Z
    iget-object v9, v6, Lcom/android/settings/accounts/AccountSettings$ProfileData;->syncProfilePreference:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 383
    invoke-static {p0, v10, v5}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->show(Lcom/android/settings/accounts/AccountSettings;ZLandroid/os/UserHandle;)V

    .line 387
    :goto_5
    invoke-direct {p0, v6}, Lcom/android/settings/accounts/AccountSettings;->updateAccountTypes(Lcom/android/settings/accounts/AccountSettings$ProfileData;)V

    goto :goto_3

    .line 385
    :cond_7
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-static {v11, v9}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    goto :goto_5

    .line 396
    .end local v1    # "currentProfile":Landroid/os/UserHandle;
    .end local v4    # "managedAutoSyncStatus":Z
    .end local v5    # "managedProfile":Landroid/os/UserHandle;
    .end local v7    # "userAutoSyncStatus":Z
    :cond_8
    const-string v9, "BBKOnLineService"

    invoke-direct {p0, v9}, Lcom/android/settings/accounts/AccountSettings;->addAccount(Ljava/lang/String;)V

    goto :goto_4

    .line 338
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .end local v6    # "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    :cond_a
    move v9, v11

    .line 402
    goto/16 :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v8, 0x7f0e02f2

    const v7, 0x7f0e02f1

    const v6, 0x7f0e02f0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 255
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 256
    .local v0, "currentProfile":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 257
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 262
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 263
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 282
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 266
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    iget-object v2, v2, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 268
    .local v1, "managedProfile":Landroid/os/UserHandle;
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 273
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 278
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 280
    .end local v1    # "managedProfile":Landroid/os/UserHandle;
    :cond_1
    const-string v2, "AccountSettings"

    const-string v3, "Method onPrepareOptionsMenu called before mProfiles was initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 286
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    .line 289
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    .line 290
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->cleanUpPreferences()V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->updateUi()V

    .line 293
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 294
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->listenToAccountUpdates()V

    .line 296
    iget-boolean v3, p0, Lcom/android/settings/accounts/AccountSettings;->mIsSetupWizard:Z

    if-eqz v3, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/SettingsActivity;

    if-eqz v3, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v3, p0}, Lcom/android/settings/SettingsActivity;->setOnKeyEventListener(Lcom/android/settings/SettingsActivity$OnKeyEventListener;)V

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 301
    .local v2, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "defaut_account_sync_on"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 302
    .local v1, "defaultSyncOn":Z
    if-eqz v1, :cond_1

    .line 304
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 305
    .local v0, "currentProfile":Landroid/os/UserHandle;
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v5, v3}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 306
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "defaut_account_sync_on"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    .end local v0    # "currentProfile":Landroid/os/UserHandle;
    .end local v1    # "defaultSyncOn":Z
    .end local v2    # "mSharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method

.method updateUi()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 421
    const v8, 0x7f060002

    invoke-virtual {p0, v8}, Lcom/android/settings/accounts/AccountSettings;->addPreferencesFromResource(I)V

    .line 423
    iget-object v8, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v8}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 425
    const-string v7, "AccountSettings"

    const-string v8, "We should not be showing settings for a managed profile"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->finish()V

    .line 455
    :cond_0
    return-void

    .line 430
    :cond_1
    const-string v8, "account"

    invoke-virtual {p0, v8}, Lcom/android/settings/accounts/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 431
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    iget-object v8, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 433
    iget-object v8, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 434
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v6, v7, v2}, Lcom/android/settings/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 447
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 448
    .local v5, "profilesCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 449
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    .line 450
    .local v3, "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    iget-object v7, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 451
    iget-object v7, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 453
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/settings/accounts/AccountSettings;->updateAccountTypes(Lcom/android/settings/accounts/AccountSettings$ProfileData;)V

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    .end local v1    # "i":I
    .end local v3    # "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    .end local v5    # "profilesCount":I
    :cond_4
    iget-object v8, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 437
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 438
    .restart local v5    # "profilesCount":I
    if-le v5, v0, :cond_5

    .line 439
    .local v0, "addCategory":Z
    :goto_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v5, :cond_2

    .line 440
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v7, v0, v2}, Lcom/android/settings/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "addCategory":Z
    .end local v1    # "i":I
    :cond_5
    move v0, v7

    .line 438
    goto :goto_1
.end method
