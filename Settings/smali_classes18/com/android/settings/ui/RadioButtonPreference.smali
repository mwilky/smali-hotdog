.class public Lcom/android/settings/ui/RadioButtonPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/ui/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0400a2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/ui/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ui/RadioButtonPreference;->mListener:Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;

    const v0, 0x7f0d027e

    invoke-virtual {p0, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ui/RadioButtonPreference;->mListener:Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ui/RadioButtonPreference;->mListener:Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;

    return-void
.end method
