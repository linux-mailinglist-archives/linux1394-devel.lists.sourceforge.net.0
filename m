Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 434311D6322
	for <lists+linux1394-devel@lfdr.de>; Sat, 16 May 2020 19:41:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1ja0oa-0001Wx-Ln; Sat, 16 May 2020 17:41:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <oscar.carter@gmx.com>) id 1ja0oY-0001Wp-RW
 for linux1394-devel@lists.sourceforge.net; Sat, 16 May 2020 17:41:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Iug6niqNyov7cH0/ZYK3GkXwV5zKZ5VHfijZSwAJ0Os=; b=Iiks5kLJK43ZnJ1ymvmLSGH59f
 dKm0J1yBNFiRew6m/7UgFWQQgWa+ryHRPJsNRJjyKcxCxMN4h1L6SykkA6kfvbqo8ZULpTMvgvyEi
 eTScPQaW2HPrUCGqigi7F9AoVLnLyTDs9rvav2Qfn8N33kKuC9O7cgx6W0w/X6Vu3pno=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Iug6niqNyov7cH0/ZYK3GkXwV5zKZ5VHfijZSwAJ0Os=; b=D
 VnSF/GZHB/lm31uKl0a2e4Yb9B8YVqTMPsJs6K0GLGfx1ZhraC33W9SyzJSESdo/S3IWg7PJfaj4E
 2dslXEB06C5VNmVY0AEjhukjrXxUpQ0KUni2MLKE6hnZje9/zV46yWf14xlQcZShKoy+TYcCAMWeA
 3Xu1KpsoPeuBLajQ=;
Received: from mout.gmx.net ([212.227.15.18])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ja0oW-00ASeH-CX
 for linux1394-devel@lists.sourceforge.net; Sat, 16 May 2020 17:41:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1589650815;
 bh=svKHqIihi2LkFyIclqBrhHmmZ5pFgZhV4k/M5HUfvYU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=FXjHxhzYuLfDPeHoOSl8KdP/2H/oEV1gx2+L9gpUXLjLGjxWkccTx9/mx26V9FEYa
 cfSZoisNDFsngWkijMGJlyl5OCrdmpoFKraPFP1wrR0t1Mo0Ee3Utva0bju2q6o3g/
 tmNEadccqmsCVV0M24D2eBhu72QkC/OHBbIJQytc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MxDkw-1iq2yN1Rd2-00xZgd; Sat, 16 May 2020 19:40:15 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Kees Cook <keescook@chromium.org>,
 Stefan Richter <stefanr@s5r6.in-berlin.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Clemens Ladisch <clemens@ladisch.de>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [PATCH] firewire: Remove function callback casts
Date: Sat, 16 May 2020 19:39:34 +0200
Message-Id: <20200516173934.31527-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:Z020tf5rikbggnvyzosr6a5IroYYLf6i6PImziyyhMDKJreRBv3
 J6x+WEMYBuxsPg+zaxBztvueMsWrrxOb6z9Rl5cWZZ6k9S3L1BanWm5EYrdWJnbDu/OpuLr
 5WoAfBWfS7ZYrKSz/olxYdYvmhM5Rj2n8pTBsAwKmVdvQlAuXT/SspC41BOVZKDWHX3MdA7
 J+3U+3IOiEw268GJbmSzw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mYbgd0+L8Xc=:YQl0HwCgvkxUMu9varvTRd
 u2RfVdPLHpnzJXIOSiAHRqeJDCG60SEuLvrsNxiAQj7Y425W8k7uMc5Mm+YCrX6yZ/cocchmJ
 HGcVX6fND2Z+4+KJN063+pzY+rVK3K49N2SJTDpvE3Au4fhkJhhtIQf9vSLk5WrT0rUaRYcNQ
 DgML1I82o4GZ48Ju8XDbdKJY7fiaCx8SaJj5nHUjujGQssZ5PwgcGZmoViBv2z/vZDleydOuS
 eoWK5ygziYB9Xk8RNMLz2vS2aA41NqCkwkiqHtPzfA0Hx4o0+dUUySgR54bJI6kImhow9EAqt
 G0ZE8EdouUvXcO2w9akffLmTksTkYY4GD8FjuFHi1hpXtq8pib9Qp6cme8vYYfqA7KSUHYwjC
 Np2zIIduA4SEQdiZBVLzHOUA0ECRAs3WC3ucmGjfqHw+9L8U0foLmF0fQ/wORUKqsj5oKlfV+
 /N/3mCIvvnV4putlQkIrRYXSnlhlc4rLs/tUFvH6q2IhMtzDMhbZi5xE7mv/rQ/mrl0XtSw8q
 JqSc3px/bHicpR0zAjMZ3jH1V/ZzCPSWaUwFQrdHye84r15z4TwAYjKnVElWoqkWDB57RjJ09
 0O0pWjxTn5LNiUDfiRtjju/xDmQaI7tVC8w+jDXvRidj5fkxGKLWS32rvaCQ5uSeT+oHFRuhS
 0wC/MOCwiMU+78UJhVjXoxuxI9NUZopY/PTCLuGSrlCJfrW5JbTG5mTTnQGLNnYASqrMt7x9W
 olpJc+Bvok5ulc8jZ+hqIxTDeRXXPal/Xb5KsssA4m+gTCtRjtjzk5G0WlgyclzRohht6e5D+
 Ut2+ZbT2is3OBWavvhP6eLIV3VSdRr9yRygEV/I9LhvVL+Q24ZUbCRLLcnTZeiHNAfUHdiWKj
 hgPISRPnTZFybcW+eyCIuOT1E71yu3PPCfwQ+0RPYQge5rUc0o6kHshI7Rj/7RJmTyj38HCHn
 9QhW8hKVchkuk8MXQxR3D2D51JhJ//uGzAzYN+SuIJrBZsdkLi/47icuTlCBIE6WwPHiM+TVP
 6bdp6Am9h+gN7QxMK8YTC5S2lKjBB/LfNgqPie1aSfYWeDn43Qlm5/1FRFp+HsK6npPDAScrS
 /V3MxT8VWchryli2IlfKRW6WrAOo0oYPuEv28KGxIwdjl5SUSSj2SHznrOetBz4TrgY0CG3Yh
 mTCQubmLj/3ycoNnEfqEshwy/NCYlnB47LiZrBd07q/Sa2ayuQyvYkx4p3/Q9E++07q0YCh3b
 1ERrb8OOhuGpJJ+5O
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (oscar.carter[at]gmx.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.18 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ja0oW-00ASeH-CX
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
Cc: alsa-devel@alsa-project.org, Oscar Carter <oscar.carter@gmx.com>,
 kernel-hardening@lists.openwall.com, linux-kernel@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In an effort to enable -Wcast-function-type in the top-level Makefile to
support Control Flow Integrity builds, remove all the function callback
casts.

To do this, modify the "fw_iso_context_create" function prototype adding
a new parameter for the multichannel callback. Also, fix all the
function calls accordingly.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/firewire/core-cdev.c        | 12 +++++++-----
 drivers/firewire/core-iso.c         | 10 ++++++++--
 drivers/firewire/net.c              |  2 +-
 drivers/media/firewire/firedtv-fw.c |  3 ++-
 include/linux/firewire.h            |  3 ++-
 sound/firewire/amdtp-stream.c       |  2 +-
 sound/firewire/isight.c             |  4 ++--
 7 files changed, 23 insertions(+), 13 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 6e291d8f3a27..cc368b35be2e 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -957,7 +957,8 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 {
 	struct fw_cdev_create_iso_context *a = &arg->create_iso_context;
 	struct fw_iso_context *context;
-	fw_iso_callback_t cb;
+	fw_iso_callback_t cb_sc = NULL;
+	fw_iso_mc_callback_t cb_mc = NULL;
 	int ret;

 	BUILD_BUG_ON(FW_CDEV_ISO_CONTEXT_TRANSMIT != FW_ISO_CONTEXT_TRANSMIT ||
@@ -970,7 +971,7 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 		if (a->speed > SCODE_3200 || a->channel > 63)
 			return -EINVAL;

-		cb = iso_callback;
+		cb_sc = iso_callback;
 		break;

 	case FW_ISO_CONTEXT_RECEIVE:
@@ -978,11 +979,11 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 		    a->channel > 63)
 			return -EINVAL;

-		cb = iso_callback;
+		cb_sc = iso_callback;
 		break;

 	case FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL:
-		cb = (fw_iso_callback_t)iso_mc_callback;
+		cb_mc = iso_mc_callback;
 		break;

 	default:
@@ -990,7 +991,8 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 	}

 	context = fw_iso_context_create(client->device->card, a->type,
-			a->channel, a->speed, a->header_size, cb, client);
+			a->channel, a->speed, a->header_size, cb_sc, cb_mc,
+			client);
 	if (IS_ERR(context))
 		return PTR_ERR(context);
 	if (client->version < FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW)
diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index 185b0b78b3d6..3b8e349704f8 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -131,7 +131,8 @@ size_t fw_iso_buffer_lookup(struct fw_iso_buffer *buffer, dma_addr_t completed)

 struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
 		int type, int channel, int speed, size_t header_size,
-		fw_iso_callback_t callback, void *callback_data)
+		fw_iso_callback_t cb_sc, fw_iso_mc_callback_t cb_mc,
+		void *callback_data)
 {
 	struct fw_iso_context *ctx;

@@ -145,7 +146,12 @@ struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
 	ctx->channel = channel;
 	ctx->speed = speed;
 	ctx->header_size = header_size;
-	ctx->callback.sc = callback;
+
+	if (cb_sc)
+		ctx->callback.sc = cb_sc;
+	else
+		ctx->callback.mc = cb_mc;
+
 	ctx->callback_data = callback_data;

 	return ctx;
diff --git a/drivers/firewire/net.c b/drivers/firewire/net.c
index 715e491dfbc3..c5cc0a311aa0 100644
--- a/drivers/firewire/net.c
+++ b/drivers/firewire/net.c
@@ -1136,7 +1136,7 @@ static int fwnet_broadcast_start(struct fwnet_device *dev)
 	context = fw_iso_context_create(dev->card, FW_ISO_CONTEXT_RECEIVE,
 					IEEE1394_BROADCAST_CHANNEL,
 					dev->card->link_speed, 8,
-					fwnet_receive_broadcast, dev);
+					fwnet_receive_broadcast, NULL, dev);
 	if (IS_ERR(context)) {
 		retval = PTR_ERR(context);
 		goto failed;
diff --git a/drivers/media/firewire/firedtv-fw.c b/drivers/media/firewire/firedtv-fw.c
index 97144734eb05..d2940adefd8c 100644
--- a/drivers/media/firewire/firedtv-fw.c
+++ b/drivers/media/firewire/firedtv-fw.c
@@ -141,7 +141,8 @@ int fdtv_start_iso(struct firedtv *fdtv)

 	ctx->context = fw_iso_context_create(device->card,
 			FW_ISO_CONTEXT_RECEIVE, fdtv->isochannel,
-			device->max_speed, ISO_HEADER_SIZE, handle_iso, fdtv);
+			device->max_speed, ISO_HEADER_SIZE,
+			handle_iso, NULL, fdtv);
 	if (IS_ERR(ctx->context)) {
 		err = PTR_ERR(ctx->context);
 		goto fail_free;
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index aec8f30ab200..3a0b5e18e140 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -452,7 +452,8 @@ struct fw_iso_context {

 struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
 		int type, int channel, int speed, size_t header_size,
-		fw_iso_callback_t callback, void *callback_data);
+		fw_iso_callback_t cb_sc, fw_iso_mc_callback_t cb_mc,
+		void *callback_data);
 int fw_iso_context_set_channels(struct fw_iso_context *ctx, u64 *channels);
 int fw_iso_context_queue(struct fw_iso_context *ctx,
 			 struct fw_iso_packet *packet,
diff --git a/sound/firewire/amdtp-stream.c b/sound/firewire/amdtp-stream.c
index 37d38efb4c87..8629ab3e2c64 100644
--- a/sound/firewire/amdtp-stream.c
+++ b/sound/firewire/amdtp-stream.c
@@ -1093,7 +1093,7 @@ static int amdtp_stream_start(struct amdtp_stream *s, int channel, int speed,

 	s->context = fw_iso_context_create(fw_parent_device(s->unit)->card,
 					  type, channel, speed, ctx_header_size,
-					  ctx_cb, ctx_data);
+					  ctx_cb, NULL, ctx_data);
 	if (IS_ERR(s->context)) {
 		err = PTR_ERR(s->context);
 		if (err == -EBUSY)
diff --git a/sound/firewire/isight.c b/sound/firewire/isight.c
index 6655af53b367..51cc37fca736 100644
--- a/sound/firewire/isight.c
+++ b/sound/firewire/isight.c
@@ -361,8 +361,8 @@ static int isight_start_streaming(struct isight *isight)
 	isight->context = fw_iso_context_create(isight->device->card,
 						FW_ISO_CONTEXT_RECEIVE,
 						isight->resources.channel,
-						isight->device->max_speed,
-						4, isight_packet, isight);
+						isight->device->max_speed, 4,
+						isight_packet, NULL, isight);
 	if (IS_ERR(isight->context)) {
 		err = PTR_ERR(isight->context);
 		isight->context = NULL;
--
2.20.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
