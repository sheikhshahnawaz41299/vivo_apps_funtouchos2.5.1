.class Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager$1;
.super Ljava/lang/Object;
.source "SwitcherPrefsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->generatePrefsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 121
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 122
    .local v2, "showEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 123
    const-string v3, "show_switcher_count"

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 124
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 131
    .local v0, "hideEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 132
    const-string v3, "hide_switcher_count"

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 133
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 136
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    return-void
.end method
