.class Lcom/estrongs/fs/b/ah;
.super Ljava/lang/Thread;


# instance fields
.field a:I

.field final synthetic b:Lcom/estrongs/fs/b/ag;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/ag;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/fs/b/ah;->b:Lcom/estrongs/fs/b/ag;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/estrongs/fs/b/ah;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/b/ah;->b:Lcom/estrongs/fs/b/ag;

    invoke-static {v0}, Lcom/estrongs/fs/b/ag;->a(Lcom/estrongs/fs/b/ag;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget v0, p0, Lcom/estrongs/fs/b/ah;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/estrongs/fs/b/ah;->b:Lcom/estrongs/fs/b/ag;

    iget-object v1, p0, Lcom/estrongs/fs/b/ah;->b:Lcom/estrongs/fs/b/ag;

    iget-object v1, v1, Lcom/estrongs/fs/b/ag;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/ag;->onProgress(Lcom/estrongs/a/a/m;)V

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method
