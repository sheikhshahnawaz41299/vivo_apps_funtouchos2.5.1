.class public Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;
.super Landroid/preference/PreferenceActivity;
.source "NotificationOpsDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity$NotificationDetailsChangeObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationOpsDetailsActivity"


# instance fields
.field private mChangeObserver:Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity$NotificationDetailsChangeObserver;

.field private mCurrentLabel:Ljava/lang/String;

.field private mCurrentPkg:Ljava/lang/String;

.field private mCurrentUid:I

.field private mDivider1:Landroid/preference/PreferenceCategory;

.field private mDivider2:Landroid/preference/PreferenceCategory;

.field private mDivider3:Landroid/preference/PreferenceCategory;

.field private mInstanceId:I

.field private mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

.field private mShowDesktopAppIconBadge:Landroid/preference/CheckBoxPreference;

.field private mShowImanagerLockTipDivider:Landroid/preference/PreferenceCategory;

.field private mShowImanagerLockedTipDivider:Landroid/preference/PreferenceCategory;

.field private mShowKeyguardNotification:Landroid/preference/CheckBoxPreference;

.field private mShowKeyguardNotificationDetails:Landroid/preference/CheckBoxPreference;

.field private mShowNotification:Landroid/preference/CheckBoxPreference;

.field private mShowPriorityIllustration:Landroid/preference/PreferenceCategory;

.field private mShowPriorityNotification:Landroid/preference/CheckBoxPreference;

.field private mShowTopPreview:Landroid/preference/CheckBoxPreference;

.field private mTitle:Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 297
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;Ljava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->refeshDetailsUI(Ljava/lang/String;IZ)V

    return-void
.end method

.method private handleAppLockLayout(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isAppLockedByIManager(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowImanagerLockedTipDivider:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowImanagerLockTipDivider:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 327
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowImanagerLockTipDivider:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 324
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowImanagerLockedTipDivider:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private refeshDetailsUI(Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "isNotificationEnabled"    # Z

    .prologue
    const/4 v5, 0x1

    .line 234
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 235
    if-eqz p3, :cond_3

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mDivider1:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowPriorityNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowPriorityIllustration:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mDivider2:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 241
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isKeyguardNotificationEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotificationDetails:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 243
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->handleAppLockLayout(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mDivider3:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isDesktopAppIconBadgeAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowDesktopAppIconBadge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 256
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowTopPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 258
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowPriorityNotification:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentUid:I

    iget v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mInstanceId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isNotificationHighPriority(Ljava/lang/String;II)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotification:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isKeyguardNotificationEnabled(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isAppLockedByIManager(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotificationDetails:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 262
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotificationDetails:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 267
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowDesktopAppIconBadge:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isDesktopAppIconBadgeEnableForLocal(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowTopPreview:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isTopPreViewEnabled(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 283
    :goto_3
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotificationDetails:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowImanagerLockTipDivider:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 248
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowImanagerLockedTipDivider:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mDivider3:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowDesktopAppIconBadge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotificationDetails:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isKeyguardNotificationDetailsEnabled(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotificationDetails:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2

    .line 271
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mDivider1:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowPriorityNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowPriorityIllustration:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mDivider2:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 276
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotificationDetails:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowImanagerLockTipDivider:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowImanagerLockedTipDivider:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mDivider3:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 280
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowDesktopAppIconBadge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowTopPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3
.end method

.method private writeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "switcher"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-static {p0}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v0

    .line 288
    .local v0, "collectDataUtils":Lcom/android/systemui/vivo/common/utils/CollectDataUtils;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 289
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "switcher"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v2, "pkg"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v2, "status"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v2, "1063"

    const-string v3, "106311"

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 293
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f040072

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->setContentView(I)V

    .line 58
    const/high16 v0, 0x7f070000

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->addPreferencesFromResource(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelector(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "label"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentLabel:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "pkg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "uid"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentUid:I

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "instanceId"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mInstanceId:I

    .line 67
    const v0, 0x7f1101d1

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mTitle:Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mTitle:Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;->setCenterText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mTitle:Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;

    const-string v2, ""

    const/4 v3, 0x2

    new-instance v4, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity$1;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;->initLeftButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mTitle:Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;->showLeftButton()V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mTitle:Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;->setLeftButtonEnable(Z)V

    .line 79
    invoke-static {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    .line 80
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity$NotificationDetailsChangeObserver;

    invoke-direct {v0, p0, v5}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity$NotificationDetailsChangeObserver;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity$1;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mChangeObserver:Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity$NotificationDetailsChangeObserver;

    .line 82
    const-string v0, "show_notification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowNotification:Landroid/preference/CheckBoxPreference;

    .line 83
    const-string v0, "divider1"

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mDivider1:Landroid/preference/PreferenceCategory;

    .line 84
    const-string v0, "show_priority_notification_illustration"

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowPriorityIllustration:Landroid/preference/PreferenceCategory;

    .line 85
    const-string v0, "show_priority_notification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowPriorityNotification:Landroid/preference/CheckBoxPreference;

    .line 86
    const-string v0, "divider2"

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mDivider2:Landroid/preference/PreferenceCategory;

    .line 87
    const-string v0, "show_keyguard_notification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotification:Landroid/preference/CheckBoxPreference;

    .line 88
    const-string v0, "show_keyguard_notification_details"

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotificationDetails:Landroid/preference/CheckBoxPreference;

    .line 89
    const-string v0, "show_imanager_lock_tip"

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowImanagerLockTipDivider:Landroid/preference/PreferenceCategory;

    .line 90
    const-string v0, "show_imanager_locked_tip"

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowImanagerLockedTipDivider:Landroid/preference/PreferenceCategory;

    .line 91
    const-string v0, "divider3"

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mDivider3:Landroid/preference/PreferenceCategory;

    .line 92
    const-string v0, "show_desktop_app_icon_badge"

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowDesktopAppIconBadge:Landroid/preference/CheckBoxPreference;

    .line 93
    const-string v0, "show_top_preview"

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowTopPreview:Landroid/preference/CheckBoxPreference;

    .line 94
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowTopPreview:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    const-string v0, "0"

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getNotificationTipStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 96
    return-void

    :cond_0
    move v0, v1

    .line 94
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 118
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowNotification:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_7

    .line 119
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentUid:I

    iget v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mInstanceId:I

    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->setNotificationEnabled(Ljava/lang/String;IIZ)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isDesktopAppIconBadgeAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mInstanceId:I

    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowDesktopAppIconBadge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowDesktopAppIconBadge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->setDesktopAppIconBadgeEnabled(Ljava/lang/String;IZZ)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mDivider1:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowPriorityIllustration:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowPriorityNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mDivider2:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 130
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mInstanceId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isKeyguardNotificationEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotificationDetails:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 132
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->handleAppLockLayout(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mDivider3:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isDesktopAppIconBadgeAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowDesktopAppIconBadge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mInstanceId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isTopPreViewEnabled(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowTopPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 156
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    const-string v0, "ShowNotification"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    const-string v3, "1"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_2
    return v1

    .line 121
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 142
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mDivider1:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowPriorityNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowPriorityIllustration:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mDivider2:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotificationDetails:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowImanagerLockTipDivider:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowImanagerLockedTipDivider:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mDivider3:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowDesktopAppIconBadge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowTopPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 160
    :cond_6
    const-string v0, "ShowNotification"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    const-string v3, "0"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 164
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowPriorityNotification:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_8

    .line 165
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentUid:I

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowPriorityNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    iget v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mInstanceId:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->setNotificationHighPriority(Ljava/lang/String;IZI)Z

    goto/16 :goto_2

    .line 167
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotification:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_b

    .line 168
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mInstanceId:I

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->setKeyguardNotificationEnabled(Ljava/lang/String;IZ)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotificationDetails:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 171
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->handleAppLockLayout(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mDivider3:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 181
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 182
    const-string v0, "ShowKeyguardNotification"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    const-string v3, "1"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 174
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotificationDetails:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowImanagerLockTipDivider:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowImanagerLockedTipDivider:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mDivider3:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 185
    :cond_a
    const-string v0, "ShowKeyguardNotification"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    const-string v3, "0"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 190
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotificationDetails:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_d

    .line 191
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mInstanceId:I

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotificationDetails:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->setKeyguardNotificationDetailsEnabled(Ljava/lang/String;IZ)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowKeyguardNotificationDetails:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 195
    const-string v0, "ShowKeyguardNotificationDetails"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    const-string v3, "1"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 198
    :cond_c
    const-string v0, "ShowKeyguardNotificationDetails"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    const-string v3, "0"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 203
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowDesktopAppIconBadge:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_f

    .line 204
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mInstanceId:I

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowDesktopAppIconBadge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowDesktopAppIconBadge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->setDesktopAppIconBadgeEnabled(Ljava/lang/String;IZZ)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowDesktopAppIconBadge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 208
    const-string v0, "ShowDesktopAppIconBadge"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    const-string v3, "1"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 211
    :cond_e
    const-string v0, "ShowDesktopAppIconBadge"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    const-string v3, "0"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 216
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowTopPreview:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_11

    .line 217
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mInstanceId:I

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowTopPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->enableTopPreView(Ljava/lang/String;ILjava/lang/Boolean;)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mShowTopPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 221
    const-string v0, "ShowTopPreview"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    const-string v3, "1"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 224
    :cond_10
    const-string v0, "ShowTopPreview"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    const-string v3, "0"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 230
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_2
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 101
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 102
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mChangeObserver:Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity$NotificationDetailsChangeObserver;

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->registerObserver(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;)V

    .line 104
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentUid:I

    iget v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mInstanceId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->areNotificationsEnabledForPackage(Ljava/lang/String;II)Z

    move-result v0

    .line 105
    .local v0, "isNotificationEnabled":Z
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mCurrentPkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mInstanceId:I

    invoke-direct {p0, v1, v2, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->refeshDetailsUI(Ljava/lang/String;IZ)V

    .line 106
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->mChangeObserver:Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity$NotificationDetailsChangeObserver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->unregisterObserver(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;)V

    .line 113
    return-void
.end method
