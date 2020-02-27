.class Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;
.super Ljava/lang/Object;
.source "BatterySaverUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/fuelgauge/BatterySaverUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Parameters"
.end annotation


# static fields
.field private static final AUTO_SAVER_SUGGESTION_END_NTH:I = 0x8

.field private static final AUTO_SAVER_SUGGESTION_START_NTH:I = 0x4


# instance fields
.field public final endNth:I

.field private final mContext:Landroid/content/Context;

.field public final startNth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_mode_suggestion_params"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/KeyValueListParser;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/util/KeyValueListParser;-><init>(C)V

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad constants: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BatterySaverUtils"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v2, 0x4

    const-string v3, "start_nth"

    invoke-virtual {v1, v3, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;->startNth:I

    const/16 v2, 0x8

    const-string v3, "end_nth"

    invoke-virtual {v1, v3, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;->endNth:I

    return-void
.end method
