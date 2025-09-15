Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 83575B56E5F
	for <lists+linux1394-devel@lfdr.de>; Mon, 15 Sep 2025 04:43:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eBnZxoCwwWdBsVEH7ZY5TIpX1CfilvWzz7GcFkb2QC8=; b=VN5RD/KxxgjLKg2MXvWWbfmY8j
	ZzIiTRh5RqzcaByWz3G6BCJ8MO5Lr/xYjAGLDXCsx/X3TiCJ8sjGHuxb5AlletKzqUw8GvyLAWC8t
	/9MueeXgJ0fah0zCSN/HOcPulNJoz4c3fPnQ114QUh1B3RrHNSFNUeebmb9cEbNb0rF0=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uxzB6-0001m1-Oc;
	Mon, 15 Sep 2025 02:42:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uxzB4-0001lt-M4
 for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 02:42:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k+1xFx1bqcSZnjU5LG3bHBbaKfjqK+CEGtY+X0biaxM=; b=XxgSqOXJzGfUydV+ENOgG4BGy9
 yTF8Xd7+9ZXjLo/QmCshg21QmdbHIl3c5nLnM6ag7HHFYCltbdiGkf0BEUJIJoY2vnvtTFpyom9CE
 aIlFldO7lEjmJamT8YzAfCN26FO2Dkf1zikjPAT6c2QJm34+jYBBNWKq8wB5Du/s0FxM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=k+1xFx1bqcSZnjU5LG3bHBbaKfjqK+CEGtY+X0biaxM=; b=kaa+//aFZSTS2oWQpSmpkUAB7T
 9mvCOePSDpTabVdYsy/eP8OjUevEX94G6XhMDgVMKii9NIEGrfCR2xaxWGmvrdt+yXuQHgArCL9ue
 HZolnavrWRyG+zbBO7hBvnfA4zpWTUeggUs2dW/V4JuD4jrd0ySufEPafP4rviYeKvR4=;
Received: from fout-b8-smtp.messagingengine.com ([202.12.124.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uxzB4-00010j-81 for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 02:42:50 +0000
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
 by mailfout.stl.internal (Postfix) with ESMTP id BBFF91D0008A;
 Sun, 14 Sep 2025 22:42:39 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-01.internal (MEProxy); Sun, 14 Sep 2025 22:42:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757904159; x=
 1757990559; bh=k+1xFx1bqcSZnjU5LG3bHBbaKfjqK+CEGtY+X0biaxM=; b=h
 XyEE6uU2fDkbHtpEbrH/F6TaG9tSdecQ4fB/e31kidDiR1VaqcsMRfwIrdfV9jb7
 SfCbrZUrlFDWmI3DErKNq6PiI4ZnZpaJzkNSkiLaMOJWv9dgqNkmFqFCeYhnp826
 teMG+wLOg1ioyurqjDuTzQRiCDqKT4UzGVzgB5ipu3OAD7hgBL4lM1cDbnqyv/gT
 sxHM83bxTmpntM5ydAR/zA4AWIfm7HGncR8RmdfUNqXnIysf+iUNPc44l7mP7Umd
 He62BhxTITbZ+gIQ0jrBF35u+FU1bv0eGfCbe2fAawsoBeiE0cVLACH/Bm4H1YNw
 z2WThQWWDg5jGJtkQOLRA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1757904159; x=1757990559; bh=k
 +1xFx1bqcSZnjU5LG3bHBbaKfjqK+CEGtY+X0biaxM=; b=eK/uq/e/FOepIoZGo
 5JUxvpmnMqLVqpCgvWn1VHSxgbr7nXfP7RXr9lYTfBL9f/AyQYPlX8gKY2IxxoLt
 WUO3ifyiibgrX/v3JeyY8DhxNFYqcHC24VbmyQNQGPacuy7wZz8QxTbSuxzwbr5l
 ocZ0ruf0ij14hsnMZT6y7MzhY2wtKt9Gg00rRRuFxZyNl6ZyDYELlivIZrmp9I+A
 wIFWIXZcbxj0VwiEdnFIQzsNKIhd410zw3Z10D2asi32meP3SMZVBasPEuZDj3yV
 BzfdzU3gZIG00+Zz8WztXL79otJDXJjNY47eYMe7OwS0UYiLcKkpmvGflwLybfy0
 T4PDg==
X-ME-Sender: <xms:H33HaN7itsyfQarjCqUzbRX1GmZ1mS7FxdptH1fIKkTyKCPP-ioFzg>
 <xme:H33HaD2KIAxPNx5iit58ElHXnC1fnhjyQ5R-a21urZ5Yp9WdvSKnir4Daz8_w5jrH
 -0FxlVlUWzvd0wGeHU>
X-ME-Received: <xmr:H33HaGaV4Vk37wH5E31PexkfnHEqe_g6qP0N4-cBEZSSMFdLqsru3b79Qa5JeKqJDL0ffyj5ykqWekXJuisPrpRM6uQjPBJN1KXJw8-VEvhxp9U>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdefieehvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:H33HaDDz4voQURn3JTiLWaHOxR9UW2dlkhle1WAnlmspNEUynBtOTw>
 <xmx:H33HaA-jMDu8YCmLjjsP7wjd9_-MXxsOQ7TLz5KfOMBrsCuaBtsDmg>
 <xmx:H33HaL_vhm4EoD4hYAnbDAyOCYcUrDBHbXnHsPPRVPo_Dsp4EcS9Ww>
 <xmx:H33HaPcxuNmQNDHraVVk_oSEp_AuY_Z7uOBjN-dxQKU4ZQLmHiV1ug>
 <xmx:H33HaH8_xPt9KiUWxm6Wa9tvbxJKKByefxZl09KOUmgVCxy0B8jMSyHw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 14 Sep 2025 22:42:38 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/2] firewire: core: use helper macro to compare against
 current jiffies
Date: Mon, 15 Sep 2025 11:42:32 +0900
Message-ID: <20250915024232.851955-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250915024232.851955-1-o-takashi@sakamocchi.jp>
References: <20250915024232.851955-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The pattern of calling either time_before64() or
 time_after64()
 with get_jiffies_64() can be replaced with the corresponding helper macros.
 Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/core-card.c
 | 4 ++-- drivers/firewire/core-cdev.c | 2 +- drivers/firewire/core-device.c
 | 3 +-- 3 files changed, 4 insert [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1uxzB4-00010j-81
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

The pattern of calling either time_before64() or time_after64() with
get_jiffies_64() can be replaced with the corresponding helper macros.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c   | 4 ++--
 drivers/firewire/core-cdev.c   | 2 +-
 drivers/firewire/core-device.c | 3 +--
 3 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 2541e8bb4b75..b5e01a711145 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -240,7 +240,7 @@ static void br_work(struct work_struct *work)
 
 	/* Delay for 2s after last reset per IEEE 1394 clause 8.2.1. */
 	if (card->reset_jiffies != 0 &&
-	    time_before64(get_jiffies_64(), card->reset_jiffies + secs_to_jiffies(2))) {
+	    time_is_after_jiffies64(card->reset_jiffies + secs_to_jiffies(2))) {
 		trace_bus_reset_postpone(card->index, card->generation, card->br_short);
 
 		if (!queue_delayed_work(fw_workqueue, &card->br_work, secs_to_jiffies(2)))
@@ -308,7 +308,7 @@ static void bm_work(struct work_struct *work)
 	irm_id   = card->irm_node->node_id;
 	local_id = card->local_node->node_id;
 
-	grace = time_after64(get_jiffies_64(), card->reset_jiffies + msecs_to_jiffies(125));
+	grace = time_is_before_jiffies64(card->reset_jiffies + msecs_to_jiffies(125));
 
 	if ((is_next_generation(generation, card->bm_generation) &&
 	     !card->bm_abdicate) ||
diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 9e90c79becdb..1be8f5eb3e17 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1324,7 +1324,7 @@ static void iso_resource_work(struct work_struct *work)
 		todo = r->todo;
 		// Allow 1000ms grace period for other reallocations.
 		if (todo == ISO_RES_ALLOC &&
-		    time_before64(get_jiffies_64(), client->device->card->reset_jiffies + secs_to_jiffies(1))) {
+		    time_is_after_jiffies64(client->device->card->reset_jiffies + secs_to_jiffies(1))) {
 			schedule_iso_resource(r, msecs_to_jiffies(333));
 			skip = true;
 		} else {
diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index 7d5821cd9b37..457a0da024a7 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -855,8 +855,7 @@ static void fw_device_shutdown(struct work_struct *work)
 {
 	struct fw_device *device = from_work(device, work, work.work);
 
-	if (time_before64(get_jiffies_64(),
-			  device->card->reset_jiffies + SHUTDOWN_DELAY)
+	if (time_is_after_jiffies64(device->card->reset_jiffies + SHUTDOWN_DELAY)
 	    && !list_empty(&device->card->link)) {
 		fw_schedule_device_work(device, SHUTDOWN_DELAY);
 		return;
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
