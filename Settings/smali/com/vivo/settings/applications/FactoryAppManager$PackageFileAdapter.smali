.class Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FactoryAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/applications/FactoryAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageFileAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mCachedImage:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mFileSizePrefix:Ljava/lang/String;

.field private mFileVersionPrefix:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/vivo/settings/applications/FactoryAppManager;


# direct methods
.method public constructor <init>(Lcom/vivo/settings/applications/FactoryAppManager;Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;>;"
    const/4 v0, 0x0

    .line 288
    iput-object p1, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    .line 289
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 280
    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->mFileSizePrefix:Ljava/lang/String;

    .line 281
    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->mFileVersionPrefix:Ljava/lang/String;

    .line 283
    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->mContext:Landroid/content/Context;

    .line 285
    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 286
    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->mCachedImage:Landroid/graphics/drawable/Drawable;

    .line 290
    iput-object p2, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->mContext:Landroid/content/Context;

    .line 291
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 292
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0826

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->mFileSizePrefix:Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0827

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->mFileVersionPrefix:Ljava/lang/String;

    .line 294
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 298
    invoke-virtual {p0, p1}, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;

    .line 299
    .local v0, "fileInfo":Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;
    const/4 v2, 0x0

    .line 300
    .local v2, "viewHolder":Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 301
    new-instance v2, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;

    .end local v2    # "viewHolder":Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;
    invoke-direct {v2, p0, v4}, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;-><init>(Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;Lcom/vivo/settings/applications/FactoryAppManager$1;)V

    .line 302
    .restart local v2    # "viewHolder":Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040088

    const/4 v6, 0x0

    invoke-virtual {v3, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 303
    const v3, 0x7f0e016d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 304
    const v3, 0x7f0e016e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;->mFileNameView:Landroid/widget/TextView;

    .line 305
    const v3, 0x7f0e016f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;->mFileVersion:Landroid/widget/TextView;

    .line 306
    const v3, 0x7f0e0170

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;->mFileSizeView:Landroid/widget/TextView;

    .line 307
    const v3, 0x7f0e0171

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;->mInstallationIconView:Landroid/widget/ImageView;

    .line 308
    const v3, 0x7f0e0172

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;->mInstallationInstructionView:Landroid/widget/TextView;

    .line 309
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 313
    :goto_0
    const-string v3, "benleo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileInfo.mApkInfo.className +"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->mApkInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$1000(Lcom/vivo/settings/applications/FactoryAppManager;)Lcom/vivo/settings/AsyncImageLoader;

    move-result-object v5

    iget-object v6, v0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->mApkInfo:Landroid/content/pm/ApplicationInfo;

    const-string v3, "com.android.bbk.lockscreen3"

    iget-object v7, v0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->mApkInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v4

    :goto_1
    iget-object v4, v2, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    new-instance v7, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$1;

    invoke-direct {v7, p0}, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$1;-><init>(Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;)V

    invoke-virtual {v5, v6, v3, v4, v7}, Lcom/vivo/settings/AsyncImageLoader;->loadDrawable(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/widget/ImageView;Lcom/vivo/settings/AsyncImageLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->mCachedImage:Landroid/graphics/drawable/Drawable;

    .line 322
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->mCachedImage:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 323
    iget-object v3, v2, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v4}, Lcom/vivo/settings/applications/FactoryAppManager;->access$1000(Lcom/vivo/settings/applications/FactoryAppManager;)Lcom/vivo/settings/AsyncImageLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/settings/AsyncImageLoader;->getDefaultItemIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    :goto_2
    iget-object v3, v2, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;->mFileNameView:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v3, v2, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;->mFileVersion:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->mFileVersionPrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->mFileVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->mContext:Landroid/content/Context;

    iget-wide v4, v0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->mFileSize:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "memorySizeStr":Ljava/lang/String;
    iget-object v3, v2, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;->mFileSizeView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    iget-object v3, v2, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;->mFileSizeView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-boolean v3, v0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->isInstalled:Z

    if-eqz v3, :cond_3

    .line 333
    iget-object v3, v2, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;->mInstallationIconView:Landroid/widget/ImageView;

    const v4, 0x7f020036

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    iget-object v3, v2, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;->mInstallationInstructionView:Landroid/widget/TextView;

    const v4, 0x7f0b084b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 344
    :goto_3
    return-object p2

    .line 311
    .end local v1    # "memorySizeStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "viewHolder":Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;
    check-cast v2, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;
    goto/16 :goto_0

    .line 314
    :cond_1
    iget-object v3, v0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->mFilePath:Ljava/lang/String;

    goto :goto_1

    .line 325
    :cond_2
    iget-object v3, v2, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->mCachedImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 338
    .restart local v1    # "memorySizeStr":Ljava/lang/String;
    :cond_3
    iget-object v3, v2, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;->mInstallationIconView:Landroid/widget/ImageView;

    const v4, 0x7f020037

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 340
    iget-object v3, v2, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;->mInstallationInstructionView:Landroid/widget/TextView;

    const v4, 0x7f0b0925

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3
.end method
