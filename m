Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D301D1E8FEE
	for <lists+linux1394-devel@lfdr.de>; Sat, 30 May 2020 11:10:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jexVC-0001o5-1I; Sat, 30 May 2020 09:10:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <oscar.carter@gmx.com>) id 1jexV9-0001nj-MH
 for linux1394-devel@lists.sourceforge.net; Sat, 30 May 2020 09:09:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZIQRYgY2ouCqA4I08np+xF5iFQ/07x4e9+uO5GKIfek=; b=alHUbX2iIUaF5dbT27aDL2Lq6d
 V10UDhOvUU9GxjwW1VrwyGyWRKrlXsAcnBlqhXGfWempcp8GTtq5B2Pqr/fr6+wSxTxFE1VdHdWgd
 ZDs3Y0ylPTpqw2XKgT1na1fhg36mInDFvLjqal75Z7932ylhQJuwWBG/LG08wAIt5tPo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZIQRYgY2ouCqA4I08np+xF5iFQ/07x4e9+uO5GKIfek=; b=Q
 wPE8lkhZI+soymyF04NyvHkOgHQQ8lBn56ZyBObzmZggxa6gDKc74BMUuML5e1AXIdhgjGti1eqG2
 lDzcTGfv2zonIzgmveTvYNICMRNdYunfLSU2VpuoFSS+QxxvcM/QADJMabqk3DB1nAXSCPJARXY2d
 fkQyB6FvcZhiEuwI=;
Received: from mout.gmx.net ([212.227.15.18])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jexV6-00DcMp-VC
 for linux1394-devel@lists.sourceforge.net; Sat, 30 May 2020 09:09:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1590829759;
 bh=pbrG6w0w7nNvrUY2FZy0bHWEVivzVWnGVN71mAetFSo=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=HdLlBiLskbL8tRi7O2IEXnG7Hl+hP1gjafEnnB6usxNSZxdfki9caynYN3AS9fBgl
 DxVTZiQ0ESk4W78gBSW4fabhB2FTZdghWlw1XM9Km7liXDB4m+rCfoygHYEgT1AUOl
 gtue2VfPU20QVOWgrjMIqAdE3+HtIK7H2kt4FUyU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx005 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MwQT9-1ipkRm0akH-00sNLJ; Sat, 30 May 2020 11:09:19 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Kees Cook <keescook@chromium.org>,
 Stefan Richter <stefanr@s5r6.in-berlin.de>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>
Subject: [PATCH v3] firewire: Remove function callback casts
Date: Sat, 30 May 2020 11:08:39 +0200
Message-Id: <20200530090839.7895-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:fVsyCVUWXyO4nX+jvehqta4m03FRys0QSfi+JfpgIUb/+1FFk35
 01/lh+/L0yseb5P7TApLqfIegGQQ4Ma2eqP3aKAoBioZ/EMvMI0kfge86nYssr2v+JA5Ye7
 LMN23/mvvH99AYmCnoryK0hxcGs1e0h8wMaCAsLIOJPAAmFZN7GCu7C4aJDrE4dOs6MnjNp
 yF7JzFRjqm275sOv127uA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wK+LOJDdfVM=:0HjSIV9RIwUfRt1X7lLzFq
 bHfktVFbRQwlxG8nVGBy8Z8r7/TDkSFzS4go1WEP+NKSO82v/1iGr8+WtJnDZgzSmM/0XwoA+
 o1VQ1hh7rch4ajU1WwZlZC4+RQzzn2uUqSqCAXaSHIyerKBCCwESJIs07TGHH0fK4ltbMIsr7
 r6WD5feCB6dXd+RWk9XSzQjt/DsJXWr6bCTVCezO7miKEJmjPo8+B6oe8vKz78TcxjlzzQvR9
 8116t4YcuOd9EgpkaepIgc2i1eBHCvBw36YsTNjB/gxfuFukIiEvsR10fZyge4glnsB8Ac26v
 NoYA7OBmdm48fN52pq0yth7VKmZIQmjaa0SQpJTrXSNBZnliWrGyJkFvpe13OJa/NpkykZ3kG
 c5fwed0fgIjbfSsYCvwDM3rxbViJyhfSkHDGraHifeDuYHC0/jnFiVHpc5xSpP0rywnAPBaDS
 FePX49dAtJNSAePybi/CyjpFRuIRlIXJeJLbc0zVeUjrd5s1dFKtZBboL2ekMxUDFji/hzkBU
 tQFokngaVjQ6aYGAQ+BKZ3x+kGEoiBUuHUDUpFgX51gwiv224QBMiBYzByBvG2d5XRTf3Lbhj
 UsztIeQoHNk7QoqjcIjA49sImGE3pzxKdvIGAKtUUMH9sgd56bts7+Jti46RqtWYlWzh4KjYm
 ie99VfH7QVaA7dxi/3h99hGgvZu5uu1JP1ZT4/6/cmuCjt5sXi19tZSEGKpbC+NwrrA26T6cH
 DBxFWeP1zWT/HaDpsWhmqv+WtGkEKgWVuvPyyCoR7Ah74TpLEdwwYhHl+D7HBa/oL4anfobmA
 JCtcRaLPK/qQDZjr3JFoyLRL9l1kUqcxzUQS4gOyUXuE0UPdEEVCTpmQ75X5vCeWOo7GWKm9s
 uK9idte0v07ZiWXUHMyP4+Z6sj6Voxd/MubY2ZcEn0Hb5uNmxATOo/Bt+tnz/Q4/vLxfzN31f
 9/earCnr2/H6xd9rrbTPggIeNk9oLTNKnj6S3BrXaN8PfWyhnLhWh2P4xY6gFDX0UTr9DZIoG
 APVZRBxRv2XmLayRX+emux8eIDRD24khyYABTv1TX/VydcA7y7a1PEMDtgzD0u0hXTMLjgWc1
 fDn+UzON2OO3LxH7Z0tmUB+EmAY1XG+Bvt8kVK78w0jywGjTG/QZGRgk4nrogaF0HGGDXFmu9
 wX7vQ+AjuOGMGzydS8lJ6p4DnCcdhqJ9p8UCC2Y2J2pHUL4jxqH0qReHt/i0E3BiVrBA3Q1TN
 7xH4f5uDHrwmgNdXe
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (oscar.carter[at]gmx.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.18 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jexV6-00DcMp-VC
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
Cc: linux1394-devel@lists.sourceforge.net, Oscar Carter <oscar.carter@gmx.com>,
 linux-kernel@vger.kernel.org, kernel-hardening@lists.openwall.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In 1394 OHCI specification, Isochronous Receive DMA context has several
modes. One of mode is 'BufferFill' and Linux FireWire stack uses it to
receive isochronous packets for multiple isochronous channel as
FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL.

The mode is not used by in-kernel driver, while it's available for
userspace. The character device driver in firewire-core includes
cast of function callback for the mode since the type of callback
function is different from the other modes. The case is inconvenient
to effort of Control Flow Integrity builds due to
-Wcast-function-type warning.

This commit removes the cast. A static helper function is newly added
to initialize isochronous context for the mode. The helper function
arranges isochronous context to assign specific callback function
after call of existent kernel API. It's noticeable that the number of
isochronous channel, speed, and the size of header are not required for
the mode. The helper function is used for the mode by character device
driver instead of direct call of existent kernel API.

The same goal can be achieved (in the ioctl_create_iso_context function)
without this helper function as follows:
- Call the fw_iso_context_create function passing NULL to the callback
  parameter.
- Then setting the context->callback.sc or context->callback.mc
  variables based on the a->type value.

However using the helper function created in this patch makes code more
clear and declarative. This way avoid the call to a function with one
purpose to achieved another one.

Co-developed-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
Co-developed-by: Stefan Richter <stefanr@s5r6.in-berlin.de>
Signed-off-by: Stefan Richter <stefanr@s5r6.in-berlin.de>
Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
Hi,

this is another proposal to achieved the goal of remove function callback
cast start by me with the first [1] and second [2] versions, and followed
by the work of Takashi Sakamoto with his first [3] and second [4] versions,
and the code of Stefan Richter [5].

The purpose of this third version is to put together all the work done
until now following the comments of all reviewed patches.

I've added the "Co-developed-by" and "Signed-off-by" tags to give credit to
Takashi Sakamoto and Stefan Richter if there are no objections.

Changelog v1->v2
-Set explicity to NULL the "ctx->callback.sc" variable and return an error
 code in "fw_iso_context_create" function if both callback parameters are
 NULL as Lev R. Oshvang suggested.
-Modify the commit changelog accordingly.

Changelog v2->v3
-Put togeher all the work done in different patches by different authors.
-Modify the previous work following the comments in the reviewed patches.

[1] https://lore.kernel.org/lkml/20200516173934.31527-1-oscar.carter@gmx.com/
[2] https://lore.kernel.org/lkml/20200519173425.4724-1-oscar.carter@gmx.com/
[3] https://lore.kernel.org/lkml/20200520064726.31838-1-o-takashi@sakamocchi.jp/
[4] https://lore.kernel.org/lkml/20200524132048.243223-1-o-takashi@sakamocchi.jp/
[5] https://lore.kernel.org/lkml/20200525015532.0055f9df@kant/

 drivers/firewire/core-cdev.c | 32 ++++++++++++++++++++++++++------
 include/linux/firewire.h     | 11 +++++++----
 2 files changed, 33 insertions(+), 10 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 6e291d8f3a27..f7212331f245 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -10,6 +10,7 @@
 #include <linux/delay.h>
 #include <linux/device.h>
 #include <linux/dma-mapping.h>
+#include <linux/err.h>
 #include <linux/errno.h>
 #include <linux/firewire.h>
 #include <linux/firewire-cdev.h>
@@ -953,11 +954,25 @@ static enum dma_data_direction iso_dma_direction(struct fw_iso_context *context)
 			return DMA_FROM_DEVICE;
 }

+static struct fw_iso_context *fw_iso_mc_context_create(struct fw_card *card,
+						fw_iso_mc_callback_t callback,
+						void *callback_data)
+{
+	struct fw_iso_context *ctx;
+
+	ctx = fw_iso_context_create(card, FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL,
+				    0, 0, 0, NULL, callback_data);
+	if (!IS_ERR(ctx))
+		ctx->callback.mc = callback;
+
+	return ctx;
+}
+
 static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 {
 	struct fw_cdev_create_iso_context *a = &arg->create_iso_context;
 	struct fw_iso_context *context;
-	fw_iso_callback_t cb;
+	union fw_iso_callback cb;
 	int ret;

 	BUILD_BUG_ON(FW_CDEV_ISO_CONTEXT_TRANSMIT != FW_ISO_CONTEXT_TRANSMIT ||
@@ -970,7 +985,7 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 		if (a->speed > SCODE_3200 || a->channel > 63)
 			return -EINVAL;

-		cb = iso_callback;
+		cb.sc = iso_callback;
 		break;

 	case FW_ISO_CONTEXT_RECEIVE:
@@ -978,19 +993,24 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 		    a->channel > 63)
 			return -EINVAL;

-		cb = iso_callback;
+		cb.sc = iso_callback;
 		break;

 	case FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL:
-		cb = (fw_iso_callback_t)iso_mc_callback;
+		cb.mc = iso_mc_callback;
 		break;

 	default:
 		return -EINVAL;
 	}

-	context = fw_iso_context_create(client->device->card, a->type,
-			a->channel, a->speed, a->header_size, cb, client);
+	if (a->type == FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL)
+		context = fw_iso_mc_context_create(client->device->card, cb.mc,
+						   client);
+	else
+		context = fw_iso_context_create(client->device->card, a->type,
+						a->channel, a->speed,
+						a->header_size, cb.sc, client);
 	if (IS_ERR(context))
 		return PTR_ERR(context);
 	if (client->version < FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW)
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index aec8f30ab200..07967a450eaa 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -436,6 +436,12 @@ typedef void (*fw_iso_callback_t)(struct fw_iso_context *context,
 				  void *header, void *data);
 typedef void (*fw_iso_mc_callback_t)(struct fw_iso_context *context,
 				     dma_addr_t completed, void *data);
+
+union fw_iso_callback {
+	fw_iso_callback_t sc;
+	fw_iso_mc_callback_t mc;
+};
+
 struct fw_iso_context {
 	struct fw_card *card;
 	int type;
@@ -443,10 +449,7 @@ struct fw_iso_context {
 	int speed;
 	bool drop_overflow_headers;
 	size_t header_size;
-	union {
-		fw_iso_callback_t sc;
-		fw_iso_mc_callback_t mc;
-	} callback;
+	union fw_iso_callback callback;
 	void *callback_data;
 };

--
2.20.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
