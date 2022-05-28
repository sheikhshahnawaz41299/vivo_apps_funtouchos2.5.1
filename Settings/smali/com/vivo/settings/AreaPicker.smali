.class public Lcom/vivo/settings/AreaPicker;
.super Lcom/vivo/settings/VivoListFragment;
.source "AreaPicker.java"

# interfaces
.implements Lcom/android/settings/SettingsActivity$OnKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/AreaPicker$LocaleInfo;
    }
.end annotation


# static fields
.field private static final ACTION_AREA_SETTINGS_CHANGED:Ljava/lang/String; = "android.settings.ACTION_AREA_SETTINGS_CHANGED"

.field private static final ACTION_THAI_CALENDAR_CHANGED:Ljava/lang/String; = "android.settings.ACTION_THAI_CALENDAR_CHANGED"

.field public static final RESULT_CODE_BACK:I = 0x15

.field public static final RESULT_CODE_FINISH:I = 0x16

.field public static final RESULT_CODE_NEXT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "AreaPicker"


# instance fields
.field private mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vivo/settings/SingleChoiseAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAreaEntity:Lcom/vivo/settings/AreaEntity;

.field private mCurAreaIndex:I

.field private mIsSetupWizard:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vivo/settings/VivoListFragment;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/settings/AreaPicker;->mCurAreaIndex:I

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/AreaPicker;->mIsSetupWizard:Z

    .line 57
    new-instance v0, Lcom/vivo/settings/AreaEntity;

    invoke-direct {v0}, Lcom/vivo/settings/AreaEntity;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/AreaPicker;->mAreaEntity:Lcom/vivo/settings/AreaEntity;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/AreaPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/AreaPicker;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/vivo/settings/AreaPicker;->mIsSetupWizard:Z

    return v0
.end method

.method static synthetic access$100(Lcom/vivo/settings/AreaPicker;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/AreaPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/vivo/settings/AreaPicker;->nextStep(Z)V

    return-void
.end method

.method private addTopView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040096

    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 197
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 198
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {}, Lcom/android/settings/AppFeature;->getPixelPerDip()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 199
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 201
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 202
    return-void
.end method

.method private finishActivityByResult(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    .line 323
    const-string v1, "AreaPicker"

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

    .line 324
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 325
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 327
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 329
    :cond_0
    return-void
.end method

.method private isThaiArea()Z
    .locals 2

    .prologue
    .line 266
    const-string v1, "persist.sys.vivo.product.cust"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "countside":Ljava/lang/String;
    const-string v1, "TH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private nextStep(Z)V
    .locals 5
    .param p1, "isNext"    # Z

    .prologue
    .line 302
    if-eqz p1, :cond_1

    const/16 v1, 0x14

    .line 303
    .local v1, "result":I
    :goto_0
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/vivo/settings/AreaPicker;->mCurAreaIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 306
    iget-object v2, p0, Lcom/vivo/settings/AreaPicker;->mAreaEntity:Lcom/vivo/settings/AreaEntity;

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/vivo/settings/AreaEntity;->getAreaValues(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "areasValues":[Ljava/lang/String;
    const-string v2, "AreaPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurAreaIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/settings/AreaPicker;->mCurAreaIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget v2, p0, Lcom/vivo/settings/AreaPicker;->mCurAreaIndex:I

    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 310
    iget v2, p0, Lcom/vivo/settings/AreaPicker;->mCurAreaIndex:I

    aget-object v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/vivo/settings/AreaPicker;->updateZone(Ljava/lang/String;)V

    .line 313
    .end local v0    # "areasValues":[Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v1}, Lcom/vivo/settings/AreaPicker;->finishActivityByResult(I)V

    .line 314
    return-void

    .line 302
    .end local v1    # "result":I
    :cond_1
    const/16 v1, 0x15

    goto :goto_0
.end method

.method private updateAndGetCurrentArea()I
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 152
    const/4 v4, -0x1

    .line 153
    .local v4, "int_cur_locale_postion":I
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 155
    .local v5, "resources":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/vivo/settings/AreaPicker;->mAreaEntity:Lcom/vivo/settings/AreaEntity;

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/vivo/settings/AreaEntity;->getAreaCodes(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "areaCode":[Ljava/lang/String;
    const-string v6, "persist.sys.vivo.product.cust"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "countside":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_1

    .line 158
    aget-object v6, v0, v3

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 159
    move v4, v3

    .line 157
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_1
    if-ne v4, v10, :cond_5

    .line 164
    const-string v6, "AreaPicker"

    const-string v7, "area not set!!!set to default"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "current_area"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "default_area":Ljava/lang/String;
    const/4 v3, 0x0

    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_3

    .line 168
    aget-object v6, v0, v3

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 169
    move v4, v3

    .line 167
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 172
    :cond_3
    if-eq v4, v10, :cond_4

    .line 173
    const-string v6, "persist.sys.vivo.product.cust"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .end local v2    # "default_area":Ljava/lang/String;
    :goto_2
    const-string v6, "AreaPicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "countside="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iput v4, p0, Lcom/vivo/settings/AreaPicker;->mCurAreaIndex:I

    .line 191
    return v4

    .line 176
    .restart local v2    # "default_area":Ljava/lang/String;
    :cond_4
    const-string v6, "AreaPicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid area!! ->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " set to default="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v4, 0x0

    .line 179
    const-string v6, "persist.sys.vivo.product.cust"

    aget-object v7, v0, v9

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "current_area"

    aget-object v8, v0, v9

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 185
    .end local v2    # "default_area":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "current_area"

    aget-object v8, v0, v4

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->showBBKBackButton()V

    .line 130
    new-instance v1, Lcom/vivo/settings/AreaPicker$1;

    invoke-direct {v1, p0}, Lcom/vivo/settings/AreaPicker$1;-><init>(Lcom/vivo/settings/AreaPicker;)V

    invoke-virtual {p0, v1}, Lcom/vivo/settings/AreaPicker;->onTitleLeftButtonPressed(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0845

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 142
    invoke-direct {p0}, Lcom/vivo/settings/AreaPicker;->addTopView()V

    .line 145
    iget-object v1, p0, Lcom/vivo/settings/AreaPicker;->mAreaEntity:Lcom/vivo/settings/AreaEntity;

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vivo/settings/AreaEntity;->getAreas(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "areas":[Ljava/lang/String;
    new-instance v1, Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0}, Lcom/vivo/settings/AreaPicker;->updateAndGetCurrentArea()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/vivo/settings/SingleChoiseAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/vivo/settings/AreaPicker;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    .line 148
    iget-object v1, p0, Lcom/vivo/settings/AreaPicker;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {p0, v1}, Lcom/vivo/settings/AreaPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const-string v0, "AreaPicker"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_is_sw"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/settings/AreaPicker;->mIsSetupWizard:Z

    .line 95
    iget-boolean v0, p0, Lcom/vivo/settings/AreaPicker;->mIsSetupWizard:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x480000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 274
    iget-boolean v3, p0, Lcom/vivo/settings/AreaPicker;->mIsSetupWizard:Z

    if-eqz v3, :cond_0

    .line 275
    const v3, 0x7f0400ee

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 277
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0e013a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 279
    .local v0, "layout_nextStep":Landroid/widget/RelativeLayout;
    const v3, 0x7f0e013b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 281
    .local v1, "tv_nextStep":Landroid/widget/TextView;
    const v3, 0x7f0b0847

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 282
    new-instance v3, Lcom/vivo/settings/AreaPicker$2;

    invoke-direct {v3, p0}, Lcom/vivo/settings/AreaPicker$2;-><init>(Lcom/vivo/settings/AreaPicker;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    .end local v0    # "layout_nextStep":Landroid/widget/RelativeLayout;
    .end local v1    # "tv_nextStep":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :goto_0
    return-object v2

    :cond_0
    const v3, 0x7f04006b

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 333
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 334
    iget-boolean v1, p0, Lcom/vivo/settings/AreaPicker;->mIsSetupWizard:Z

    if-eqz v1, :cond_0

    .line 335
    invoke-direct {p0, v0}, Lcom/vivo/settings/AreaPicker;->nextStep(Z)V

    .line 336
    const/4 v0, 0x1

    .line 339
    :cond_0
    return v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 206
    if-nez p3, :cond_0

    .line 235
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v3, p0, Lcom/vivo/settings/AreaPicker;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    if-eqz v3, :cond_1

    .line 210
    iget-object v3, p0, Lcom/vivo/settings/AreaPicker;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {v3, v4}, Lcom/vivo/settings/SingleChoiseAdapter;->setCheckPos(I)V

    .line 211
    iget-object v3, p0, Lcom/vivo/settings/AreaPicker;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {v3}, Lcom/vivo/settings/SingleChoiseAdapter;->notifyDataSetInvalidated()V

    .line 215
    :cond_1
    iget-object v3, p0, Lcom/vivo/settings/AreaPicker;->mAreaEntity:Lcom/vivo/settings/AreaEntity;

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/vivo/settings/AreaEntity;->getAreaCodes(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "areaCode":[Ljava/lang/String;
    const-string v3, "persist.sys.vivo.product.cust"

    add-int/lit8 v4, p3, -0x1

    aget-object v4, v0, v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_area"

    add-int/lit8 v5, p3, -0x1

    aget-object v5, v0, v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 222
    iget-object v3, p0, Lcom/vivo/settings/AreaPicker;->mAreaEntity:Lcom/vivo/settings/AreaEntity;

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/vivo/settings/AreaEntity;->getAreaValues(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "areasValues":[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.ACTION_AREA_SETTINGS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 226
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->updateThaiCalendar()V

    .line 227
    iget-boolean v3, p0, Lcom/vivo/settings/AreaPicker;->mIsSetupWizard:Z

    if-eqz v3, :cond_2

    .line 228
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/vivo/settings/AreaPicker;->nextStep(Z)V

    .line 232
    :goto_1
    const-string v3, "AreaPicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update zone to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p3, -0x1

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " areaCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p3, -0x1

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    add-int/lit8 v3, p3, -0x1

    aget-object v3, v1, v3

    invoke-virtual {p0, v3}, Lcom/vivo/settings/AreaPicker;->updateZone(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    :cond_2
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/vivo/settings/AreaPicker;->mIsSetupWizard:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnKeyEventListener(Lcom/android/settings/SettingsActivity$OnKeyEventListener;)V

    .line 123
    :cond_0
    invoke-super {p0}, Lcom/vivo/settings/VivoListFragment;->onPause()V

    .line 124
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0}, Lcom/vivo/settings/VivoListFragment;->onResume()V

    .line 105
    const-string v0, "AreaPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsSetupWizard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/settings/AreaPicker;->mIsSetupWizard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-boolean v0, p0, Lcom/vivo/settings/AreaPicker;->mIsSetupWizard:Z

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsActivity;->setOnKeyEventListener(Lcom/android/settings/SettingsActivity$OnKeyEventListener;)V

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->updateThaiCalendar()V

    .line 113
    :cond_1
    return-void
.end method

.method public updateThaiCalendar()V
    .locals 4

    .prologue
    .line 250
    invoke-static {}, Lcom/android/settings/AppFeature;->IsExport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    invoke-direct {p0}, Lcom/vivo/settings/AreaPicker;->isThaiArea()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ar_EG"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "use_thai_calendar"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_THAI_CALENDAR_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "thaiChanged":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 263
    .end local v0    # "thaiChanged":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 257
    :cond_2
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "use_thai_calendar"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 259
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_THAI_CALENDAR_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .restart local v0    # "thaiChanged":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public updateZone(Ljava/lang/String;)V
    .locals 3
    .param p1, "zoneid"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 244
    .local v0, "activity":Landroid/app/Activity;
    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 246
    .local v1, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v1, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 247
    return-void
.end method
