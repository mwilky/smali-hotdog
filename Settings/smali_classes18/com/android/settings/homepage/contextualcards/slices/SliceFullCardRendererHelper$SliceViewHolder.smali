.class Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SliceFullCardRendererHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SliceViewHolder"
.end annotation


# instance fields
.field public final sliceView:Landroidx/slice/widget/SliceView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0637

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceView;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    return-void
.end method
