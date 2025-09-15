Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DA8B56E60
	for <lists+linux1394-devel@lfdr.de>; Mon, 15 Sep 2025 04:43:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+2/xgabS77VB3J4v4yCoqHQ3RXEVN1Xwr5KlSH5Q5GM=; b=j74UElu5sIGytGiJo4U5wPZRJ5
	06iBxtM87bBUzHG1Tx1MDBbFRpsKdt3lYZ0C54r6kceKqZHCbkTyJJq1oT1bSn8JXPkqBJiL4ZdUJ
	HPfnJvxgZe9Ad01FLVMePvpM1SUx0FjxhbhFGc6uffe5ETdRdDp/1RpwZ9Wf6LmShOcY=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uxzB5-0000cJ-FS;
	Mon, 15 Sep 2025 02:42:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uxzB3-0000cA-LZ
 for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 02:42:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PG6YnBZyw4rk9Rj3FF0nqQIWnEBCq/ECXui2hyE59tU=; b=kmYrMwqWbhc6jKTQn+vxzZMf0Q
 zWdznKg20AjE7vy9WbEpIneY/Lab3x76XF/0ZA0emIfUMIqdnuyKnVGtzFHO0HtKF7k9A58bybDak
 5RSPtiC8I/t0hyJ0rkW4RepTvyLVK1ImBYOl3gfFmmHaZhvmmy34LYC5+Fliop+LJePE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PG6YnBZyw4rk9Rj3FF0nqQIWnEBCq/ECXui2hyE59tU=; b=aDoDLAL/a+UW3FYgjlv7MvwQpR
 X+R8ilsTd+iwC+SNUPP5/SQazdAr3rP7Qs7gaBj0IGVly8f4BM2NXzJpMfyznlNg3KLqW1f1291iu
 8rbisojQQyKd4MwemBKxSgmbebXKIIQAzuTqRF8Kcl9FEWfqrWv90vn0sC8gXkYS1iAY=;
Received: from fout-b8-smtp.messagingengine.com ([202.12.124.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uxzB2-00010g-Qj for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 02:42:49 +0000
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
 by mailfout.stl.internal (Postfix) with ESMTP id 33DD01D0006D;
 Sun, 14 Sep 2025 22:42:38 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-01.internal (MEProxy); Sun, 14 Sep 2025 22:42:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757904158; x=
 1757990558; bh=PG6YnBZyw4rk9Rj3FF0nqQIWnEBCq/ECXui2hyE59tU=; b=A
 Mh4AcP+lxgU070Fm7dDIvQQSjni/RyqQ6tPmltM4vl3BppTgP3cOKp3A29L3+dMV
 KCvYsh9TdUPwgcDZT7JSV+TJzkRYjgMWlranJJ94LeQ6DxYGZw3gmOXczcW54NI6
 o6cnzXwaKj9GkGB1FQ/zTeg5TYMo6fLgN5255UU0/eTmATauWxKVQSirPk9yMZpp
 eArt02Y5sh/8IvuVrM3lDuIlZ3xjWyiJGeBjNw+UrHZgt2pR4DtGZ/evAEa3EB1E
 ENtM9fOga6lCqlViHhkSRqFRHn1Y+LCr9hc+GWVMb9ucs1iFGGq/o53ACjhd7o+f
 n2y7qjV4zkIiT/QGxR0FA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1757904158; x=1757990558; bh=P
 G6YnBZyw4rk9Rj3FF0nqQIWnEBCq/ECXui2hyE59tU=; b=eFhvMD8/cDdnlNQfw
 cRPOmHbvkHHoc7dPF/DfSWdb0CqJZUPUSMblRKdp/v6oWhW7TbJxVGQgB1+xpCmv
 ugnG0KN2h72q84qWVWgE9DlpVpCjw+6IBIEYB/YNxC6SVT1Cd6hen2i2ZyALyVe/
 jtl3l8mrdVKmLNlyR8C4eaL4gg5lZVApHDZPVLO+HNg22L/ZK2L8lzj+rvXPluDz
 Xo3Jy/vEtuR9cbi0XUM0KeFSwkh2u5TbS2QbTrRg26sKyeuNr1J0u/lbE0RrkX4p
 OeemhCU85wNzTuncJcbxZ5P+Pmq4QXA2ixzzxN1FFxxa7KQKA5vecoP4yLX7mwzF
 7xOMA==
X-ME-Sender: <xms:HX3HaHFPzJutFX7rqaPUjxNe39I7I1L6p7vxaBI2Q0nx75Hh7aPvQQ>
 <xme:HX3HaNTWTwmWcxfzwY-pwE41_cO6gc23mrF1M-1U-0dTkBkqC_v5D7keY2ITRu9fw
 fo9g9lh5AaVdlrzuAE>
X-ME-Received: <xmr:HX3HaLHbCDMkwJ38jSmf1WxNTET0I51DnT47kT6VAI2SFAAzPWBEiwX2xgAw8awQUg7vu_ycCy26njLH4bnt5XPsp0qf7eO_njoSvnheSr1EPc8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdefieehvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:HX3HaB9D55C-mVxlNjrSmVu5Wolnu6m9u6XplZCWhMBUYpGHNeuQaQ>
 <xmx:HX3HaNJlK-0b3ibN9s7K03Ntp6ls17W3qF6Oz0q1WsimZ9oPQeVDsQ>
 <xmx:HX3HaMYOCyfk2-hE_mqMpwRcsJjGWpojQkUg8EJ7sMDPFxG-F7O1Og>
 <xmx:HX3HaPKxTcplk-91DiD2jsM6bG-XYkvOsIqyi8HKzqjBKSPi5f3g9w>
 <xmx:Hn3HaOpkAh3fdMhIC_sZJrE8w1uhMj89RkZQgZU1WhS2Bu01iLBckkgz>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 14 Sep 2025 22:42:36 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/2] firewire: core: use helper macros instead of direct
 access to HZ
Date: Mon, 15 Sep 2025 11:42:31 +0900
Message-ID: <20250915024232.851955-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250915024232.851955-1-o-takashi@sakamocchi.jp>
References: <20250915024232.851955-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  There are some macros available to convert usecs, msecs, and
 secs into jiffies count. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/core-card.c | 17 +++++++ drivers/firewire/core-cdev.c
 | 4 ++-- drivers/firewire/core-device.c | 6 +++--- driver [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uxzB2-00010g-Qj
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

There are some macros available to convert usecs, msecs, and secs into
jiffies count.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c        | 17 +++++++----------
 drivers/firewire/core-cdev.c        |  4 ++--
 drivers/firewire/core-device.c      |  6 +++---
 drivers/firewire/core-transaction.c |  4 ++--
 drivers/firewire/core.h             |  2 ++
 5 files changed, 16 insertions(+), 17 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index adb90161c4c6..2541e8bb4b75 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -229,8 +229,7 @@ void fw_schedule_bus_reset(struct fw_card *card, bool delayed, bool short_reset)
 
 	/* Use an arbitrary short delay to combine multiple reset requests. */
 	fw_card_get(card);
-	if (!queue_delayed_work(fw_workqueue, &card->br_work,
-				delayed ? DIV_ROUND_UP(HZ, 100) : 0))
+	if (!queue_delayed_work(fw_workqueue, &card->br_work, delayed ? msecs_to_jiffies(10) : 0))
 		fw_card_put(card);
 }
 EXPORT_SYMBOL(fw_schedule_bus_reset);
@@ -241,10 +240,10 @@ static void br_work(struct work_struct *work)
 
 	/* Delay for 2s after last reset per IEEE 1394 clause 8.2.1. */
 	if (card->reset_jiffies != 0 &&
-	    time_before64(get_jiffies_64(), card->reset_jiffies + 2 * HZ)) {
+	    time_before64(get_jiffies_64(), card->reset_jiffies + secs_to_jiffies(2))) {
 		trace_bus_reset_postpone(card->index, card->generation, card->br_short);
 
-		if (!queue_delayed_work(fw_workqueue, &card->br_work, 2 * HZ))
+		if (!queue_delayed_work(fw_workqueue, &card->br_work, secs_to_jiffies(2)))
 			fw_card_put(card);
 		return;
 	}
@@ -309,8 +308,7 @@ static void bm_work(struct work_struct *work)
 	irm_id   = card->irm_node->node_id;
 	local_id = card->local_node->node_id;
 
-	grace = time_after64(get_jiffies_64(),
-			     card->reset_jiffies + DIV_ROUND_UP(HZ, 8));
+	grace = time_after64(get_jiffies_64(), card->reset_jiffies + msecs_to_jiffies(125));
 
 	if ((is_next_generation(generation, card->bm_generation) &&
 	     !card->bm_abdicate) ||
@@ -396,7 +394,7 @@ static void bm_work(struct work_struct *work)
 			 * that the problem has gone away by then.
 			 */
 			spin_unlock_irq(&card->lock);
-			fw_schedule_bm_work(card, DIV_ROUND_UP(HZ, 8));
+			fw_schedule_bm_work(card, msecs_to_jiffies(125));
 			return;
 		}
 
@@ -418,7 +416,7 @@ static void bm_work(struct work_struct *work)
 		 * bus reset is less than 125ms ago.  Reschedule this job.
 		 */
 		spin_unlock_irq(&card->lock);
-		fw_schedule_bm_work(card, DIV_ROUND_UP(HZ, 8));
+		fw_schedule_bm_work(card, msecs_to_jiffies(125));
 		return;
 	}
 
@@ -551,8 +549,7 @@ void fw_card_initialize(struct fw_card *card,
 	card->split_timeout_hi = DEFAULT_SPLIT_TIMEOUT / 8000;
 	card->split_timeout_lo = (DEFAULT_SPLIT_TIMEOUT % 8000) << 19;
 	card->split_timeout_cycles = DEFAULT_SPLIT_TIMEOUT;
-	card->split_timeout_jiffies =
-			DIV_ROUND_UP(DEFAULT_SPLIT_TIMEOUT * HZ, 8000);
+	card->split_timeout_jiffies = isoc_cycles_to_jiffies(DEFAULT_SPLIT_TIMEOUT);
 	card->color = 0;
 	card->broadcast_channel = BROADCAST_CHANNEL_INITIAL;
 
diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 78b10c6ef7fe..9e90c79becdb 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1324,8 +1324,8 @@ static void iso_resource_work(struct work_struct *work)
 		todo = r->todo;
 		// Allow 1000ms grace period for other reallocations.
 		if (todo == ISO_RES_ALLOC &&
-		    time_before64(get_jiffies_64(), client->device->card->reset_jiffies + HZ)) {
-			schedule_iso_resource(r, DIV_ROUND_UP(HZ, 3));
+		    time_before64(get_jiffies_64(), client->device->card->reset_jiffies + secs_to_jiffies(1))) {
+			schedule_iso_resource(r, msecs_to_jiffies(333));
 			skip = true;
 		} else {
 			// We could be called twice within the same generation.
diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index 6a04a0014694..7d5821cd9b37 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -847,9 +847,9 @@ static void fw_schedule_device_work(struct fw_device *device,
  */
 
 #define MAX_RETRIES	10
-#define RETRY_DELAY	(3 * HZ)
-#define INITIAL_DELAY	(HZ / 2)
-#define SHUTDOWN_DELAY	(2 * HZ)
+#define RETRY_DELAY	secs_to_jiffies(3)
+#define INITIAL_DELAY	msecs_to_jiffies(500)
+#define SHUTDOWN_DELAY	secs_to_jiffies(2)
 
 static void fw_device_shutdown(struct work_struct *work)
 {
diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 1d1c2d8f85ae..623e1d9bd107 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -458,7 +458,7 @@ static struct fw_packet phy_config_packet = {
 void fw_send_phy_config(struct fw_card *card,
 			int node_id, int generation, int gap_count)
 {
-	long timeout = DIV_ROUND_UP(HZ, 10);
+	long timeout = msecs_to_jiffies(100);
 	u32 data = 0;
 
 	phy_packet_set_packet_identifier(&data, PHY_PACKET_PACKET_IDENTIFIER_PHY_CONFIG);
@@ -1220,7 +1220,7 @@ static void update_split_timeout(struct fw_card *card)
 	cycles = clamp(cycles, 800u, 3u * 8000u);
 
 	card->split_timeout_cycles = cycles;
-	card->split_timeout_jiffies = DIV_ROUND_UP(cycles * HZ, 8000);
+	card->split_timeout_jiffies = isoc_cycles_to_jiffies(cycles);
 }
 
 static void handle_registers(struct fw_card *card, struct fw_request *request,
diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index 9e68ebf0673d..7f2ca93406ce 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -30,6 +30,8 @@ struct fw_packet;
 // This is the arbitrary value we use to indicate a mismatched gap count.
 #define GAP_COUNT_MISMATCHED	0
 
+#define isoc_cycles_to_jiffies(cycles)	usecs_to_jiffies(cycles * USEC_PER_SEC / 8000)
+
 extern __printf(2, 3)
 void fw_err(const struct fw_card *card, const char *fmt, ...);
 extern __printf(2, 3)
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
