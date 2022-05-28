.class public Lcom/android/settings/accessibility/VivoAccessibilityService;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoAccessibilityService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final ACTIVITY_REQUEST_CONFIRM_CREDENTIAL_FOR_WEAKER_ENCRYPTION:I = 0x1

.field private static final DIALOG_ID_DISABLE_WARNING:I = 0x2

.field private static final DIALOG_ID_ENABLE_WARNING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VivoAccessibilityService"


# instance fields
.field protected mActivityTitle:Ljava/lang/String;

.field private mComponentName:Landroid/content/ComponentName;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mPreferenceKey:Ljava/lang/String;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field protected mSettingsIntent:Landroid/content/Intent;

.field private mSettingsPref:Landroid/preference/PreferenceScreen;

.field protected mSettingsTitle:Ljava/lang/CharSequence;

.field private mShownDialogId:I

.field protected mSummaryPreference:Landroid/preference/Preference;

.field private mSwitch:Landroid/preference/VivoCheckBoxPreference;

.field private mVivoAccessibilityUtils:Lcom/vivo/settings/VivoAccessibilityUtils;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 74
    new-instance v0, Lcom/android/settings/accessibility/VivoAccessibilityService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/VivoAccessibilityService$1;-><init>(Lcom/android/settings/accessibility/VivoAccessibilityService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/VivoAccessibilityService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/VivoAccessibilityService;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/VivoAccessibilityService;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/VivoAccessibilityService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/VivoAccessibilityService;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/VivoAccessibilityService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSwitch:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method private createConfirmCredentialReasonMessage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 396
    const v0, 0x7f0b047d

    .line 397
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 406
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 399
    :sswitch_0
    const v0, 0x7f0b047b

    .line 400
    goto :goto_0

    .line 403
    :sswitch_1
    const v0, 0x7f0b047c

    goto :goto_0

    .line 397
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method

.method private createEnableDialogContentView(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;
    .locals 22
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 270
    const-string v17, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 273
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const v17, 0x7f04005b

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 276
    .local v9, "content":Landroid/view/View;
    const v17, 0x7f0e010a

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 278
    .local v11, "encryptionWarningView":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 279
    const v17, 0x7f0b0479

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 281
    .local v16, "text":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    .end local v16    # "text":Ljava/lang/String;
    :goto_0
    const v17, 0x7f0e010b

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 289
    .local v4, "capabilitiesHeaderView":Landroid/widget/TextView;
    const v17, 0x7f0b0478

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    const v17, 0x7f0e010c

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 295
    .local v5, "capabilitiesView":Landroid/widget/LinearLayout;
    const v17, 0x1090034

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 298
    .local v8, "capabilityView":Landroid/view/View;
    const v17, 0x10202db

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 300
    .local v13, "imageView":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0200ae

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    const v17, 0x10202df

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 305
    .local v15, "labelView":Landroid/widget/TextView;
    const v17, 0x7f0b047e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    const v17, 0x10202e0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 309
    .local v10, "descriptionView":Landroid/widget/TextView;
    const v17, 0x7f0b047f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilityInfos()Ljava/util/List;

    move-result-object v3

    .line 314
    .local v3, "capabilities":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;>;"
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .line 318
    .local v7, "capabilityCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v7, :cond_1

    .line 319
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    .line 321
    .local v6, "capability":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    const v17, 0x1090034

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 324
    const v17, 0x10202db

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "imageView":Landroid/widget/ImageView;
    check-cast v13, Landroid/widget/ImageView;

    .line 326
    .restart local v13    # "imageView":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0200ae

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    const v17, 0x10202df

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15    # "labelView":Landroid/widget/TextView;
    check-cast v15, Landroid/widget/TextView;

    .line 331
    .restart local v15    # "labelView":Landroid/widget/TextView;
    iget v0, v6, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->titleResId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    const v17, 0x10202e0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10    # "descriptionView":Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 335
    .restart local v10    # "descriptionView":Landroid/widget/TextView;
    iget v0, v6, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->descResId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 318
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 284
    .end local v3    # "capabilities":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;>;"
    .end local v4    # "capabilitiesHeaderView":Landroid/widget/TextView;
    .end local v5    # "capabilitiesView":Landroid/widget/LinearLayout;
    .end local v6    # "capability":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    .end local v7    # "capabilityCount":I
    .end local v8    # "capabilityView":Landroid/view/View;
    .end local v10    # "descriptionView":Landroid/widget/TextView;
    .end local v12    # "i":I
    .end local v13    # "imageView":Landroid/widget/ImageView;
    .end local v15    # "labelView":Landroid/widget/TextView;
    :cond_0
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 340
    .restart local v3    # "capabilities":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;>;"
    .restart local v4    # "capabilitiesHeaderView":Landroid/widget/TextView;
    .restart local v5    # "capabilitiesView":Landroid/widget/LinearLayout;
    .restart local v7    # "capabilityCount":I
    .restart local v8    # "capabilityView":Landroid/view/View;
    .restart local v10    # "descriptionView":Landroid/widget/TextView;
    .restart local v12    # "i":I
    .restart local v13    # "imageView":Landroid/widget/ImageView;
    .restart local v15    # "labelView":Landroid/widget/TextView;
    :cond_1
    return-object v9
.end method

.method private getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 7

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v4

    .line 212
    .local v4, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 213
    .local v3, "serviceInfoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 214
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 215
    .local v2, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 216
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :goto_1
    return-object v2

    .line 213
    .restart local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private handleConfirmServiceEnabled(Z)V
    .locals 2
    .param p1, "confirmed"    # Z

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSwitch:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/accessibility/VivoAccessibilityService;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 393
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 345
    if-ne p1, v1, :cond_0

    .line 346
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 347
    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/VivoAccessibilityService;->handleConfirmServiceEnabled(Z)V

    .line 351
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "require_password_to_decrypt"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/VivoAccessibilityService;->handleConfirmServiceEnabled(Z)V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 460
    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->onClick(Landroid/content/DialogInterface;I)V

    .line 461
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 365
    packed-switch p2, :pswitch_data_0

    .line 385
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 367
    :pswitch_0
    iget v4, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mShownDialogId:I

    if-ne v4, v0, :cond_1

    .line 368
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    invoke-direct {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->createConfirmCredentialReasonMessage()Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "title":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->createIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 371
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->startActivityForResult(Landroid/content/Intent;I)V

    .line 387
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "title":Ljava/lang/String;
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->handleConfirmServiceEnabled(Z)V

    goto :goto_0

    .line 377
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/VivoAccessibilityService;->handleConfirmServiceEnabled(Z)V

    goto :goto_0

    .line 381
    :pswitch_1
    iget v4, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mShownDialogId:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 382
    .local v0, "checked":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->handleConfirmServiceEnabled(Z)V

    goto :goto_0

    .end local v0    # "checked":Z
    :cond_2
    move v0, v3

    .line 381
    goto :goto_1

    .line 365
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 105
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->showBBKBackButton()V

    .line 107
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x3010005

    invoke-direct {v1, v2, v3, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSummaryPreference:Landroid/preference/Preference;

    .line 108
    new-instance v1, Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/VivoCheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSwitch:Landroid/preference/VivoCheckBoxPreference;

    .line 109
    iget-object v1, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSwitch:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 111
    invoke-static {}, Lcom/vivo/settings/VivoAccessibilityUtils;->getInstance()Lcom/vivo/settings/VivoAccessibilityUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mVivoAccessibilityUtils:Lcom/vivo/settings/VivoAccessibilityUtils;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/VivoAccessibilityService;->onProcessArguments(Landroid/os/Bundle;)V

    .line 113
    iget-object v1, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSwitch:Landroid/preference/VivoCheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/VivoCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 120
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .param p1, "dialogId"    # I

    .prologue
    const/4 v0, 0x0

    const v10, 0x104000a

    const/high16 v9, 0x1040000

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 226
    packed-switch p1, :pswitch_data_0

    .line 264
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 228
    :pswitch_0
    iput v7, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mShownDialogId:I

    .line 229
    invoke-direct {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    .line 230
    .local v1, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-object v0

    .line 233
    :cond_1
    invoke-virtual {p0, p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 234
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0477

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/VivoAccessibilityService;->createEnableDialogContentView(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 242
    .local v0, "ad":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->create()V

    .line 243
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    goto :goto_0

    .line 247
    .end local v0    # "ad":Landroid/app/AlertDialog;
    .end local v1    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :pswitch_1
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mShownDialogId:I

    .line 248
    invoke-direct {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    .line 249
    .restart local v1    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {p0, p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 253
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0480

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0481

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 131
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 132
    return-void
.end method

.method public onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 11
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 156
    .local v2, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    if-ne v2, v8, :cond_0

    .line 157
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 161
    .restart local v2    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 162
    .local v7, "toggledService":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 163
    .local v0, "accessibilityEnabled":Z
    if-eqz p2, :cond_2

    .line 164
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    const/4 v0, 0x1

    .line 181
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v3, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 187
    .local v1, "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const/16 v8, 0x3a

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 168
    .end local v1    # "enabledService":Landroid/content/ComponentName;
    .end local v3    # "enabledServicesBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 170
    sget-object v6, Lcom/android/settings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 171
    .local v6, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 172
    .restart local v1    # "enabledService":Landroid/content/ComponentName;
    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 174
    const/4 v0, 0x1

    .line 175
    goto :goto_0

    .line 191
    .end local v1    # "enabledService":Landroid/content/ComponentName;
    .end local v6    # "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v3    # "enabledServicesBuilder":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 192
    .local v4, "enabledServicesBuilderLength":I
    if-lez v4, :cond_5

    .line 193
    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 195
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enabled_accessibility_services"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 198
    const-string v8, "VivoAccessibilityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPreferenceToggled ENABLED_ACCESSIBILITY_SERVICES:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "accessibility_enabled"

    if-eqz v0, :cond_6

    const/4 v8, 0x1

    :goto_2
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    return-void

    .line 201
    :cond_6
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 137
    iget-object v2, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSwitch:Landroid/preference/VivoCheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 138
    iget-object v2, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSwitch:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    .line 139
    .local v0, "isChecked":Z
    const-string v2, "VivoAccessibilityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick preference:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isChecked:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/VivoAccessibilityService;->showDialog(I)V

    .line 148
    .end local v0    # "isChecked":Z
    :goto_0
    return v1

    .line 144
    .restart local v0    # "isChecked":Z
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/VivoAccessibilityService;->showDialog(I)V

    goto :goto_0

    .line 148
    .end local v0    # "isChecked":Z
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    .line 412
    const-string v8, "preference_key"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mPreferenceKey:Ljava/lang/String;

    .line 414
    const-string v8, "checked"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 415
    .local v0, "enabled":Z
    iget-object v8, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSwitch:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v8, v0}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 417
    const-string v8, "title"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mActivityTitle:Ljava/lang/String;

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 419
    const-string v8, "VivoAccessibilityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onProcessArguments mActivityTitle:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mPreferenceKey:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " enabled:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v8, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mVivoAccessibilityUtils:Lcom/vivo/settings/VivoAccessibilityUtils;

    invoke-virtual {v8}, Lcom/vivo/settings/VivoAccessibilityUtils;->getChangeableList()Ljava/util/ArrayList;

    move-result-object v1

    .line 422
    .local v1, "forbiddenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mPreferenceKey:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 423
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 424
    .local v3, "pgk":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 425
    iget-object v8, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSwitch:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 427
    if-eqz v0, :cond_0

    .line 428
    const-string v8, "VivoAccessibilityService"

    const-string v9, "onProcessArguments set to false"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-direct {p0, v11}, Lcom/android/settings/accessibility/VivoAccessibilityService;->handleConfirmServiceEnabled(Z)V

    goto :goto_0

    .line 437
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pgk":Ljava/lang/String;
    :cond_1
    const-string v8, "summary"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 438
    .local v7, "summary":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 440
    const-string v8, "settings_title"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 441
    .local v6, "settingsTitle":Ljava/lang/String;
    const-string v8, "settings_component_name"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, "settingsComponentName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 444
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 446
    .local v5, "settingsIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v5, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 447
    iput-object v6, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSettingsTitle:Ljava/lang/CharSequence;

    .line 448
    iput-object v5, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSettingsIntent:Landroid/content/Intent;

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSettingsPref:Landroid/preference/PreferenceScreen;

    .line 450
    iget-object v8, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v8, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 455
    .end local v5    # "settingsIntent":Landroid/content/Intent;
    :cond_2
    const-string v8, "component_name"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    iput-object v8, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mComponentName:Landroid/content/ComponentName;

    .line 456
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/accessibility/VivoAccessibilityService;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoAccessibilityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 125
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 126
    return-void
.end method
