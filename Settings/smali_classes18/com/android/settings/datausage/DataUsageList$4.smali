.class Lcom/android/settings/datausage/DataUsageList$4;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->access$000(Lcom/android/settings/datausage/DataUsageList;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    iget v1, v1, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/settings/datausage/OPDataUsageUtils;->getDataUsageSectionTimeMillByAccountDay(Landroid/content/Context;I)[J

    move-result-object v0

    new-instance v7, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageList;->access$100(Lcom/android/settings/datausage/DataUsageList;)Landroid/content/Context;

    move-result-object v2

    const/4 v1, 0x0

    aget-wide v3, v0, v1

    const/4 v1, 0x1

    aget-wide v5, v0, v1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageList;->access$300(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageList;->access$200(Lcom/android/settings/datausage/DataUsageList;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/net/NetworkCycleChartData;

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkCycleData(Lcom/android/settingslib/net/NetworkCycleChartData;)V

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageList;->access$400(Lcom/android/settings/datausage/DataUsageList;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
