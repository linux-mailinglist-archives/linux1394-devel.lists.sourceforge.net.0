Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7683D1D9DF8
	for <lists+linux1394-devel@lfdr.de>; Tue, 19 May 2020 19:36:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jb6A2-0005ab-1L; Tue, 19 May 2020 17:36:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <oscar.carter@gmx.com>) id 1jb69v-0005ZB-U6
 for linux1394-devel@lists.sourceforge.net; Tue, 19 May 2020 17:36:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LBldAZNWEJ5loc2JwRr3hKU4Rsb5Q9m/VfLKbzstNMQ=; b=HGp1JAHGLKlmCjTlAbYeQ+IlWW
 fizdL1g/zg+MKtr7O8sUPZ27wUUACTMs0kJPziFmIUHqoAwv/X0jALaOoLe4KVULlrBGtQjssplR3
 K1PitOz9RpPFr6qz2UIUPQZ6gdaQ65FtqueyzvS5WMsGw6r336R8692SFHnEi/H4Qc40=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=LBldAZNWEJ5loc2JwRr3hKU4Rsb5Q9m/VfLKbzstNMQ=; b=T
 ccNh92f39ctoijVgD/A8GPf80bXizCc1d/cgcLpmcdTq5WdRaf8c/C+cFdTOj/C7/rpMM/GhLeANp
 oxvdXSUKvutdspPDOEOMxvJBAm4zQmFNHaTdROGHGUm13WgMH64gHIgtufKfUDv1WRKbEsE4IFt0Y
 7YroL6mjvMoyifrc=;
Received: from mout.gmx.net ([212.227.17.21])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jb69q-007g0W-NF
 for linux1394-devel@lists.sourceforge.net; Tue, 19 May 2020 17:36:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1589909694;
 bh=DgbBuBEeKKy1VO87kSEW0EfBt/LUFOXV9iYEYjJW4vA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=EP+82QhNJACUlQvurDeOJTMEwaPWg+3xbfgIBLZ3/mdGTOuGjGT7oJAk9qQuNHuuO
 SOUyYBkIbIBUXbQRDK+asRCbGaDHI+mSzmIfA+CSAf9SiO8tUJ1bO5MA9qMt0PV/hB
 a8inNDO23VnAr+Ldzola26chTigT6zDTv2hkeq+c=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx104 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1MHXFx-1joael00sT-00DYwM; Tue, 19 May 2020 19:34:54 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Kees Cook <keescook@chromium.org>,
 Stefan Richter <stefanr@s5r6.in-berlin.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Clemens Ladisch <clemens@ladisch.de>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [PATCH v2] firewire: Remove function callback casts
Date: Tue, 19 May 2020 19:34:25 +0200
Message-Id: <20200519173425.4724-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:JERmYwVR/+/X41rnFajkmiC9+7JlbZf76Grrn9CSDh2nu36nSrt
 QsYyRBaK8uHHcyvNDxMnmApVIJ8rQLCx0jmwBpBNk3u/IEwjZ4DejN0Il9GsxPU+7oRX63I
 LGZVMXiKfG+Vly80USax8iHCxaZ6mOz1ARWvdlYYldbsBqbthmSdHBjK2UPnCHkCg5YX85B
 Mj+Tx+041242IvqNHFwPw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1bE5D8caT6A=:KuncZfHcp0wPHvJPAREd1+
 eS5TwfOzwtbWlraCGyAQbvu5S+8ab8J0PJfdXHgId3dWreEoyAyCrwRJ889cx4Sjz9uC4NpcK
 dKqOcG+Ncy0E9sdnnF8W9F7Mn1bFvIuiGFTmaNS0uzHbzqgzPBGnPdMCkhOvIWABwOj4PyJ2n
 QdUt7whypGsZPVFUY9TjsgIaR5wYJO9ZpI+v/J/A06CshyTSBMZUxJD6BeCBUHZfBYXtG1bCs
 EGDW5upNRdYLz+JsR6CjbfVNtSuIm+ATzZ19NS5Z2M6rMFfn/JLgiZ+Jd2enb5qneu1sC95mC
 LSGrI72VpRIFAya1j6WL/2P+Vvw+1CzWAV6iLcyvcR6+r37jWVN1Pu0KaY6Vz2/abr9oC9HAY
 CO/8s4PByS8w47V+7ImpAcUi0xW+rDQUwU67kPTftlqirffH1TCiKnSdx/cgW8hajQWO8/bRY
 W3KiAzBF4cvd6QXxVEMkJYxessY/8RgcvrPNa4ALwWm4cnCJ9k9byWpYEfajV0KIYJIvGHude
 OT2mY1hrNboOBk6TiFDW1NTXRf912WMIZ+F702JAedMPeA/RqDMvT5XF36f8gcNZ/eJE0IshW
 URsY/I27dOUmFyBOP+FwY9D1t/vD9ZYH+8AeOdDksAI+Jc18Z0cXejhCi9I6AiWr+GT4dPP2m
 fEsKnSgTCk16NvhTwxFMiX32DtpOZPlKTc3FfNuPqvVWTxQaLg6cEEjKdDgeinMnfhFWkztpl
 s5ng/jhG7p3AaDpSjYBn8D/8Otxl8K99x9oQjdVkTm0rzrHJ8HyUT6BfDywNYrWWaQ8AGTzwM
 oWrgNpsIW2zV+mBKpwAXdtk1ZXlCEHpDH29CC3X3nfcB37NaHfrKtUpOBVJoJgi+YKwgNZL/F
 bia+PF1ZZ7kSWv/YLRjHg96l4AnPIeivv4Bhobf5WpD5+lRHpC5pE4c8kbze6wx2pqUn/X7Ib
 ydqxMiHiNDawDfMdrmjv8jmTzdifJl/nuxEWTo4DIp+FgTW1gwZ0Xa6stbkEJpcxXVnpD61ZL
 P4wNiUL6OeoQMFold+5gvKhtNK1w8q5fzO27sonijkVqXpG6pMK0wPOZxsWyCJhtkHNmYXZfd
 uJa02I0zg6C9NpavS1sWdT5rllsguA5+xyghmUsnv3knOgROvSkAIcs1tK2oslIGv7JD8hfHR
 pth7ndb1TdYuYLFnZTKNnJdHu2EfDZmQi9vRVjYXn9Z/zzKJ0mwxqbh5p1hOy1VURihi4gPvY
 B9ntdw3zY1aZYwy/3
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (oscar.carter[at]gmx.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.21 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jb69q-007g0W-NF
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
 "Lev R . Oshvang ." <levonshe@gmail.com>,
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

In the "fw_iso_context_create" function return an error code if both
callback parameters are NULL and also set the "ctx->callback.sc"
explicity to NULL in this case. It is not necessary set to NULL the
"ctx->callback.mc" variable because this and "ctx->callback.sc" are an
union and setting one implies setting the other one to the same value.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
Changelog v1->v2
-Set explicity to NULL the "ctx->callback.sc" variable and return an error
 code in "fw_iso_context_create" function if both callback parameters are
 NULL as Lev R. Oshvang suggested.
-Modify the commit changelog accordingly.

 drivers/firewire/core-cdev.c        | 12 +++++++-----
 drivers/firewire/core-iso.c         | 14 ++++++++++++--
 drivers/firewire/net.c              |  2 +-
 drivers/media/firewire/firedtv-fw.c |  3 ++-
 include/linux/firewire.h            |  3 ++-
 sound/firewire/amdtp-stream.c       |  2 +-
 sound/firewire/isight.c             |  4 ++--
 7 files changed, 27 insertions(+), 13 deletions(-)

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
index 185b0b78b3d6..1d28a98c08b2 100644
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

@@ -145,7 +146,16 @@ struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
 	ctx->channel = channel;
 	ctx->speed = speed;
 	ctx->header_size = header_size;
-	ctx->callback.sc = callback;
+
+	if (cb_sc) {
+		ctx->callback.sc = cb_sc;
+	} else if (cb_mc) {
+		ctx->callback.mc = cb_mc;
+	} else {
+		ctx->callback.sc = NULL;
+		return ERR_PTR(-EINVAL);
+	}
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
