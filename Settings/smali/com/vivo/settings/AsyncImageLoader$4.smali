.class Lcom/vivo/settings/AsyncImageLoader$4;
.super Landroid/os/Handler;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/AsyncImageLoader;->loadDrawable(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/preference/Preference;Lcom/vivo/settings/AsyncImageLoader$PrefCallBack;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/AsyncImageLoader;

.field final synthetic val$pref:Landroid/preference/Preference;

.field final synthetic val$prefCallback:Lcom/vivo/settings/AsyncImageLoader$PrefCallBack;


# direct methods
.method constructor <init>(Lcom/vivo/settings/AsyncImageLoader;Lcom/vivo/settings/AsyncImageLoader$PrefCallBack;Landroid/preference/Preference;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/vivo/settings/AsyncImageLoader$4;->this$0:Lcom/vivo/settings/AsyncImageLoader;

    iput-object p2, p0, Lcom/vivo/settings/AsyncImageLoader$4;->val$prefCallback:Lcom/vivo/settings/AsyncImageLoader$PrefCallBack;

    iput-object p3, p0, Lcom/vivo/settings/AsyncImageLoader$4;->val$pref:Landroid/preference/Preference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/vivo/settings/AsyncImageLoader$4;->val$prefCallback:Lcom/vivo/settings/AsyncImageLoader$PrefCallBack;

    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/vivo/settings/AsyncImageLoader$4;->val$prefCallback:Lcom/vivo/settings/AsyncImageLoader$PrefCallBack;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/vivo/settings/AsyncImageLoader$4;->val$pref:Landroid/preference/Preference;

    invoke-interface {v1, v0, v2}, Lcom/vivo/settings/AsyncImageLoader$PrefCallBack;->imageLoaded(Landroid/graphics/drawable/Drawable;Landroid/preference/Preference;)V

    .line 126
    :cond_0
    return-void
.end method
