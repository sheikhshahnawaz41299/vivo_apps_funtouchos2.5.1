.class public Lcom/android/settings/TrustedCredentialsSettings;
.super Lcom/vivo/settings/VivoFragment;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsSettings$9;,
        Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;,
        Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;,
        Lcom/android/settings/TrustedCredentialsSettings$CertHolder;,
        Lcom/android/settings/TrustedCredentialsSettings$AdapterData;,
        Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;,
        Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;,
        Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;,
        Lcom/android/settings/TrustedCredentialsSettings$Tab;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustedCredentialsSettings"

.field private static final USER_ACTION:Ljava/lang/String; = "com.android.settings.TRUSTED_CREDENTIALS_USER"


# instance fields
.field private mAliasLoaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settings/TrustedCredentialsSettings$Tab;",
            "Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

.field private final mKeyChainConnectionByProfileId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/security/KeyChain$KeyChainConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftListener:Landroid/view/View$OnClickListener;

.field private mRightListener:Landroid/view/View$OnClickListener;

.field private mRootView:Landroid/view/View;

.field private mSystemFrameLayout:Landroid/widget/FrameLayout;

.field private mTabSelector:Lcom/vivo/common/TabSelector;

.field private mTitleClickListener:Landroid/view/View$OnClickListener;

.field private mUserFrameLayout:Landroid/widget/FrameLayout;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;-><init>()V

    .line 192
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;

    .line 194
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    .line 198
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$1;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTitleClickListener:Landroid/view/View$OnClickListener;

    .line 269
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$2;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mLeftListener:Landroid/view/View$OnClickListener;

    .line 277
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$3;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mRightListener:Landroid/view/View$OnClickListener;

    .line 852
    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;
    .param p1, "x1"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    .param p2, "x2"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .param p3, "x3"    # Landroid/view/View;
    .param p4, "x4"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/TrustedCredentialsSettings;->getViewForCertificate(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/TrustedCredentialsSettings;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/TrustedCredentialsSettings;)Lcom/vivo/common/TabSelector;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabSelector:Lcom/vivo/common/TabSelector;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;)Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;
    .param p1, "x1"    # Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mSystemFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mUserFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;
    .param p1, "x1"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method private addCertChain(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 17
    .param p1, "certHolder"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 822
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 824
    .local v4, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/security/KeyChain$KeyChainConnection;

    .line 826
    .local v11, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v11}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v13

    .line 827
    .local v13, "service":Landroid/security/IKeyChainService;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3500(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/security/IKeyChainService;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    .line 828
    .local v6, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    .line 829
    .local v12, "n":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    .end local v4    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v5, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v12, :cond_0

    .line 831
    :try_start_1
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v7

    .line 832
    .local v7, "encodedCertificate":[B
    invoke-static {v7}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 833
    .local v3, "certificate":Ljava/security/cert/X509Certificate;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 830
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 835
    .end local v3    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v5    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v6    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "encodedCertificate":[B
    .end local v9    # "i":I
    .end local v11    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v12    # "n":I
    .end local v13    # "service":Landroid/security/IKeyChainService;
    .restart local v4    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v8

    .line 836
    .local v8, "ex":Landroid/os/RemoteException;
    :goto_1
    const-string v14, "TrustedCredentialsSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RemoteException while retrieving certificate chain for root "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3500(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 843
    .end local v8    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 840
    .end local v4    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v5    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v6    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "i":I
    .restart local v11    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v12    # "n":I
    .restart local v13    # "service":Landroid/security/IKeyChainService;
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 841
    .restart local v3    # "certificate":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/android/settings/TrustedCredentialsSettings;->addCertDetails(Ljava/security/cert/X509Certificate;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_3

    .end local v3    # "certificate":Ljava/security/cert/X509Certificate;
    :cond_1
    move-object v4, v5

    .line 843
    .end local v5    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v4    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    goto :goto_2

    .line 835
    .end local v4    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .restart local v5    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v4    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    goto :goto_1
.end method

.method private addCertDetails(Ljava/security/cert/X509Certificate;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 847
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/net/http/SslCertificate;

    invoke-direct {v0, p1}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 848
    .local v0, "sslCert":Landroid/net/http/SslCertificate;
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    return-void
.end method

.method private addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;)V
    .locals 5
    .param p1, "tab"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 322
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 323
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$700(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    .line 324
    .local v1, "lv":Landroid/widget/ExpandableListView;
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;

    invoke-direct {v0, p0, p1, v4}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$1;)V

    .line 326
    .local v0, "adapter":Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 327
    new-instance v2, Lcom/android/settings/TrustedCredentialsSettings$4;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/TrustedCredentialsSettings$4;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 346
    .end local v0    # "adapter":Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;
    .end local v1    # "lv":Landroid/widget/ExpandableListView;
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$600(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 337
    .local v1, "lv":Landroid/widget/ListView;
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-direct {v0, p0, p1, v4}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$1;)V

    .line 338
    .local v0, "adapter":Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 339
    new-instance v2, Lcom/android/settings/TrustedCredentialsSettings$5;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/TrustedCredentialsSettings$5;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private closeKeyChainConnections()V
    .locals 3

    .prologue
    .line 306
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 307
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 308
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_0
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 311
    return-void
.end method

.method private getViewForCertificate(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "certHolder"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    .param p2, "mTab"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 712
    if-nez p3, :cond_1

    .line 713
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 714
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0400de

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 715
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;-><init>(Lcom/android/settings/TrustedCredentialsSettings$1;)V

    .line 716
    .local v0, "holder":Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;
    const v2, 0x7f0e022c

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$2502(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 718
    const v2, 0x7f0e022d

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$2602(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 720
    const v2, 0x7f0e022e

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    invoke-static {v0, v2}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$2702(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/CompoundButton;)Landroid/widget/CompoundButton;

    .line 722
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 726
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$2500(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$2800(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$2600(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$2900(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$3000(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 729
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$2700(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/CompoundButton;

    move-result-object v4

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 730
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$2700(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/CompoundButton;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 732
    :cond_0
    return-object p3

    .line 724
    .end local v0    # "holder":Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;

    .restart local v0    # "holder":Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;
    goto :goto_0

    :cond_2
    move v2, v3

    .line 729
    goto :goto_1
.end method

.method private showCertDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 11
    .param p1, "certHolder"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    const/16 v9, 0x8

    .line 742
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 743
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v8, 0x10405d0

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 745
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .local v7, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 747
    .local v6, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v7, v6}, Lcom/android/settings/TrustedCredentialsSettings;->addCertChain(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 749
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v10, 0x1090008

    invoke-direct {v0, v8, v10, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 752
    .local v0, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v8, 0x1090009

    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 753
    new-instance v5, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 754
    .local v5, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 755
    new-instance v8, Lcom/android/settings/TrustedCredentialsSettings$6;

    invoke-direct {v8, p0, v7}, Lcom/android/settings/TrustedCredentialsSettings$6;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 767
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 768
    .local v3, "container":Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 769
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 771
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v8

    const/4 v10, 0x2

    if-lt v8, v10, :cond_1

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v5, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 772
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_2

    .line 773
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 774
    .local v2, "certificateView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 775
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 777
    :cond_0
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 772
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "certificateView":Landroid/view/View;
    .end local v4    # "i":I
    :cond_1
    move v8, v9

    .line 771
    goto :goto_0

    .line 779
    .restart local v4    # "i":I
    :cond_2
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 782
    const/high16 v8, 0x1040000

    new-instance v9, Lcom/android/settings/TrustedCredentialsSettings$7;

    invoke-direct {v9, p0}, Lcom/android/settings/TrustedCredentialsSettings$7;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 787
    iget-object v8, p0, Lcom/android/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v9, "no_config_credentials"

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 788
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$3100(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v8

    new-instance v9, Lcom/android/settings/TrustedCredentialsSettings$8;

    invoke-direct {v9, p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$8;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 815
    :cond_3
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 817
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->showBBKBackButton()V

    .line 289
    const v0, 0x7f0b053d

    invoke-virtual {p0, v0}, Lcom/android/settings/TrustedCredentialsSettings;->setTitle(I)V

    .line 290
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, "vivoBaseActivity":Lcom/vivo/app/VivoBaseActivity;
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 235
    .local v0, "activity":Landroid/app/Activity;
    instance-of v2, v0, Lcom/vivo/app/VivoBaseActivity;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 236
    check-cast v1, Lcom/vivo/app/VivoBaseActivity;

    .line 237
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/vivo/app/VivoBaseActivity;->setOnTitleClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 254
    const v0, 0x7f0400df

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mRootView:Landroid/view/View;

    .line 255
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f0e0230

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mSystemFrameLayout:Landroid/widget/FrameLayout;

    .line 256
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f0e0234

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mUserFrameLayout:Landroid/widget/FrameLayout;

    .line 257
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f0e022f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vivo/common/TabSelector;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabSelector:Lcom/vivo/common/TabSelector;

    .line 258
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabSelector:Lcom/vivo/common/TabSelector;

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0640

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/vivo/common/TabSelector;->setTabString(ILjava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabSelector:Lcom/vivo/common/TabSelector;

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0641

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/vivo/common/TabSelector;->setTabString(ILjava/lang/String;)V

    .line 260
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mSystemFrameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/TrustedCredentialsSettings;->addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;)V

    .line 261
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mUserFrameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/TrustedCredentialsSettings;->addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mSystemFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mUserFrameLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabSelector:Lcom/vivo/common/TabSelector;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mLeftListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3, v1}, Lcom/vivo/common/TabSelector;->setTabOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabSelector:Lcom/vivo/common/TabSelector;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mRightListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4, v1}, Lcom/vivo/common/TabSelector;->setTabOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 294
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;

    .line 295
    .local v0, "aliasLoader":Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;
    invoke-virtual {v0, v3}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->cancel(Z)Z

    goto :goto_0

    .line 297
    .end local v0    # "aliasLoader":Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    if-eqz v2, :cond_1

    .line 298
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    invoke-virtual {v2, v3}, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->cancel(Z)Z

    .line 299
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    .line 301
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings;->closeKeyChainConnections()V

    .line 302
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onDestroy()V

    .line 303
    return-void
.end method
