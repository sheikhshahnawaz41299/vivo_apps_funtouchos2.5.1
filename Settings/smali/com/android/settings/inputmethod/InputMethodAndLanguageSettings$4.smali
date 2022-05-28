.class final Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$4;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "InputMethodAndLanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 660
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 663
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 665
    .local v14, "indexables":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    const v32, 0x7f0b03d4

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 668
    .local v24, "screenTitle":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_0

    .line 669
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$200(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 670
    .local v23, "localeName":Ljava/lang/String;
    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 671
    .local v13, "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v32, "phone_language"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 672
    const v32, 0x7f0b03d6

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 673
    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 674
    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 675
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 676
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    .end local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v23    # "localeName":Ljava/lang/String;
    :cond_0
    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 681
    .restart local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v32, "spellcheckers_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 682
    const v32, 0x7f0b0648

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 683
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 684
    const v32, 0x7f0b06cf

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 685
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v32

    if-eqz v32, :cond_1

    .line 689
    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 690
    .restart local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v32, "user_dict_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 691
    const v32, 0x7f0b03e5

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 692
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 693
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    :cond_1
    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 698
    .restart local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v32, "keyboard_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 699
    const v32, 0x7f0b03d5

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 700
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 701
    const v32, 0x7f0b06d9

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 702
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v12

    .line 706
    .local v12, "immValues":Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;
    invoke-virtual {v12}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 709
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 710
    .local v6, "currImeName":Ljava/lang/String;
    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 711
    .restart local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v32, "current_input_method"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 712
    const v32, 0x7f0b03ff

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 713
    iput-object v6, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 714
    iput-object v6, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 715
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 716
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    const-string v32, "input_method"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 722
    .local v18, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v12}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v19

    .line 723
    .local v19, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const-string v32, "InputMethodAndLanguageSettings"

    const-string v33, "SEARCH_INDEX_DATA_PROVIDER getInputMethodList"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    if-nez v19, :cond_3

    const/16 v17, 0x0

    .line 725
    .local v17, "inputMethodCount":I
    :goto_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v10, v0, :cond_5

    .line 726
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodInfo;

    .line 727
    .local v16, "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    const-string v32, "InputMethodAndLanguageSettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "SEARCH_INDEX_DATA_PROVIDER getInputMethodList i = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/16 v32, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v29

    .line 732
    .local v29, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v27

    .line 733
    .local v27, "subtypeCount":I
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    .line 734
    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/inputmethod/InputMethodSubtype;

    .line 735
    .local v26, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v32

    if-lez v32, :cond_2

    .line 736
    const/16 v32, 0x2c

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 738
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v28

    .line 741
    .local v28, "subtypeLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 733
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 724
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v10    # "i":I
    .end local v16    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v17    # "inputMethodCount":I
    .end local v20    # "j":I
    .end local v26    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v27    # "subtypeCount":I
    .end local v28    # "subtypeLabel":Ljava/lang/CharSequence;
    .end local v29    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_3
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v17

    goto/16 :goto_0

    .line 743
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    .restart local v10    # "i":I
    .restart local v16    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v17    # "inputMethodCount":I
    .restart local v20    # "j":I
    .restart local v27    # "subtypeCount":I
    .restart local v29    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 745
    .local v30, "summary":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v25

    .line 746
    .local v25, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    .local v5, "componentName":Landroid/content/ComponentName;
    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 750
    .restart local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 751
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 752
    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 753
    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 754
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 755
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 759
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v16    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v20    # "j":I
    .end local v25    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v27    # "subtypeCount":I
    .end local v29    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v30    # "summary":Ljava/lang/String;
    :cond_5
    const-string v32, "input"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/input/InputManager;

    .line 761
    .local v15, "inputManager":Landroid/hardware/input/InputManager;
    const/4 v9, 0x0

    .line 763
    .local v9, "hasHardKeyboards":Z
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v8

    .line 764
    .local v8, "devices":[I
    const/4 v10, 0x0

    :goto_3
    array-length v0, v8

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v10, v0, :cond_a

    .line 765
    aget v32, v8, v10

    invoke-static/range {v32 .. v32}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v7

    .line 766
    .local v7, "device":Landroid/view/InputDevice;
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v32

    if-nez v32, :cond_6

    invoke-virtual {v7}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v32

    if-nez v32, :cond_7

    .line 764
    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 770
    :cond_7
    const/4 v9, 0x1

    .line 772
    invoke-virtual {v7}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v11

    .line 773
    .local v11, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {v15, v11}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v22

    .line 775
    .local v22, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-eqz v22, :cond_8

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v21

    .line 779
    .local v21, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :goto_5
    if-eqz v21, :cond_9

    .line 780
    invoke-virtual/range {v21 .. v21}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v30

    .line 785
    .restart local v30    # "summary":Ljava/lang/String;
    :goto_6
    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 786
    .restart local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 787
    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 788
    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 789
    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 790
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 791
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 775
    .end local v21    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v30    # "summary":Ljava/lang/String;
    :cond_8
    const/16 v21, 0x0

    goto :goto_5

    .line 782
    .restart local v21    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_9
    const v32, 0x7f0b03e3

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "summary":Ljava/lang/String;
    goto :goto_6

    .line 794
    .end local v7    # "device":Landroid/view/InputDevice;
    .end local v11    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v21    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v22    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v30    # "summary":Ljava/lang/String;
    :cond_a
    if-eqz v9, :cond_b

    .line 796
    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 797
    .restart local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v32, "builtin_keyboard_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 798
    const v32, 0x7f0b0408

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 800
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 801
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    :cond_b
    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 806
    .restart local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v32, "voice_input_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 807
    const v32, 0x7f0b050a

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 808
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 809
    const v32, 0x7f0b06d0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 810
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    new-instance v31, Landroid/speech/tts/TtsEngines;

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 814
    .local v31, "ttsEngines":Landroid/speech/tts/TtsEngines;
    invoke-virtual/range {v31 .. v31}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_c

    .line 815
    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 816
    .restart local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v32, "tts_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 817
    const v32, 0x7f0b0511

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 818
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 819
    const v32, 0x7f0b06d1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 820
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    :cond_c
    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 825
    .restart local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v32, "pointer_settings_category"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 826
    const v32, 0x7f0b03db

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 827
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 828
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 831
    .restart local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v32, "pointer_speed"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 832
    const v32, 0x7f0b03dc

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 833
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 834
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$300()Z

    move-result v32

    if-eqz v32, :cond_d

    .line 838
    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 839
    .restart local v13    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v32, "vibrate_input_devices"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 840
    const v32, 0x7f0b03de

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 841
    const v32, 0x7f0b03df

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 842
    const v32, 0x7f0b03df

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 843
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 844
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    :cond_d
    return-object v14
.end method
