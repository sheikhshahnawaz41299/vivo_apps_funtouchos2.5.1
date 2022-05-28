.class public Lcom/vivo/settings/ClearAllData;
.super Lcom/vivo/settings/VivoFragment;
.source "ClearAllData.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ERASE_EXTERNAL_EXTRA:Ljava/lang/String; = "erase_sd"

.field public static final ERASE_INTERNAL_EXTRA:Ljava/lang/String; = "erase_usb"

.field private static final KEYGUARD_REQUEST:I = 0x37

.field private static final TAG:Ljava/lang/String; = "ClearAllData"

.field public static final WIPE_OUT_EXTRA:Ljava/lang/String; = "wipe_out"


# instance fields
.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mFormat:Landroid/widget/RadioButton;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInterNalStorage:Landroid/widget/CheckBox;

.field private mInterNalStorageContainer:Landroid/view/View;

.field private mMarkupView:Lcom/vivo/common/MarkupView;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

.field private mWipeOut:Landroid/widget/RadioButton;

.field private mWipeOutContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/vivo/settings/ClearAllData;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 58
    iput-object v0, p0, Lcom/vivo/settings/ClearAllData;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    .line 60
    new-instance v0, Lcom/vivo/settings/ClearAllData$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/ClearAllData$1;-><init>(Lcom/vivo/settings/ClearAllData;)V

    iput-object v0, p0, Lcom/vivo/settings/ClearAllData;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/ClearAllData;)Lcom/vivo/settings/StorageManagerWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ClearAllData;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vivo/settings/ClearAllData;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/settings/ClearAllData;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ClearAllData;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vivo/settings/ClearAllData;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/settings/ClearAllData;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ClearAllData;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vivo/settings/ClearAllData;->mExternalStorageContainer:Landroid/view/View;

    return-object v0
.end method

.method private initAccounts(Landroid/view/View;)V
    .locals 25
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 204
    :cond_0
    const v22, 0x7f0e005d

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 205
    .local v7, "accountsLabel":Landroid/view/View;
    const v22, 0x7f0e005e

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 207
    .local v10, "contents":Landroid/widget/LinearLayout;
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/ClearAllData;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 211
    .local v11, "context":Landroid/content/Context;
    invoke-static {v11}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v20

    .line 212
    .local v20, "mgr":Landroid/accounts/AccountManager;
    invoke-virtual/range {v20 .. v20}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v6

    .line 213
    .local v6, "accounts":[Landroid/accounts/Account;
    array-length v4, v6

    .line 214
    .local v4, "N":I
    if-nez v4, :cond_1

    .line 215
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 216
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 220
    :cond_1
    const-string v22, "layout_inflater"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/LayoutInflater;

    .line 223
    .local v18, "inflater":Landroid/view/LayoutInflater;
    invoke-static {v11}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v13

    .line 225
    .local v13, "descs":[Landroid/accounts/AuthenticatorDescription;
    array-length v3, v13

    .line 227
    .local v3, "M":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v4, :cond_7

    .line 228
    aget-object v5, v6, v15

    .line 229
    .local v5, "account":Landroid/accounts/Account;
    const/4 v12, 0x0

    .line 230
    .local v12, "desc":Landroid/accounts/AuthenticatorDescription;
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_2
    move/from16 v0, v19

    if-ge v0, v3, :cond_2

    .line 231
    iget-object v0, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v23, v13, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 232
    aget-object v12, v13, v19

    .line 236
    :cond_2
    if-nez v12, :cond_4

    .line 237
    const-string v22, "ClearAllData"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "No descriptor for account name="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " type="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 230
    :cond_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 241
    :cond_4
    const/16 v16, 0x0

    .line 243
    .local v16, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget v0, v12, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 244
    iget-object v0, v12, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    .line 246
    .local v8, "authContext":Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    iget v0, v12, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 252
    .end local v8    # "authContext":Landroid/content/Context;
    :cond_5
    :goto_4
    const v22, 0x7f040026

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v10, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    .line 254
    .local v21, "view":Landroid/view/View;
    const v22, 0x7f0e003d

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 255
    .local v9, "child":Landroid/widget/TextView;
    iget-object v0, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    const v22, 0x7f0e0041

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 257
    .local v17, "iconView":Landroid/widget/ImageView;
    if-eqz v16, :cond_6

    .line 258
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 260
    :cond_6
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 248
    .end local v9    # "child":Landroid/widget/TextView;
    .end local v17    # "iconView":Landroid/widget/ImageView;
    .end local v21    # "view":Landroid/view/View;
    :catch_0
    move-exception v14

    .line 249
    .local v14, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v22, "ClearAllData"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "No icon for account type "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v12, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 263
    .end local v5    # "account":Landroid/accounts/Account;
    .end local v12    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v14    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v19    # "j":I
    :cond_7
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 264
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private initStorageManager()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vivo/settings/ClearAllData;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/vivo/settings/ClearAllData;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/vivo/settings/ClearAllData;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 81
    iget-object v0, p0, Lcom/vivo/settings/ClearAllData;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {v0}, Lcom/vivo/settings/StorageManagerWrapper;->getInstance(Ljava/lang/Object;)Lcom/vivo/settings/StorageManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/ClearAllData;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    .line 83
    :cond_0
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 14
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/vivo/settings/ClearAllData;->initStorageManager()V

    .line 114
    const v11, 0x7f0e0068

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/vivo/common/MarkupView;

    iput-object v11, p0, Lcom/vivo/settings/ClearAllData;->mMarkupView:Lcom/vivo/common/MarkupView;

    .line 116
    iget-object v11, p0, Lcom/vivo/settings/ClearAllData;->mMarkupView:Lcom/vivo/common/MarkupView;

    invoke-virtual {v11}, Lcom/vivo/common/MarkupView;->initDeleteLayout()V

    .line 117
    iget-object v11, p0, Lcom/vivo/settings/ClearAllData;->mMarkupView:Lcom/vivo/common/MarkupView;

    invoke-virtual {v11}, Lcom/vivo/common/MarkupView;->getLeftButton()Landroid/widget/Button;

    move-result-object v11

    iput-object v11, p0, Lcom/vivo/settings/ClearAllData;->mInitiateButton:Landroid/widget/Button;

    .line 118
    iget-object v11, p0, Lcom/vivo/settings/ClearAllData;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v11, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v11, p0, Lcom/vivo/settings/ClearAllData;->mInitiateButton:Landroid/widget/Button;

    const v12, 0x7f0b02e5

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(I)V

    .line 120
    const v11, 0x7f0e0063

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/vivo/settings/ClearAllData;->mWipeOutContainer:Landroid/view/View;

    .line 122
    const v11, 0x7f0e0065

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioButton;

    iput-object v11, p0, Lcom/vivo/settings/ClearAllData;->mWipeOut:Landroid/widget/RadioButton;

    .line 124
    const v11, 0x7f0e0064

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioButton;

    iput-object v11, p0, Lcom/vivo/settings/ClearAllData;->mFormat:Landroid/widget/RadioButton;

    .line 125
    iget-object v11, p0, Lcom/vivo/settings/ClearAllData;->mFormat:Landroid/widget/RadioButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 127
    iget-object v11, p0, Lcom/vivo/settings/ClearAllData;->mWipeOutContainer:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 129
    const v11, 0x7f0e0066

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/vivo/settings/ClearAllData;->mExternalStorageContainer:Landroid/view/View;

    .line 131
    const v11, 0x7f0e0060

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/vivo/settings/ClearAllData;->mInterNalStorageContainer:Landroid/view/View;

    .line 134
    iget-object v11, p0, Lcom/vivo/settings/ClearAllData;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v11}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 135
    .local v3, "internalStorageVolume":Landroid/os/storage/StorageVolume;
    if-nez v3, :cond_7

    const/4 v8, 0x0

    .line 137
    .local v8, "isUDiskEmulated":Z
    :goto_1
    iget-object v11, p0, Lcom/vivo/settings/ClearAllData;->mInterNalStorageContainer:Landroid/view/View;

    const v12, 0x7f0e0062

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 138
    .local v0, "eraseInternalText":Landroid/widget/TextView;
    if-eqz v8, :cond_8

    .line 139
    const v11, 0x7f0b080e

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    .line 145
    :goto_2
    const v11, 0x7f0e0067

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    iput-object v11, p0, Lcom/vivo/settings/ClearAllData;->mExternalStorage:Landroid/widget/CheckBox;

    .line 147
    const v11, 0x7f0e0061

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    iput-object v11, p0, Lcom/vivo/settings/ClearAllData;->mInterNalStorage:Landroid/widget/CheckBox;

    .line 149
    iget-object v11, p0, Lcom/vivo/settings/ClearAllData;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v11}, Lcom/vivo/settings/StorageManagerWrapper;->getExternalStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v10

    .line 150
    .local v10, "svEx":Landroid/os/storage/StorageVolume;
    if-nez v10, :cond_9

    const/4 v5, 0x0

    .line 151
    .local v5, "isExtStorageEmulated":Z
    :goto_3
    iget-object v11, p0, Lcom/vivo/settings/ClearAllData;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    iget-object v12, p0, Lcom/vivo/settings/ClearAllData;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v12}, Lcom/vivo/settings/StorageManagerWrapper;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/vivo/settings/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 152
    .local v9, "sdState":Ljava/lang/String;
    const-string v11, "ClearAllData"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sd state is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " isExtStorageEmulated:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v11, "removed"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "bad_removal"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_1
    const/4 v7, 0x1

    .line 154
    .local v7, "isSDRemoved":Z
    :goto_4
    iget-object v11, p0, Lcom/vivo/settings/ClearAllData;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    iget-object v12, p0, Lcom/vivo/settings/ClearAllData;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v12}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/vivo/settings/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "internalVolumeState":Ljava/lang/String;
    const-string v11, "removed"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "bad_removal"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    :cond_2
    const/4 v6, 0x1

    .line 157
    .local v6, "isInternalRemoved":Z
    :goto_5
    const v11, 0x7f0e005f

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 159
    .local v2, "externalOption":Landroid/widget/TextView;
    iget-object v11, p0, Lcom/vivo/settings/ClearAllData;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v11}, Lcom/vivo/settings/StorageManagerWrapper;->isSupportTF()Z

    move-result v11

    if-nez v11, :cond_d

    .line 160
    if-eqz v8, :cond_c

    .line 161
    const v11, 0x7f0b0812

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(I)V

    .line 169
    :cond_3
    :goto_6
    if-nez v5, :cond_5

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-direct {p0}, Lcom/vivo/settings/ClearAllData;->isExtStorageEncrypted()Z

    move-result v11

    if-nez v11, :cond_5

    :cond_4
    if-nez v7, :cond_5

    iget-object v11, p0, Lcom/vivo/settings/ClearAllData;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v11}, Lcom/vivo/settings/StorageManagerWrapper;->isSupportTF()Z

    move-result v11

    if-nez v11, :cond_f

    .line 172
    :cond_5
    iget-object v11, p0, Lcom/vivo/settings/ClearAllData;->mExternalStorageContainer:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 174
    if-eqz v6, :cond_6

    .line 175
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    :cond_6
    const v11, 0x7f0e005c

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 180
    .local v1, "externalAlsoErased":Landroid/view/View;
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v12, p0, Lcom/vivo/settings/ClearAllData;->mExternalStorage:Landroid/widget/CheckBox;

    if-nez v5, :cond_e

    if-nez v7, :cond_e

    iget-object v11, p0, Lcom/vivo/settings/ClearAllData;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v11}, Lcom/vivo/settings/StorageManagerWrapper;->isSupportTF()Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x1

    :goto_7
    invoke-virtual {v12, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 194
    .end local v1    # "externalAlsoErased":Landroid/view/View;
    :goto_8
    if-eqz v6, :cond_10

    .line 195
    iget-object v11, p0, Lcom/vivo/settings/ClearAllData;->mInterNalStorageContainer:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 135
    .end local v0    # "eraseInternalText":Landroid/widget/TextView;
    .end local v2    # "externalOption":Landroid/widget/TextView;
    .end local v4    # "internalVolumeState":Ljava/lang/String;
    .end local v5    # "isExtStorageEmulated":Z
    .end local v6    # "isInternalRemoved":Z
    .end local v7    # "isSDRemoved":Z
    .end local v8    # "isUDiskEmulated":Z
    .end local v9    # "sdState":Ljava/lang/String;
    .end local v10    # "svEx":Landroid/os/storage/StorageVolume;
    :cond_7
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v8

    goto/16 :goto_1

    .line 141
    .restart local v0    # "eraseInternalText":Landroid/widget/TextView;
    .restart local v8    # "isUDiskEmulated":Z
    :cond_8
    const v11, 0x7f0b095d

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    .line 142
    iget-object v11, p0, Lcom/vivo/settings/ClearAllData;->mWipeOut:Landroid/widget/RadioButton;

    const v12, 0x7f0b0993

    invoke-virtual {v11, v12}, Landroid/widget/RadioButton;->setText(I)V

    goto/16 :goto_2

    .line 150
    .restart local v10    # "svEx":Landroid/os/storage/StorageVolume;
    :cond_9
    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v5

    goto/16 :goto_3

    .line 153
    .restart local v5    # "isExtStorageEmulated":Z
    .restart local v9    # "sdState":Ljava/lang/String;
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 155
    .restart local v4    # "internalVolumeState":Ljava/lang/String;
    .restart local v7    # "isSDRemoved":Z
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 163
    .restart local v2    # "externalOption":Landroid/widget/TextView;
    .restart local v6    # "isInternalRemoved":Z
    :cond_c
    const v11, 0x7f0b086b

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    .line 165
    :cond_d
    if-nez v8, :cond_3

    .line 166
    const v11, 0x7f0b09a3

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    .line 188
    .restart local v1    # "externalAlsoErased":Landroid/view/View;
    :cond_e
    const/4 v11, 0x0

    goto :goto_7

    .line 191
    .end local v1    # "externalAlsoErased":Landroid/view/View;
    :cond_f
    iget-object v11, p0, Lcom/vivo/settings/ClearAllData;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    .line 197
    :cond_10
    iget-object v11, p0, Lcom/vivo/settings/ClearAllData;->mInterNalStorageContainer:Landroid/view/View;

    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 268
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "state":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/vivo/settings/ClearAllData;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 304
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/vivo/settings/ClearAllData;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0b02e8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0b02e9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showFinalConfirmation()V
    .locals 8

    .prologue
    .line 286
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 287
    .local v2, "extras":Landroid/os/Bundle;
    const-string v1, "erase_sd"

    iget-object v3, p0, Lcom/vivo/settings/ClearAllData;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    const-string v1, "erase_usb"

    iget-object v3, p0, Lcom/vivo/settings/ClearAllData;->mInterNalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 289
    const-string v1, "wipe_out"

    iget-object v3, p0, Lcom/vivo/settings/ClearAllData;->mWipeOut:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    invoke-virtual {p0}, Lcom/vivo/settings/ClearAllData;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 291
    .local v7, "activity":Landroid/app/Activity;
    instance-of v1, v7, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    move-object v0, v7

    .line 292
    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 293
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b07d4

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 300
    .end local v0    # "sa":Lcom/android/settings/SettingsActivity;
    :goto_0
    return-void

    .line 295
    :cond_0
    const-string v1, "ClearAllData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", requestCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 312
    const/16 v0, 0x37

    if-ne p1, v0, :cond_0

    .line 313
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/vivo/settings/ClearAllData;->showFinalConfirmation()V

    .line 317
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/vivo/settings/ClearAllData;->mInitiateButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 275
    invoke-virtual {p0}, Lcom/vivo/settings/ClearAllData;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/settings/ClearAllDataConfirm;->isFindPhoneNeeded(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/vivo/settings/ClearAllData;->runKeyguardConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/vivo/settings/ClearAllData;->showFinalConfirmation()V

    .line 283
    :cond_1
    :goto_0
    return-void

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/vivo/settings/ClearAllData;->mInterNalStorageContainer:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/vivo/settings/ClearAllData;->mInterNalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/vivo/settings/ClearAllData;->mExternalStorageContainer:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/vivo/settings/ClearAllData;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    const-string v1, "ClearAllData"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const v1, 0x7f040025

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "contentView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/vivo/settings/ClearAllData;->initViews(Landroid/view/View;)V

    .line 106
    invoke-direct {p0, v0}, Lcom/vivo/settings/ClearAllData;->initAccounts(Landroid/view/View;)V

    .line 107
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vivo/settings/ClearAllData;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/vivo/settings/ClearAllData;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/vivo/settings/ClearAllData;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 97
    :cond_0
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onPause()V

    .line 98
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onResume()V

    .line 88
    iget-object v0, p0, Lcom/vivo/settings/ClearAllData;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/vivo/settings/ClearAllData;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/vivo/settings/ClearAllData;->showBBKBackButton()V

    .line 90
    return-void
.end method
