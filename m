Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 14675AD1617
	for <lists+linux1394-devel@lfdr.de>; Mon,  9 Jun 2025 01:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Nol3i3AYPkDGl2z+JEfgQ4LLWu2utUiW19SlU2Tftys=; b=mTOGlYKSUttqAkUpWZP/m5MwOS
	QEvmKe1BD2JWgULEn0/3updH+/CrdikygcrJsqBawoSqoQm5pLMAMt8R2ct8epxeMvNDl3W6h2rmE
	5RMo758rhnn8s2LVnZwsIEwmIhmg1XN/9nNwf88J7COAdVer6g/nS3ZiMwuYmzaYcGtk=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uOPsA-0003t9-Tp;
	Sun, 08 Jun 2025 23:56:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uOPs9-0003t1-V4
 for linux1394-devel@lists.sourceforge.net;
 Sun, 08 Jun 2025 23:56:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GbIGUnPtCO9kjBkbLFb+AInQm9K2WKd09jQ0+zdJnfE=; b=YBZ8ZX8FEO3TrFDFRJubBFvncI
 CPqH0PeAZWLn0LtkhxhH8Xvm6NKuVmV6szzsLLdat6nH6qAv167X1th3VFK3aYVXkcPpLTbsA4RWY
 Gz/R6iVmOZEAcBesHP2HeEWia5zKDiJx3ffOF/n9mA2bT3bbqYqtBZePmot2x6SN22mI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GbIGUnPtCO9kjBkbLFb+AInQm9K2WKd09jQ0+zdJnfE=; b=n
 B6o//NLE8ynjtM+q3/ijAsEzv/TVEI+V0lixs7cDL6BdSPR91tkv9Wc0vV7Z3Bz9d9eUPgAvrVHz6
 X8POZxbB5cjqIUra2ec0rzcxuaE27hLM0bdspwQ6S7Cb/AAPWfVcuwCsibncmlLODyWqwmtZTNv8Q
 zI+lHFUiWDxIKOh8=;
Received: from fhigh-b1-smtp.messagingengine.com ([202.12.124.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uOPs9-0001aw-Dt for linux1394-devel@lists.sourceforge.net;
 Sun, 08 Jun 2025 23:56:17 +0000
Received: from phl-compute-05.internal (phl-compute-05.phl.internal
 [10.202.2.45])
 by mailfhigh.stl.internal (Postfix) with ESMTP id E2E12254012F;
 Sun,  8 Jun 2025 19:38:16 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Sun, 08 Jun 2025 19:38:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1749425896; x=1749512296; bh=GbIGUnPtCO
 9kjBkbLFb+AInQm9K2WKd09jQ0+zdJnfE=; b=jYkJvtpG5y8Lvq03+GYZLBSNsC
 v16hGQ0f38/s88I29yTeLebUgBf5os/VHkujQkdRZtzVOvis0pDv/c+UuF2w4Pf+
 r3cXYdZzTqEuhrCsV0smrt1VgLZrBVw4JnafK1WXeBx21rKabkrvHE4gKDsGpNyW
 FXWtkkC0nvKSWZS/qH0Sosb4wI0uzcrUCviczwVQndjMUNRi9uFUzxevkBRfVHaJ
 q2Em8dJgkEn37XPkBT6MRW4oRpwQGKqdgYKGp7wgw4ZKWL1dd4ZIAg3cbH0X/uhv
 cl1qGKD1DAqE1y7hhk+zh1MZnBAoQ1cCXdBM4MwtOgeL57QZhuZ9zvYZACdQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1749425896; x=1749512296; bh=GbIGUnPtCO9kjBkbLFb+AInQm9K2WKd09jQ
 0+zdJnfE=; b=QWKzXxd6VEtBrrJlo8z/lweKkHFWfl4GpabBQSAVR197rYK/h2t
 Xh/2jVxueKRGMbcYJdg1KlOOn7AUA2gMGsGJ9oxCydJ7AZTVP6vnEL1XUYE/U0I6
 bYSWw35GNuTnFtyV6rZeMaA8QtLkLGzB5XLx9TsRP2n4ZHuNde7HMhP9yq56OJeI
 JkaSmhXDCvTUokrgOVDv/WuwSYIFa9RRoK+iK9A987kbwngB3+pz6O0EDJaLVIi/
 c06xlBr5XMgDdQnTBl70AwjUoDLSyOvuhUIiDeEY/0XzkswDBa2pU91DfFvMPXTx
 TnC+1FW3uDHftioKvFMkVK89OnLEurdpeWg==
X-ME-Sender: <xms:6B5GaIGJYR00TUpwxsEkyxyfgQWofkk8WAPAGJtGAa-46CXG9E2vFQ>
 <xme:6B5GaBWO8wwMKZAiwzQ_ehzl9Zh6hhDCq-_QQS4Kj6k3Gr8B7FY_CmVoGl955LZal
 YfHDPB5X3EqmCSwOYE>
X-ME-Received: <xmr:6B5GaCK1Fn6L8EPVtKEey3d1d6Sbu7rGHJ4iVqYDw8O1ovzHq4DEPWiaXx3x1inyf5bQijSa3A60MMvqccmqolGU4Lg4TzvyEo6Y6EpNu7TXUcA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdekhedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffoggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohht
 ohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtth
 gvrhhnpeffvdeuleffveekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveek
 keenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqd
 htrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhm
 ohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlse
 hlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidq
 khgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:6B5GaKEXo9JcnWtKpF6f0jx_Wwh-MYXBAciMDGo5pRs9P1u4g13sAw>
 <xmx:6B5GaOV5W9mL4Vp9OWFsvNSjuzNGwRJkuYhhuWHZzQ_XKZpEa4ijMA>
 <xmx:6B5GaNNAeTFbc20iayuFtl0zQnVWeabc-KfOwKw7nzi5abJikVJGng>
 <xmx:6B5GaF29_y--jvbFofcwPzRKtdVh8_8igl8sMio6EXaWG8ylUOp3LQ>
 <xmx:6B5GaKnv0kmuXZykbuzcpMUxoXxyTfW49UF8PEYHmWtY5qNM2eFqjXPR>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 8 Jun 2025 19:38:15 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: use from_work() macro to expand parent
 structure of work_struct
Date: Mon,  9 Jun 2025 08:38:08 +0900
Message-ID: <20250608233808.202355-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: A commit 60b2ebf48526 ("workqueue: Introduce from_work()
 helper
 for cleaner callback declarations") introduces a new macro to retrieve a
 poiner for the parent structure of the work item. It is conveni [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1uOPs9-0001aw-Dt
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

A commit 60b2ebf48526 ("workqueue: Introduce from_work() helper for cleaner
callback declarations") introduces a new macro to retrieve a poiner for the
parent structure of the work item. It is convenient to reduce input text.

This commit uses the macro in core functionalities.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c   |  4 ++--
 drivers/firewire/core-cdev.c   |  3 +--
 drivers/firewire/core-device.c | 15 +++++----------
 3 files changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 01354b9de8b2..2b6ad47b6d57 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -237,7 +237,7 @@ EXPORT_SYMBOL(fw_schedule_bus_reset);
 
 static void br_work(struct work_struct *work)
 {
-	struct fw_card *card = container_of(work, struct fw_card, br_work.work);
+	struct fw_card *card = from_work(card, work, br_work.work);
 
 	/* Delay for 2s after last reset per IEEE 1394 clause 8.2.1. */
 	if (card->reset_jiffies != 0 &&
@@ -286,7 +286,7 @@ void fw_schedule_bm_work(struct fw_card *card, unsigned long delay)
 
 static void bm_work(struct work_struct *work)
 {
-	struct fw_card *card = container_of(work, struct fw_card, bm_work.work);
+	struct fw_card *card = from_work(card, work, bm_work.work);
 	struct fw_device *root_device, *irm_device;
 	struct fw_node *root_node;
 	int root_id, new_root_id, irm_id, bm_id, local_id;
diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index bd04980009a4..78b10c6ef7fe 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1313,8 +1313,7 @@ static int ioctl_get_cycle_timer(struct client *client, union ioctl_arg *arg)
 static void iso_resource_work(struct work_struct *work)
 {
 	struct iso_resource_event *e;
-	struct iso_resource *r =
-			container_of(work, struct iso_resource, work.work);
+	struct iso_resource *r = from_work(r, work, work.work);
 	struct client *client = r->client;
 	unsigned long index = r->resource.handle;
 	int generation, channel, bandwidth, todo;
diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index ec3e21ad2025..aeacd4cfd694 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -853,8 +853,7 @@ static void fw_schedule_device_work(struct fw_device *device,
 
 static void fw_device_shutdown(struct work_struct *work)
 {
-	struct fw_device *device =
-		container_of(work, struct fw_device, work.work);
+	struct fw_device *device = from_work(device, work, work.work);
 
 	if (time_before64(get_jiffies_64(),
 			  device->card->reset_jiffies + SHUTDOWN_DELAY)
@@ -921,8 +920,7 @@ static int update_unit(struct device *dev, void *data)
 
 static void fw_device_update(struct work_struct *work)
 {
-	struct fw_device *device =
-		container_of(work, struct fw_device, work.work);
+	struct fw_device *device = from_work(device, work, work.work);
 
 	fw_device_cdev_update(device);
 	device_for_each_child(&device->device, NULL, update_unit);
@@ -1002,8 +1000,7 @@ static int compare_configuration_rom(struct device *dev, const void *data)
 
 static void fw_device_init(struct work_struct *work)
 {
-	struct fw_device *device =
-		container_of(work, struct fw_device, work.work);
+	struct fw_device *device = from_work(device, work, work.work);
 	struct fw_card *card = device->card;
 	struct device *found;
 	u32 minor;
@@ -1184,8 +1181,7 @@ static int reread_config_rom(struct fw_device *device, int generation,
 
 static void fw_device_refresh(struct work_struct *work)
 {
-	struct fw_device *device =
-		container_of(work, struct fw_device, work.work);
+	struct fw_device *device = from_work(device, work, work.work);
 	struct fw_card *card = device->card;
 	int ret, node_id = device->node_id;
 	bool changed;
@@ -1251,8 +1247,7 @@ static void fw_device_refresh(struct work_struct *work)
 
 static void fw_device_workfn(struct work_struct *work)
 {
-	struct fw_device *device = container_of(to_delayed_work(work),
-						struct fw_device, work);
+	struct fw_device *device = from_work(device, to_delayed_work(work), work);
 	device->workfn(work);
 }
 
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
