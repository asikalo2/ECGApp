.class public Lcom/google/appinventor/components/runtime/ProximitySensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ProximitySensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/SensorComponent;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component that can measures the proximity of an object in cm relative to the view screen of a device. This sensor is typically used to determine whether a handset is being held up to a persons ear; i.e. lets you determine how far away an object is from a device. Many devices return the absolute distance, in cm, but some return only near and far values. In this case, the sensor usually reports its maximum range value in the far state and a lesser value in the near state.</p>"
    iconName = "images/proximitysensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private distance:F

.field private enabled:Z

.field private keepRunningWhenOnPause:Z

.field private proximitySensor:Landroid/hardware/Sensor;

.field private final sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 63
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->distance:F

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    .line 69
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    .line 71
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->startListening()V

    .line 72
    return-void
.end method

.method private startListening()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 121
    return-void
.end method

.method private stopListening()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 128
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Reports whether or not the device has a proximity sensor."
    .end annotation

    .prologue
    .line 83
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public Distance()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the distance from the object to the device"
    .end annotation

    .prologue
    .line 228
    iget v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->distance:F

    return v0
.end method

.method public Enabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled, then device will listen for changes in proximity."
    .end annotation

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-ne v0, p1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 184
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    .line 185
    if-eqz p1, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->startListening()V

    goto :goto_0

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->stopListening()V

    goto :goto_0
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    return v0
.end method

.method public KeepRunningWhenOnPause(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true, it will keep sensing for proximity changes even when the app is not visible"
    .end annotation

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->keepRunningWhenOnPause:Z

    .line 212
    return-void
.end method

.method public KeepRunningWhenOnPause()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->keepRunningWhenOnPause:Z

    return v0
.end method

.method public MaximumRange()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Reports the Maximum Range of the device\'s ProximitySensor"
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    return v0
.end method

.method public ProximityChanged(F)V
    .locals 4
    .param p1, "distance"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when distance (in cm) of the object to the device changes. "
    .end annotation

    .prologue
    .line 216
    iput p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->distance:F

    .line 217
    const-string v0, "ProximityChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->distance:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 218
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 239
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->stopListening()V

    .line 106
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->keepRunningWhenOnPause:Z

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->stopListening()V

    .line 113
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->startListening()V

    .line 92
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 137
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 139
    .local v0, "values":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->distance:F

    .line 140
    iget v1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->distance:F

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ProximitySensor;->ProximityChanged(F)V

    .line 142
    .end local v0    # "values":[F
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->stopListening()V

    .line 99
    :cond_0
    return-void
.end method
