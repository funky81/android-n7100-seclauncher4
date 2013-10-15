.class public Lcom/android/launcher2/guide/AddWidgetsGuider;
.super Lcom/android/launcher2/guide/GuiderBase;
.source "AddWidgetsGuider.java"

# interfaces
.implements Lcom/android/launcher2/guide/GuiderLifecycleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AddWidgetsGuider"

.field public static isAddWidgetsGuiderOn:Z

.field static isStep1DialogVisible:Z

.field static isStep2DialogVisible:Z

.field static isStep3DialogVisible:Z

.field static layout:Landroid/view/ViewGroup;

.field static menuLayout:Landroid/view/View;


# instance fields
.field private mGoalAnimationView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-boolean v0, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep1DialogVisible:Z

    .line 48
    sput-boolean v0, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    .line 49
    sput-boolean v0, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep3DialogVisible:Z

    .line 50
    sput-boolean v0, Lcom/android/launcher2/guide/AddWidgetsGuider;->isAddWidgetsGuiderOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/launcher2/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 55
    const-string v0, "AddWidgetsGuider"

    const-string v1, "AddWidgetsGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/guide/AddWidgetsGuider;->isAddWidgetsGuiderOn:Z

    .line 57
    return-void
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "AddWidgetsGuider"

    const-string v1, "AddWidgetsGuider.dismissHelpDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissShowHelpDialog_step1()V

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissShowHelpDialog_step2()V

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissShowHelpDialog_step3()V

    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/guide/AddWidgetsGuider;->isAddWidgetsGuiderOn:Z

    .line 109
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 110
    return-void
.end method

.method public dismissShowHelpDialog_step1()V
    .locals 2

    .prologue
    .line 194
    sget-boolean v1, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep1DialogVisible:Z

    if-eqz v1, :cond_0

    .line 195
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep1DialogVisible:Z

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v0, Lcom/android/launcher2/guide/ViewAppsGuider;

    .end local v0           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    .line 198
    .restart local v0       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 200
    .end local v0           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    :cond_0
    return-void
.end method

.method public dismissShowHelpDialog_step2()V
    .locals 5

    .prologue
    .line 203
    sget-boolean v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    if-eqz v3, :cond_1

    .line 204
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    .line 205
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 206
    .local v1, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 207
    const-string v3, "AddWidgetsGuider"

    const-string v4, " frag!=null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    .line 211
    .local v2, menuWidgets:Lcom/android/launcher2/MenuWidgets;
    if-eqz v2, :cond_0

    .line 212
    const-string v3, "AddWidgetsGuider - dismissShowHelpDialog_step2"

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuWidgets;->updatePackages(Ljava/lang/String;)V

    .line 216
    :cond_0
    invoke-static {v1}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    .line 217
    sget-object v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 218
    .local v0, childcount:I
    sget-object v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    if-nez v3, :cond_2

    .line 219
    const-string v3, "AddWidgetsGuider"

    const-string v4, "layout==null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v0           #childcount:I
    .end local v1           #launcher:Lcom/android/launcher2/Launcher;
    .end local v2           #menuWidgets:Lcom/android/launcher2/MenuWidgets;
    :cond_1
    :goto_0
    return-void

    .line 222
    .restart local v0       #childcount:I
    .restart local v1       #launcher:Lcom/android/launcher2/Launcher;
    .restart local v2       #menuWidgets:Lcom/android/launcher2/MenuWidgets;
    :cond_2
    if-eqz v0, :cond_3

    .line 223
    sget-object v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 225
    :cond_3
    const/4 v3, 0x0

    sput-object v3, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_0
.end method

.method public dismissShowHelpDialog_step3()V
    .locals 4

    .prologue
    .line 231
    sget-boolean v2, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep3DialogVisible:Z

    if-eqz v2, :cond_0

    .line 232
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep3DialogVisible:Z

    .line 233
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 234
    .local v1, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 235
    const-string v2, "AddWidgetsGuider"

    const-string v3, " frag!=null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {v1}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    .line 237
    sget-object v2, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 238
    .local v0, childcount:I
    sget-object v2, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 239
    const-string v2, "AddWidgetsGuider"

    const-string v3, "layout==null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v0           #childcount:I
    .end local v1           #launcher:Lcom/android/launcher2/Launcher;
    :cond_0
    :goto_0
    return-void

    .line 242
    .restart local v0       #childcount:I
    .restart local v1       #launcher:Lcom/android/launcher2/Launcher;
    :cond_1
    if-eqz v0, :cond_2

    .line 243
    sget-object v2, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 245
    :cond_2
    const/4 v2, 0x0

    sput-object v2, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_0
.end method

.method public bridge synthetic finish()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->finish()V

    return-void
.end method

.method public isStep1DialogVisible()Z
    .locals 1

    .prologue
    .line 256
    sget-boolean v0, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep1DialogVisible:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 116
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissHelpDialog()V

    .line 86
    sget v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 88
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->showHelpDialog_step1()V

    goto :goto_0

    .line 91
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->showHelpDialog_step2()V

    goto :goto_0

    .line 94
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->showHelpDialog_step3()V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 63
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public bridge synthetic onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/guide/GuiderBase;->onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic showCompleteDialog()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->showCompleteDialog()V

    return-void
.end method

.method public showHelpDialog()V
    .locals 0

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->showHelpDialog_step1()V

    .line 253
    return-void
.end method

.method public showHelpDialog_step1()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 120
    sget-boolean v1, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep1DialogVisible:Z

    if-eqz v1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 123
    :cond_0
    sput v2, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 124
    sput-boolean v2, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep1DialogVisible:Z

    .line 125
    sput-boolean v2, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v0, Lcom/android/launcher2/guide/ViewAppsGuider;

    .end local v0           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    .line 128
    .restart local v0       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->showHelpDialog()V

    goto :goto_0
.end method

.method public showHelpDialog_step2()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 134
    sget-boolean v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    if-eqz v5, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const/4 v5, 0x2

    sput v5, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 138
    sput-boolean v7, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    .line 139
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissShowHelpDialog_step1()V

    .line 140
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 141
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    .line 142
    .local v2, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 143
    const-string v5, "AddWidgetsGuider"

    const-string v6, " frag!=null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {v2}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v5

    sput-object v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    .line 145
    const-string v5, "layout_inflater"

    invoke-virtual {v2, v5}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 147
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030019

    sget-object v6, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    sput-object v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    .line 150
    sget-object v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    const v6, 0x7f070025

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 152
    .local v4, up_pointer:Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->bringToFront()V

    .line 154
    sget-object v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    const v6, 0x7f07003b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/launcher2/guide/AddWidgetsGuider;->mGoalAnimationView:Landroid/view/View;

    .line 156
    new-instance v0, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    iget-object v5, p0, Lcom/android/launcher2/guide/AddWidgetsGuider;->mGoalAnimationView:Landroid/view/View;

    invoke-direct {v0, v2, v5}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 159
    .local v0, animdialog:Lcom/android/launcher2/guide/HelpAnimatedDialog;
    sget-object v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    const v6, 0x7f070024

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 161
    .local v3, textBox:Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->start()V

    .line 162
    const v5, 0x3f19999a

    const v6, 0x3dcccccd

    invoke-virtual {v0, v5, v6, v3}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    goto :goto_0
.end method

.method public showHelpDialog_step3()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 169
    sget-boolean v4, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep3DialogVisible:Z

    if-eqz v4, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const/4 v4, 0x3

    sput v4, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 173
    sput-boolean v6, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep3DialogVisible:Z

    .line 174
    const-string v4, "AddWidgetsGuider"

    const-string v5, "showhelpdialog step 3"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    .line 176
    .local v2, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 177
    const-string v4, "AddWidgetsGuider"

    const-string v5, " frag!=null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 179
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuWidgets;->setCurrentPage(I)V

    .line 180
    :cond_2
    invoke-static {v2}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v4

    sput-object v4, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    .line 181
    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 183
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03001a

    sget-object v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    sput-object v4, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    .line 185
    new-instance v0, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    invoke-direct {v0}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>()V

    .line 186
    .local v0, animdialog:Lcom/android/launcher2/guide/HelpAnimatedDialog;
    sget-object v4, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    const v5, 0x7f070026

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 188
    .local v3, textBox:Landroid/widget/TextView;
    const v4, 0x3f19999a

    const v5, 0x3dcccccd

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    goto :goto_0
.end method
