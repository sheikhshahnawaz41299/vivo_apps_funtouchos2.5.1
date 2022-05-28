.class Lcom/android/systemui/statusbar/policy/UserInfoController$3;
.super Landroid/os/AsyncTask;
.source "UserInfoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/UserInfoController;->queryForUserInformation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field final synthetic val$avatarSize:I

.field final synthetic val$isGuest:Z

.field final synthetic val$userId:I

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserInfoController;Ljava/lang/String;IIZ)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$userName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$userId:I

    iput p4, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$avatarSize:I

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$isGuest:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 145
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserInfoController;->access$100(Lcom/android/systemui/statusbar/policy/UserInfoController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 149
    .local v3, "um":Landroid/os/UserManager;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$userName:Ljava/lang/String;

    .line 150
    .local v1, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 151
    .local v0, "avatar":Landroid/graphics/drawable/Drawable;
    iget v4, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$userId:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 152
    .local v2, "rawAvatar":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 153
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "avatar":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserInfoController;->access$100(Lcom/android/systemui/statusbar/policy/UserInfoController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$avatarSize:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$avatarSize:I

    invoke-static {v2, v5, v6}, Lcom/android/systemui/BitmapHelper;->createCircularClip(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 182
    .restart local v0    # "avatar":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 156
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$isGuest:Z

    if-eqz v4, :cond_1

    const/16 v4, -0x2710

    :goto_1
    invoke-static {v4, v5}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 158
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/policy/UserInfoController;->access$002(Lcom/android/systemui/statusbar/policy/UserInfoController;Z)Z

    goto :goto_0

    .line 156
    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$userId:I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 142
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->access$202(Lcom/android/systemui/statusbar/policy/UserInfoController;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->access$302(Lcom/android/systemui/statusbar/policy/UserInfoController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserInfoController;->access$402(Lcom/android/systemui/statusbar/policy/UserInfoController;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->access$500(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    .line 191
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 142
    check-cast p1, Landroid/util/Pair;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
