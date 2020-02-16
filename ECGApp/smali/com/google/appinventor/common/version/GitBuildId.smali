.class public final Lcom/google/appinventor/common/version/GitBuildId;
.super Ljava/lang/Object;
.source "GitBuildId.java"


# static fields
.field public static final ACRA_URI:Ljava/lang/String; = "${acra.uri}"

.field public static final ANT_BUILD_DATE:Ljava/lang/String; = "February 5 2020"

.field public static final GIT_BUILD_FINGERPRINT:Ljava/lang/String; = "744033ae4a0426b06fb64c1f0c61fa402fee4c9a"

.field public static final GIT_BUILD_VERSION:Ljava/lang/String; = "nb182a"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getAcraUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    const-string v0, "${acra.uri}"

    const-string v1, "${acra.uri}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, ""

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "${acra.uri}"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "February 5 2020"

    return-object v0
.end method

.method public static getFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "744033ae4a0426b06fb64c1f0c61fa402fee4c9a"

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    const-string v0, "nb182a"

    .line 32
    .local v0, "version":Ljava/lang/String;
    const-string v1, ""

    if-eq v0, v1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    :cond_0
    const-string v0, "none"

    .line 35
    .end local v0    # "version":Ljava/lang/String;
    :cond_1
    return-object v0
.end method
