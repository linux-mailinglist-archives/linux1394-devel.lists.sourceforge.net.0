Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6095C1D68E4
	for <lists+linux1394-devel@lfdr.de>; Sun, 17 May 2020 18:43:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jaMO8-0002li-3J; Sun, 17 May 2020 16:43:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <levonshe@gmail.com>) id 1jaMO6-0002lU-BE
 for linux1394-devel@lists.sourceforge.net; Sun, 17 May 2020 16:43:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bW2tMhxWyyjNncTb2G7OX7x0LZat/kQuDZNZwydNgqI=; b=d7nz/bBl38k2b4za2ejExc8Oq6
 Vfbsda1ZHJMQ0Vc4UeJMFHT5oYtqf3RxofyENkZpgj5eNR1Idh62CP7zfczbMaV2GkcKrVRAPsGj7
 uEfoLXLEIzDGEkkQg3hFznyrnQEnlsxyPw/LUk4svbfpOYfUaGe/eFlvYR3qqsirFino=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bW2tMhxWyyjNncTb2G7OX7x0LZat/kQuDZNZwydNgqI=; b=aS+1T13pELiV8pFvnQdhuipFeh
 aCVnbjsIre9r/1HSRXY+MRYprxlKSG4fk1j/KRoYLkNVZm17ejAy2dUBPA9ezzI9YsScLFgTCzziN
 d7J380CqMu2EbYikCnIZuZjoT+qpJNpsjAonGgQ620L8RO5S5XAGJu2LLLi9iW6dg20E=;
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jaMO2-00FIZG-Vh
 for linux1394-devel@lists.sourceforge.net; Sun, 17 May 2020 16:43:42 +0000
Received: by mail-io1-f65.google.com with SMTP id x5so8026507ioh.6
 for <linux1394-devel@lists.sourceforge.net>;
 Sun, 17 May 2020 09:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bW2tMhxWyyjNncTb2G7OX7x0LZat/kQuDZNZwydNgqI=;
 b=d/bFl9zc2OyPGpLznpmI7A+ZDvS789Kbw8lTq2WEMKo+Oi/9p7s+GtNlQtjyzAAHWs
 3xz2VcLzijw/7uk3s2hE8szH+6A9PFoNPbF5GzOAXXPCexmAwQu/qBbf+PcNfCRxEMDO
 x+QH6O02AYW3LjPO6VG2z8b/gDDlPMSBBJG1PlJMSsGuP7oNUilHi3uZnDU+sjOqnpay
 /jHs8xzHBCUGY4ALEcrBqEonOR0KpSKjcy//YuiZ9/l/Okvq6rfaXddyJGk8ufKmEXJG
 JcoxOqF4dXi/hTMstDEBPtdW330tAhbx/o9s7N84zN7yw6vXHKMCxOYgrfuHn/t2qkwi
 V8gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bW2tMhxWyyjNncTb2G7OX7x0LZat/kQuDZNZwydNgqI=;
 b=UcyJ0hN13ihlcy6Rshi9w1MYb580yKJKLEiBAFQcWFE2aXXI5rI7FOsXWkeHgt0y9A
 ik2ezpcG8I6avi5uSdZ7TVzpROq4e6enudeJXzyWHsvp73YNKMwjpnfsicuJ3vhykTxy
 3RJfI6Y6PUzUw9cPDsOU4/gfr/W5RRa3j90AGd11HBS/+/pldPwRA6aQCilIvPwlA2Zp
 5IweGIzbsWyrYn4naGW4hGLTsQrW7PqfP1TpQJiXR6NbfybxmyBPxP9jNYbsHLk9PFxU
 0m0toI7PtQleGDh5fk7WFVwi9n5lDHvyakxiCWM0QRd/jXVRCYevxISnEuLQUgOvdYUS
 W+7Q==
X-Gm-Message-State: AOAM5323leyMRCUz9yq97YyfgVwVrX1ApcnbHkv+mOULtFovwKqNc+vR
 j7xQc5n8inu7WDAsUU6Drm+RCKHjJxgnyN6qGzo=
X-Google-Smtp-Source: ABdhPJzqbU5i3pOsh9QTXXqsMPl4e4nnE4VT8jwhh5K7/GgAT+qqtvyWdOaHb1xfeVtbgJbnihxKRLuVNNoF7TrLW3Q=
X-Received: by 2002:a5e:8d17:: with SMTP id m23mr11036234ioj.11.1589733813147; 
 Sun, 17 May 2020 09:43:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200516173934.31527-1-oscar.carter@gmx.com>
In-Reply-To: <20200516173934.31527-1-oscar.carter@gmx.com>
From: "Lev R. Oshvang ." <levonshe@gmail.com>
Date: Sun, 17 May 2020 19:43:21 +0300
Message-ID: <CAP22eLF2Q3O+=tnHRKE5q=jn9gw2G1rjAKiewM4qGsf4WYvP0Q@mail.gmail.com>
Subject: Re: [PATCH] firewire: Remove function callback casts
To: Oscar Carter <oscar.carter@gmx.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (levonshe[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jaMO2-00FIZG-Vh
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: alsa-devel@alsa-project.org, Kees Cook <keescook@chromium.org>,
 kernel-hardening@lists.openwall.com, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux1394-devel@lists.sourceforge.net, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Sat, May 16, 2020 at 8:40 PM Oscar Carter <oscar.carter@gmx.com> wrote:
>
> In an effort to enable -Wcast-function-type in the top-level Makefile to
> support Control Flow Integrity builds, remove all the function callback
> casts.
>
> To do this, modify the "fw_iso_context_create" function prototype adding
> a new parameter for the multichannel callback. Also, fix all the
> function calls accordingly.
>
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
>  drivers/firewire/core-cdev.c        | 12 +++++++-----
>  drivers/firewire/core-iso.c         | 10 ++++++++--
>  drivers/firewire/net.c              |  2 +-
>  drivers/media/firewire/firedtv-fw.c |  3 ++-
>  include/linux/firewire.h            |  3 ++-
>  sound/firewire/amdtp-stream.c       |  2 +-
>  sound/firewire/isight.c             |  4 ++--
>  7 files changed, 23 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
> index 6e291d8f3a27..cc368b35be2e 100644
> --- a/drivers/firewire/core-cdev.c
> +++ b/drivers/firewire/core-cdev.c
> @@ -957,7 +957,8 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
>  {
>         struct fw_cdev_create_iso_context *a = &arg->create_iso_context;
>         struct fw_iso_context *context;
> -       fw_iso_callback_t cb;
> +       fw_iso_callback_t cb_sc = NULL;
> +       fw_iso_mc_callback_t cb_mc = NULL;
>         int ret;
>
>         BUILD_BUG_ON(FW_CDEV_ISO_CONTEXT_TRANSMIT != FW_ISO_CONTEXT_TRANSMIT ||
> @@ -970,7 +971,7 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
>                 if (a->speed > SCODE_3200 || a->channel > 63)
>                         return -EINVAL;
>
> -               cb = iso_callback;
> +               cb_sc = iso_callback;
>                 break;
>
>         case FW_ISO_CONTEXT_RECEIVE:
> @@ -978,11 +979,11 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
>                     a->channel > 63)
>                         return -EINVAL;
>
> -               cb = iso_callback;
> +               cb_sc = iso_callback;
>                 break;
>
>         case FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL:
> -               cb = (fw_iso_callback_t)iso_mc_callback;
> +               cb_mc = iso_mc_callback;
>                 break;
>
>         default:
> @@ -990,7 +991,8 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
>         }
>
>         context = fw_iso_context_create(client->device->card, a->type,
> -                       a->channel, a->speed, a->header_size, cb, client);
> +                       a->channel, a->speed, a->header_size, cb_sc, cb_mc,
> +                       client);
>         if (IS_ERR(context))
>                 return PTR_ERR(context);
>         if (client->version < FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW)
> diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
> index 185b0b78b3d6..3b8e349704f8 100644
> --- a/drivers/firewire/core-iso.c
> +++ b/drivers/firewire/core-iso.c
> @@ -131,7 +131,8 @@ size_t fw_iso_buffer_lookup(struct fw_iso_buffer *buffer, dma_addr_t completed)
>
>  struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
>                 int type, int channel, int speed, size_t header_size,
> -               fw_iso_callback_t callback, void *callback_data)
> +               fw_iso_callback_t cb_sc, fw_iso_mc_callback_t cb_mc,
> +               void *callback_data)
>  {
>         struct fw_iso_context *ctx;
>
> @@ -145,7 +146,12 @@ struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
>         ctx->channel = channel;
>         ctx->speed = speed;
>         ctx->header_size = header_size;
> -       ctx->callback.sc = callback;
> +
> +       if (cb_sc)
> +               ctx->callback.sc = cb_sc;
> +       else
> +               ctx->callback.mc = cb_mc;
> +
>         ctx->callback_data = callback_data;
>
>         return ctx;
> diff --git a/drivers/firewire/net.c b/drivers/firewire/net.c
> index 715e491dfbc3..c5cc0a311aa0 100644
> --- a/drivers/firewire/net.c
> +++ b/drivers/firewire/net.c
> @@ -1136,7 +1136,7 @@ static int fwnet_broadcast_start(struct fwnet_device *dev)
>         context = fw_iso_context_create(dev->card, FW_ISO_CONTEXT_RECEIVE,
>                                         IEEE1394_BROADCAST_CHANNEL,
>                                         dev->card->link_speed, 8,
> -                                       fwnet_receive_broadcast, dev);
> +                                       fwnet_receive_broadcast, NULL, dev);
>         if (IS_ERR(context)) {
>                 retval = PTR_ERR(context);
>                 goto failed;
> diff --git a/drivers/media/firewire/firedtv-fw.c b/drivers/media/firewire/firedtv-fw.c
> index 97144734eb05..d2940adefd8c 100644
> --- a/drivers/media/firewire/firedtv-fw.c
> +++ b/drivers/media/firewire/firedtv-fw.c
> @@ -141,7 +141,8 @@ int fdtv_start_iso(struct firedtv *fdtv)
>
>         ctx->context = fw_iso_context_create(device->card,
>                         FW_ISO_CONTEXT_RECEIVE, fdtv->isochannel,
> -                       device->max_speed, ISO_HEADER_SIZE, handle_iso, fdtv);
> +                       device->max_speed, ISO_HEADER_SIZE,
> +                       handle_iso, NULL, fdtv);
>         if (IS_ERR(ctx->context)) {
>                 err = PTR_ERR(ctx->context);
>                 goto fail_free;
> diff --git a/include/linux/firewire.h b/include/linux/firewire.h
> index aec8f30ab200..3a0b5e18e140 100644
> --- a/include/linux/firewire.h
> +++ b/include/linux/firewire.h
> @@ -452,7 +452,8 @@ struct fw_iso_context {
>
>  struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
>                 int type, int channel, int speed, size_t header_size,
> -               fw_iso_callback_t callback, void *callback_data);
> +               fw_iso_callback_t cb_sc, fw_iso_mc_callback_t cb_mc,
> +               void *callback_data);
>  int fw_iso_context_set_channels(struct fw_iso_context *ctx, u64 *channels);
>  int fw_iso_context_queue(struct fw_iso_context *ctx,
>                          struct fw_iso_packet *packet,
> diff --git a/sound/firewire/amdtp-stream.c b/sound/firewire/amdtp-stream.c
> index 37d38efb4c87..8629ab3e2c64 100644
> --- a/sound/firewire/amdtp-stream.c
> +++ b/sound/firewire/amdtp-stream.c
> @@ -1093,7 +1093,7 @@ static int amdtp_stream_start(struct amdtp_stream *s, int channel, int speed,
>
>         s->context = fw_iso_context_create(fw_parent_device(s->unit)->card,
>                                           type, channel, speed, ctx_header_size,
> -                                         ctx_cb, ctx_data);
> +                                         ctx_cb, NULL, ctx_data);
>         if (IS_ERR(s->context)) {
>                 err = PTR_ERR(s->context);
>                 if (err == -EBUSY)
> diff --git a/sound/firewire/isight.c b/sound/firewire/isight.c
> index 6655af53b367..51cc37fca736 100644
> --- a/sound/firewire/isight.c
> +++ b/sound/firewire/isight.c
> @@ -361,8 +361,8 @@ static int isight_start_streaming(struct isight *isight)
>         isight->context = fw_iso_context_create(isight->device->card,
>                                                 FW_ISO_CONTEXT_RECEIVE,
>                                                 isight->resources.channel,
> -                                               isight->device->max_speed,
> -                                               4, isight_packet, isight);
> +                                               isight->device->max_speed, 4,
> +                                               isight_packet, NULL, isight);
>         if (IS_ERR(isight->context)) {
>                 err = PTR_ERR(isight->context);
>                 isight->context = NULL;
> --
> 2.20.1
>

Hi Oscar,
I would recommend to explicitly set NULL to _cb and use if elif to
exclude the case where botm _cb paraneters are passed as NULLs :
> +
  ctx->callback.mc =NULL:
  ctx->callback.sc = NULL;
> +       if (cb_sc)
> +               ctx->callback.sc = cb_sc;

> +       elif (cb_ms)
> +               ctx->callback.mc = cb_mc;
> +         else
                    return -EINVAL;

Hope you get the point.
Lev


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
