.class public Lcom/android/settings/DBReadAsyncTask;
.super Landroid/os/AsyncTask;
.source "DBReadAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.qti.smq.Feedback.provider"

.field public static final KEY_VALUE:Ljava/lang/String; = "app_status"

.field public static final SMQ_KEY_VALUE:Ljava/lang/String; = "app_status"


# instance fields
.field final CONTENT_URI:Landroid/net/Uri;

.field final SNAP_CONTENT_URI:Landroid/net/Uri;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "content://com.qti.smq.Feedback.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DBReadAsyncTask;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/settings/DBReadAsyncTask;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "smq_settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DBReadAsyncTask;->SNAP_CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/settings/DBReadAsyncTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 9

    const-string v0, "key=?"

    const-string v1, "app_status"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/android/settings/DBReadAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DBReadAsyncTask;->SNAP_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "key=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DBReadAsyncTask;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const-string v5, "smqpreferences"

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v1, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    goto :goto_1

    :cond_1
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/DBReadAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
