.class Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$4;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$4;->this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$4;->this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getEllipsizedLines()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$4;->this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/4 v2, 0x0

    if-gt v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$4;->this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    iget-object v3, v3, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$4;->this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$4;->this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$4;->this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
