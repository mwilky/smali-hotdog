.class public Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsButtonsController.java"


# static fields
.field private static final KEY_ACTION_BUTTONS:Ljava/lang/String; = "action_buttons"


# instance fields
.field private mActionButtons:Lcom/android/settingslib/widget/ActionButtonsPreference;

.field private mConnectButtonInitialized:Z

.field private mIsConnected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mIsConnected:Z

    return-void
.end method

.method private onForgetButtonPressed()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "ForgetBluetoothDevice"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "action_buttons"

    return-object v0
.end method

.method protected init(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    nop

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v1, 0x7f120779

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f080344

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsButtonsController$10mSfoM1rAEvasn6gc-o1iWQgIA;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsButtonsController$10mSfoM1rAEvasn6gc-o1iWQgIA;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mActionButtons:Lcom/android/settingslib/widget/ActionButtonsPreference;

    return-void
.end method

.method public synthetic lambda$init$0$BluetoothDetailsButtonsController(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->onForgetButtonPressed()V

    return-void
.end method

.method public synthetic lambda$refresh$1$BluetoothDetailsButtonsController(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    return-void
.end method

.method public synthetic lambda$refresh$2$BluetoothDetailsButtonsController(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    return-void
.end method

.method protected refresh()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mActionButtons:Lcom/android/settingslib/widget/ActionButtonsPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mIsConnected:Z

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mIsConnected:Z

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mIsConnected:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mConnectButtonInitialized:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mActionButtons:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v3, 0x7f1202f8

    invoke-virtual {v1, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v1

    const v3, 0x7f08033f

    invoke-virtual {v1, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v1

    new-instance v3, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsButtonsController$AbsgPn9bfqFfvfi3BgeGPbSW3X0;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsButtonsController$AbsgPn9bfqFfvfi3BgeGPbSW3X0;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;)V

    invoke-virtual {v1, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mConnectButtonInitialized:Z

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mConnectButtonInitialized:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mActionButtons:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v3, 0x7f1202f6

    invoke-virtual {v1, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v1

    const v3, 0x7f080341

    invoke-virtual {v1, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v1

    new-instance v3, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsButtonsController$eZ36ezumIpXzpP7dOOnqn-gI5Uk;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsButtonsController$eZ36ezumIpXzpP7dOOnqn-gI5Uk;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;)V

    invoke-virtual {v1, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mConnectButtonInitialized:Z

    :cond_3
    :goto_0
    return-void
.end method
