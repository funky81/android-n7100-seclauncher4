.class public Lcom/android/launcher2/guide/AddAppsGuider;
.super Lcom/android/launcher2/guide/GuiderBase;
.source "AddAppsGuider.java"

# interfaces
.implements Lcom/android/launcher2/guide/GuiderLifecycleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AddAppsGuider"

.field static isStep1DialogVisible:Z

.field static isStep2DialogVisible:Z

.field static layout:Landroid/view/ViewGroup;

.field static menuLayout:Landroid/view/View;


# instance fields
.field txtvw:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-boolean v0, Lcom/android/launcher2/guide/AddAppsGuider;->isStep1DialogVisible:Z

    .line 46
    sput-boolean v0, Lcom/android/launcher2/guide/AddAppsGuider;->isStep2DialogVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/launcher2/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 50
    const-string v0, "AddAppsGuider"

    const-string v1, "AddAppsGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "AddAppsGuider"

    const-string v1, "dismissHelpDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->dismissShowHelpDialog_step1()V

    .line 98
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->dismissShowHelpDialog_step2()V

    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 100
    return-void
.end method

.method public dismissShowHelpDialog_step1()V
    .locals 3

    .prologue
    .line 156
    const-string v1, "AddAppsGuider"

    const-string v2, "dismisshelpdialog step 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-boolean v1, Lcom/android/launcher2/guide/AddAppsGuider;->isStep1DialogVisible:Z

    if-eqz v1, :cond_0

    .line 158
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/guide/AddAppsGuider;->isStep1DialogVisible:Z

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v0, Lcom/android/launcher2/guide/ViewAppsGuider;

    .end local v0           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    .line 161
    .restart local v0       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 163
    .end local v0           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    :cond_0
    return-void
.end method

.method public dismissShowHelpDialog_step2()V
    .locals 4

    .prologue
    .line 166
    sget-boolean v2, Lcom/android/launcher2/guide/AddAppsGuider;->isStep2DialogVisible:Z

    if-eqz v2, :cond_0

    .line 167
    const-string v2, "AddAppsGuider"

    const-string v3, "dismisshelpdialog step 2. isStep2DialogVisible"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/launcher2/guide/AddAppsGuider;->isStep2DialogVisible:Z

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 170
    .local v1, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 171
    invoke-static {v1}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/guide/AddAppsGuider;->layout:Landroid/view/ViewGroup;

    .line 172
    sget-object v2, Lcom/android/launcher2/guide/AddAppsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 173
    .local v0, childcount:I
    sget-object v2, Lcom/android/launcher2/guide/AddAppsGuider;->layout:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 182
    .end local v0           #childcount:I
    .end local v1           #launcher:Lcom/android/launcher2/Launcher;
    :cond_0
    :goto_0
    return-void

    .line 176
    .restart local v0       #childcount:I
    .restart local v1       #launcher:Lcom/android/launcher2/Launcher;
    :cond_1
    if-eqz v0, :cond_2

    .line 177
    sget-object v2, Lcom/android/launcher2/guide/AddAppsGuider;->layout:Landroid/view/ViewGroup;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 179
    :cond_2
    const/4 v2, 0x0

    sput-object v2, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_0
.end method

.method public bridge synthetic finish()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->finish()V

    return-void
.end method

.method public isStep1DialogVisible()Z
    .locals 1

    .prologue
    .line 190
    sget-boolean v0, Lcom/android/launcher2/guide/AddAppsGuider;->isStep1DialogVisible:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 106
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->dismissHelpDialog()V

    .line 80
    sget v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 83
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->showHelpDialog_step1()V

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->showHelpDialog_step2()V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public bridge synthetic onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/guide/GuiderBase;->onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic showCompleteDialog()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->showCompleteDialog()V

    return-void
.end method

.method public showHelpDialog()V
    .locals 0

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->showHelpDialog_step1()V

    .line 187
    return-void
.end method

.method public showHelpDialog_step1()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 110
    sget-boolean v1, Lcom/android/launcher2/guide/AddAppsGuider;->isStep1DialogVisible:Z

    if-eqz v1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 113
    :cond_0
    sput v3, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 114
    sput-boolean v3, Lcom/android/launcher2/guide/AddAppsGuider;->isStep1DialogVisible:Z

    .line 115
    const-string v1, "AddAppsGuider"

    const-string v2, "showhelpdialog step 1+isStep1DialogVisible=true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sput-boolean v3, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v0, Lcom/android/launcher2/guide/ViewAppsGuider;

    .end local v0           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    .line 119
    .restart local v0       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->showHelpDialog()V

    goto :goto_0
.end method

.method public showHelpDialog_step2()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const v6, 0x3dcccccd

    .line 124
    sget-boolean v3, Lcom/android/launcher2/guide/AddAppsGuider;->isStep2DialogVisible:Z

    if-eqz v3, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const/4 v3, 0x2

    sput v3, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 128
    sput-boolean v5, Lcom/android/launcher2/guide/AddAppsGuider;->isStep2DialogVisible:Z

    .line 129
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->dismissShowHelpDialog_step1()V

    .line 130
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 131
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    .line 132
    .local v2, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 133
    invoke-static {v2}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/AddAppsGuider;->layout:Landroid/view/ViewGroup;

    .line 134
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 136
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03000d

    sget-object v4, Lcom/android/launcher2/guide/AddAppsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/AddAppsGuider;->menuLayout:Landroid/view/View;

    .line 138
    new-instance v0, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    invoke-direct {v0}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>()V

    .line 139
    .local v0, animdialog:Lcom/android/launcher2/guide/HelpAnimatedDialog;
    const v3, 0x7f070026

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/launcher2/guide/AddAppsGuider;->txtvw:Landroid/widget/TextView;

    .line 140
    iget-object v3, p0, Lcom/android/launcher2/guide/AddAppsGuider;->txtvw:Landroid/widget/TextView;

    new-instance v4, Lcom/android/launcher2/guide/AddAppsGuider$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/guide/AddAppsGuider$1;-><init>(Lcom/android/launcher2/guide/AddAppsGuider;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v3, p0, Lcom/android/launcher2/guide/AddAppsGuider;->txtvw:Landroid/widget/TextView;

    sget-object v4, Lcom/android/launcher2/guide/AddAppsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e00b0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 148
    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v4, "create_folder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    iget-object v3, p0, Lcom/android/launcher2/guide/AddAppsGuider;->txtvw:Landroid/widget/TextView;

    const v4, 0x7f0e00aa

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 151
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/guide/AddAppsGuider;->txtvw:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v6, v3}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    goto :goto_0
.end method
