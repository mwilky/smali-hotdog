.class Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings$AdapterData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Landroid/util/SparseArray<",
        "Ljava/util/List<",
        "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;


# direct methods
.method public constructor <init>(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)V
    .locals 6

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iget-object v0, p1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$2300(Lcom/android/settings/TrustedCredentialsSettings;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isUserTabAndTrustAllCertMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$3000(Lcom/android/settings/TrustedCredentialsSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldSkipProfile(Landroid/os/UserHandle;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private showTrustAllCaDialogIfNeeded()V
    .locals 7

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->isUserTabAndTrustAllCertMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$3100(Lcom/android/settings/TrustedCredentialsSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v6, v6, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v6}, Lcom/android/settings/TrustedCredentialsSettings;->access$3100(Lcom/android/settings/TrustedCredentialsSettings;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/app/admin/DevicePolicyManager;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no cert is pending approval for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v4, v4, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v4}, Lcom/android/settings/TrustedCredentialsSettings;->access$3100(Lcom/android/settings/TrustedCredentialsSettings;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TrustedCredentialsSettings"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v3, v3, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v3, v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$3300(Lcom/android/settings/TrustedCredentialsSettings;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/SparseArray;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v0

    :try_start_0
    iget-object v0, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$2600(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5, v4}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-direct {v1, v9}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->shouldSkipProfile(Landroid/os/UserHandle;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_1

    :cond_0
    iget-object v11, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContext:Landroid/content/Context;

    invoke-static {v11, v9}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v11

    iget-object v12, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v12, v12, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v12}, Lcom/android/settings/TrustedCredentialsSettings;->access$2600(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v11}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v12

    iget-object v13, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v13}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v13

    invoke-static {v13, v12}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$2700(Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->isCancelled()Z

    move-result v14

    if-eqz v14, :cond_1

    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    monitor-exit v3

    return-object v14

    :cond_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    add-int/2addr v6, v14

    invoke-virtual {v5, v10, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v4, :cond_7

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    move-object v15, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    monitor-exit v3

    return-object v11

    :cond_3
    iget-object v11, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v11, v11, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v11}, Lcom/android/settings/TrustedCredentialsSettings;->access$2600(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/security/KeyChain$KeyChainConnection;

    move-object/from16 v19, v11

    invoke-direct {v1, v9}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->shouldSkipProfile(Landroid/os/UserHandle;)Z

    move-result v11

    if-nez v11, :cond_6

    if-eqz v15, :cond_6

    if-nez v19, :cond_4

    move-object/from16 v22, v0

    move/from16 v23, v4

    move-object/from16 v24, v5

    move/from16 v28, v8

    move-object/from16 v26, v9

    move-object v5, v15

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_4
    invoke-virtual/range {v19 .. v19}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v11

    move-object v13, v11

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v12, v11

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    const/16 v16, 0x0

    move/from16 v20, v7

    move/from16 v7, v16

    :goto_3
    if-ge v7, v11, :cond_5

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v21, v16

    move-object/from16 v22, v0

    const/4 v0, 0x1

    move/from16 v23, v4

    move-object/from16 v4, v21

    invoke-interface {v13, v4, v0}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v16

    move-object/from16 v21, v16

    invoke-static/range {v21 .. v21}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v16

    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    iget-object v14, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v14}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$2800(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    move-result-object v14

    move-object/from16 v24, v5

    iget-object v5, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v5}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v5

    const/16 v18, 0x0

    move/from16 v25, v11

    move-object v11, v0

    move-object/from16 v26, v9

    move-object v9, v12

    move-object v12, v13

    move-object/from16 v27, v13

    move-object v13, v14

    move/from16 v28, v8

    const/4 v8, 0x0

    move-object v14, v5

    move-object v5, v15

    move-object v15, v4

    move/from16 v17, v10

    invoke-direct/range {v11 .. v18}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;-><init>(Landroid/security/IKeyChainService;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;ILcom/android/settings/TrustedCredentialsSettings$1;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v0, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v0, v12

    invoke-virtual {v1, v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->publishProgress([Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    move-object v15, v5

    move-object v12, v9

    move-object/from16 v0, v22

    move/from16 v4, v23

    move-object/from16 v5, v24

    move/from16 v11, v25

    move-object/from16 v9, v26

    move-object/from16 v13, v27

    move/from16 v8, v28

    goto :goto_3

    :cond_5
    move-object/from16 v22, v0

    move/from16 v23, v4

    move-object/from16 v24, v5

    move/from16 v28, v8

    move-object/from16 v26, v9

    move/from16 v25, v11

    move-object v9, v12

    move-object/from16 v27, v13

    move-object v5, v15

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v2, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v7, v20

    goto :goto_5

    :cond_6
    move-object/from16 v22, v0

    move/from16 v23, v4

    move-object/from16 v24, v5

    move/from16 v28, v8

    move-object/from16 v26, v9

    move-object v5, v15

    const/4 v8, 0x0

    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v10, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    nop

    :goto_5
    add-int/lit8 v8, v28, 0x1

    move-object/from16 v0, v22

    move/from16 v4, v23

    move-object/from16 v5, v24

    goto/16 :goto_2

    :cond_7
    move-object/from16 v22, v0

    move/from16 v23, v4

    move-object/from16 v24, v5

    move/from16 v28, v8

    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v3, "TrustedCredentialsSettings"

    const-string v4, "InterruptedException while loading aliases."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    return-object v3

    :catch_1
    move-exception v0

    const-string v3, "TrustedCredentialsSettings"

    const-string v4, "Remote exception while loading aliases."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->doInBackground([Ljava/lang/Void;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v2}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$2800(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$2300(Lcom/android/settings/TrustedCredentialsSettings;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->showTrustAllCaDialogIfNeeded()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->onPostExecute(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$2400(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$2500(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$500(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContentView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
