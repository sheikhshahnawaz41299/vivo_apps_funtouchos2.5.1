.class public Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final ACTIVITY_REQUEST_CONFIRM_CREDENTIAL_FOR_WEAKER_ENCRYPTION:I = 0x1

.field private static final DIALOG_ID_DISABLE_WARNING:I = 0x2

.field private static final DIALOG_ID_ENABLE_WARNING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ToggleAccessibilityServicePreferenceFragment"


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private mShownDialogId:I

.field private mVivoAccessibilityUtils:Lcom/vivo/settings/VivoAccessibilityUtils;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    .line 67
    new-instance v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->updateSwitchBarToggleSwitch()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private createConfirmCredentialReasonMessage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 352
    const v0, 0x7f0b047d

    .line 353
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 362
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 355
    :sswitch_0
    const v0, 0x7f0b047b

    .line 356
    goto :goto_0

    .line 359
    :sswitch_1
    const v0, 0x7f0b047c

    goto :goto_0

    .line 353
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
    .line 226
    const-string v17, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 229
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const v17, 0x7f04005b

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 232
    .local v9, "content":Landroid/view/View;
    const v17, 0x7f0e010a

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 234
    .local v11, "encryptionWarningView":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 235
    const v17, 0x7f0b0479

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 237
    .local v16, "text":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    .end local v16    # "text":Ljava/lang/String;
    :goto_0
    const v17, 0x7f0e010b

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 245
    .local v4, "capabilitiesHeaderView":Landroid/widget/TextView;
    const v17, 0x7f0b0478

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    const v17, 0x7f0e010c

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 251
    .local v5, "capabilitiesView":Landroid/widget/LinearLayout;
    const v17, 0x1090034

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 254
    .local v8, "capabilityView":Landroid/view/View;
    const v17, 0x10202db

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 256
    .local v13, "imageView":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x1080440

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    const v17, 0x10202df

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 261
    .local v15, "labelView":Landroid/widget/TextView;
    const v17, 0x7f0b047e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    const v17, 0x10202e0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 265
    .local v10, "descriptionView":Landroid/widget/TextView;
    const v17, 0x7f0b047f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilityInfos()Ljava/util/List;

    move-result-object v3

    .line 270
    .local v3, "capabilities":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;>;"
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 273
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .line 274
    .local v7, "capabilityCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v7, :cond_1

    .line 275
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    .line 277
    .local v6, "capability":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    const v17, 0x1090034

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 280
    const v17, 0x10202db

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "imageView":Landroid/widget/ImageView;
    check-cast v13, Landroid/widget/ImageView;

    .line 282
    .restart local v13    # "imageView":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x1080440

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    const v17, 0x10202df

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15    # "labelView":Landroid/widget/TextView;
    check-cast v15, Landroid/widget/TextView;

    .line 287
    .restart local v15    # "labelView":Landroid/widget/TextView;
    iget v0, v6, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->titleResId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    const v17, 0x10202e0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10    # "descriptionView":Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 291
    .restart local v10    # "descriptionView":Landroid/widget/TextView;
    iget v0, v6, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->descResId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 274
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 240
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

    .line 296
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
    .line 160
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v4

    .line 162
    .local v4, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 163
    .local v3, "serviceInfoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 164
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 165
    .local v2, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 166
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :goto_1
    return-object v2

    .line 163
    .restart local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
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
    .line 346
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/vivo/settings/widget/VivoToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/vivo/settings/widget/VivoToggleSwitch;->setCheckedInternal(Z)V

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 349
    return-void
.end method

.method private updateSwitchBarToggleSwitch()V
    .locals 4

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "settingValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 222
    .local v0, "checked":Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/vivo/settings/widget/VivoToggleSwitch;

    invoke-virtual {v2, v0}, Lcom/vivo/settings/widget/VivoToggleSwitch;->setCheckedInternal(Z)V

    .line 223
    return-void

    .line 220
    .end local v0    # "checked":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    .line 301
    if-ne p1, v1, :cond_0

    .line 302
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 303
    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    .line 307
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "require_password_to_decrypt"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 321
    packed-switch p2, :pswitch_data_0

    .line 341
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 323
    :pswitch_0
    iget v4, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v4, v0, :cond_1

    .line 324
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->createConfirmCredentialReasonMessage()Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "title":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->createIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 327
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 343
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "title":Ljava/lang/String;
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto :goto_0

    .line 333
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto :goto_0

    .line 337
    :pswitch_1
    iget v4, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 338
    .local v0, "checked":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto :goto_0

    .end local v0    # "checked":Z
    :cond_2
    move v0, v3

    .line 337
    goto :goto_1

    .line 321
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 84
    invoke-static {}, Lcom/vivo/settings/VivoAccessibilityUtils;->getInstance()Lcom/vivo/settings/VivoAccessibilityUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mVivoAccessibilityUtils:Lcom/vivo/settings/VivoAccessibilityUtils;

    .line 85
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

    .line 176
    packed-switch p1, :pswitch_data_0

    .line 212
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 178
    :pswitch_0
    iput v7, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 179
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    .line 180
    .local v1, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-object v0

    .line 183
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0477

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->createEnableDialogContentView(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;

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

    .line 191
    .local v0, "ad":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->create()V

    .line 192
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    goto :goto_0

    .line 196
    .end local v0    # "ad":Landroid/app/AlertDialog;
    .end local v1    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :pswitch_1
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 197
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    .line 198
    .restart local v1    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v1, :cond_0

    .line 201
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0480

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0481

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

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

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 368
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 369
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/vivo/settings/widget/VivoToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;-><init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/vivo/settings/widget/VivoToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/vivo/settings/widget/VivoToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 384
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 97
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onPause()V

    .line 98
    return-void
.end method

.method public onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 11
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 106
    .local v2, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    if-ne v2, v8, :cond_0

    .line 107
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 111
    .restart local v2    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 112
    .local v7, "toggledService":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 113
    .local v0, "accessibilityEnabled":Z
    if-eqz p2, :cond_2

    .line 114
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    const/4 v0, 0x1

    .line 131
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
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

    .line 137
    .local v1, "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const/16 v8, 0x3a

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 118
    .end local v1    # "enabledService":Landroid/content/ComponentName;
    .end local v3    # "enabledServicesBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 120
    sget-object v6, Lcom/android/settings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 121
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

    .line 122
    .restart local v1    # "enabledService":Landroid/content/ComponentName;
    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 124
    const/4 v0, 0x1

    .line 125
    goto :goto_0

    .line 141
    .end local v1    # "enabledService":Landroid/content/ComponentName;
    .end local v6    # "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v3    # "enabledServicesBuilder":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 142
    .local v4, "enabledServicesBuilderLength":I
    if-lez v4, :cond_5

    .line 143
    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 145
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enabled_accessibility_services"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    const-string v8, "ToggleAccessibilityServicePreferenceFragment"

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

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "accessibility_enabled"

    if-eqz v0, :cond_6

    const/4 v8, 0x1

    :goto_2
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    return-void

    .line 151
    :cond_6
    const/4 v8, 0x0

    goto :goto_2
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 388
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 390
    const-string v7, "settings_title"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 393
    .local v6, "settingsTitle":Ljava/lang/String;
    const-string v7, "checked"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 394
    const-string v7, "checked"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 395
    .local v0, "enabled":Z
    iget-object v7, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/vivo/settings/widget/VivoToggleSwitch;

    invoke-virtual {v7, v0}, Lcom/vivo/settings/widget/VivoToggleSwitch;->setCheckedInternal(Z)V

    .line 397
    const-string v7, "ToggleAccessibilityServicePreferenceFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onProcessArguments settingsTitle:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mPreferenceKey:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " enabled:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v7, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mVivoAccessibilityUtils:Lcom/vivo/settings/VivoAccessibilityUtils;

    invoke-virtual {v7}, Lcom/vivo/settings/VivoAccessibilityUtils;->getChangeableList()Ljava/util/ArrayList;

    move-result-object v1

    .line 400
    .local v1, "forbiddenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 401
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 402
    .local v3, "pgk":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 403
    iget-object v7, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/vivo/settings/widget/VivoToggleSwitch;

    invoke-virtual {v7, v10}, Lcom/vivo/settings/widget/VivoToggleSwitch;->setEnabled(Z)V

    .line 405
    if-eqz v0, :cond_0

    .line 406
    const-string v7, "ToggleAccessibilityServicePreferenceFragment"

    const-string v8, "onProcessArguments set to false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-direct {p0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto :goto_0

    .line 416
    .end local v0    # "enabled":Z
    .end local v1    # "forbiddenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pgk":Ljava/lang/String;
    :cond_1
    const-string v7, "settings_component_name"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, "settingsComponentName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 419
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 421
    .local v5, "settingsIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v5, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 422
    iput-object v6, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    .line 423
    iput-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 424
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->setHasOptionsMenu(Z)V

    .line 428
    .end local v5    # "settingsIntent":Landroid/content/Intent;
    :cond_2
    const-string v7, "component_name"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    iput-object v7, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 429
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 90
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->updateSwitchBarToggleSwitch()V

    .line 91
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    .line 92
    return-void
.end method
