.class final Lcom/android/systemui/volume/ZenModePanel$Prefs;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Prefs"
.end annotation


# static fields
.field private static final KEY_MINUTE_INDEX:Ljava/lang/String; = "minuteIndex"

.field private static final KEY_NONE_SELECTED:Ljava/lang/String; = "noneSelected"


# instance fields
.field private mMinuteIndex:I

.field private final mNoneDangerousThreshold:I

.field private mNoneSelected:I

.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 2

    .prologue
    .line 842
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 843
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->access$1900(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->mNoneDangerousThreshold:I

    .line 845
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 846
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->updateMinuteIndex()V

    .line 847
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->updateNoneSelected()V

    .line 848
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p2, "x1"    # Lcom/android/systemui/volume/ZenModePanel$1;

    .prologue
    .line 833
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel$Prefs;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    return-void
.end method

.method private clampIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 889
    const/4 v0, -0x1

    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$2100()[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampNoneSelected(I)I
    .locals 2
    .param p1, "noneSelected"    # I

    .prologue
    .line 898
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private prefs()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1900(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$1900(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private updateMinuteIndex()V
    .locals 3

    .prologue
    .line 884
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "minuteIndex"

    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$2000()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->clampIndex(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->mMinuteIndex:I

    .line 885
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$900(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Favorite minute index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->mMinuteIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_0
    return-void
.end method

.method private updateNoneSelected()V
    .locals 3

    .prologue
    .line 893
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "noneSelected"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->clampNoneSelected(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->mNoneSelected:I

    .line 894
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$900(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "None selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->mNoneSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_0
    return-void
.end method


# virtual methods
.method public getMinuteIndex()I
    .locals 1

    .prologue
    .line 862
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->mMinuteIndex:I

    return v0
.end method

.method public isNoneDangerous()Z
    .locals 2

    .prologue
    .line 851
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->mNoneSelected:I

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->mNoneDangerousThreshold:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 875
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->updateMinuteIndex()V

    .line 876
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->updateNoneSelected()V

    .line 877
    return-void
.end method

.method public setMinuteIndex(I)V
    .locals 3
    .param p1, "minuteIndex"    # I

    .prologue
    .line 866
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->clampIndex(I)I

    move-result p1

    .line 867
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->mMinuteIndex:I

    if-ne p1, v0, :cond_0

    .line 871
    :goto_0
    return-void

    .line 868
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->clampIndex(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->mMinuteIndex:I

    .line 869
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$800()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$900(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting favorite minute index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->mMinuteIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "minuteIndex"

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->mMinuteIndex:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public trackNoneSelected()V
    .locals 3

    .prologue
    .line 855
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->mNoneSelected:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->clampNoneSelected(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->mNoneSelected:I

    .line 856
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$900(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting none selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->mNoneSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->mNoneDangerousThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "noneSelected"

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$Prefs;->mNoneSelected:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 859
    return-void
.end method
