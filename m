Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A725F9587C4
	for <lists+linux1394-devel@lfdr.de>; Tue, 20 Aug 2024 15:22:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sgOny-0002jl-Nv;
	Tue, 20 Aug 2024 13:21:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sgOnw-0002jd-Pq
 for linux1394-devel@lists.sourceforge.net;
 Tue, 20 Aug 2024 13:21:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=86ZeZfYeaTcmskdnAJqMjm66d9ypJErFKQtgdhkPtkA=; b=OC8Eb37C+jfjqGpqv0rfasgreH
 kllxqlgvALJVDw0XZGRS1jsn9aaLuTHLcCm+Ev64MzvU/J7b5F5KEOxaxTbLhFdGV4RQxW5fJ+02R
 TxsUQfq30PEA+BzREddspUH64lfJg1CCM0vi71wI9rhGAAnN0CW5XAulw1qk5ydH83hw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=86ZeZfYeaTcmskdnAJqMjm66d9ypJErFKQtgdhkPtkA=; b=D
 MqtB1NHxrAlMKsrz8Fxbruor0fdXcR4tnBp+XuqZSlMCgdmzqPBYm1lrmnNXgKX6fLTlbf5mblj+X
 p424vmI9IgWUN4eHM5/mx58llBMjj3sxbSqcnG2k70HGH5zzguo3wROpIPDKbdHhq17774lGtUiod
 QJ8toBoASrgfL3bQ=;
Received: from fout5-smtp.messagingengine.com ([103.168.172.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sgOnu-0006ZW-Nd for linux1394-devel@lists.sourceforge.net;
 Tue, 20 Aug 2024 13:21:44 +0000
Received: from phl-compute-05.internal (phl-compute-05.nyi.internal
 [10.202.2.45])
 by mailfout.nyi.internal (Postfix) with ESMTP id E493F1387F0B;
 Tue, 20 Aug 2024 09:21:36 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-05.internal (MEProxy); Tue, 20 Aug 2024 09:21:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1724160096; x=1724246496; bh=86ZeZfYeaT
 cmskdnAJqMjm66d9ypJErFKQtgdhkPtkA=; b=kQMJc1ql09vhVCoBlYb6uVIzNM
 mzs/TFSb1GlJ8PmiNT3TOL4Kax3w4oSNSYYLvzcf2AdZMqJzMMa1e+ASUB1N6467
 vM/OwY/vHhuqH6UQqWh4fzYU9/sjSutyzeuo24x7qkWVHE1nMbq4Vlz/NXvxssDE
 3637mz1/SpkIty8Le83U6jzz6FBAN3AGViLORoslUrEhgBHXNWu6pw+TtwQAnIB5
 NgqMwKQsE8lscndT0t2UxEH6RdN0fNL6aEUDxSB2AkDbe+qTP1XEal+HsaDq+Ivq
 bszKi30VKKbZa6oMh29lDk8YXIS/grqAMOxn0aadZVWHFxsK/vNExnBP2REw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1724160096; x=1724246496; bh=86ZeZfYeaTcmskdnAJqMjm66d9yp
 JErFKQtgdhkPtkA=; b=CGBRh76UrL3li2ptaFZOD4vHODcQXcjZfKu9A0WWLx3P
 O2x2STIlgndzzXfMr7xqLodVfvu6i1TdlrFDSzYBdtKO0U1AWDZSEz33kRk8cawU
 t4USy0+VV3e46Cgs2le/70gAs+LUw5WP1MEFmEbVlHKMMY/WyR0OVcNLbU+jObQ2
 tpjPWCjsrP8WkI3iqD+oM7PGdv9qN214iqP6GjFXwnUFMyf1oNwvaL8NKPMwPw+f
 UkZJaNkJrVdsNuhVCdxRsoub00koRzjgNzjz6s1aE8RVwcy91sqHMhNcfusY8o0k
 et6VsgJ/nLmbD6fQGKTQxhpYsiqIQP5pGD28sQ3S5A==
X-ME-Sender: <xms:YJjEZjjWnlJD1qmHnPcVpz2uy3vVfA206SJA3hA8BJeTOx9HgEcvgg>
 <xme:YJjEZgCirTXiguYql9LdyDJqvAaIINWpfgbArm6y-5-ajbwCOajq7cd6xKxu4kmNL
 9WJcg2C3ZcWr-3keIM>
X-ME-Received: <xmr:YJjEZjFS2ikou5G-vj7lWByLX4BSpvXv16jRjv1-ABgd_2haTpYRxBNxW8uUVEa8HvIXJ7K_cYbmjls7IHoDOJLsGCkT-90PEfH4aPq8QbsWRnQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudduiedgiedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhephffvvefufffkofgggfestdekredtredttdenucfh
 rhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepffdvueelffevkeduhfetjedu
 ffeghfettdfguedtgfdvgfeufeduheevheevkeeknecuvehluhhsthgvrhfuihiivgeptd
 enucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggt
 hhhirdhjphdpnhgspghrtghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtghpth
 htoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhg
 vgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnh
 gvlhdrohhrghdprhgtphhtthhopeiiihhjuhhnpghhuhesihgtlhhouhgurdgtohhm
X-ME-Proxy: <xmx:YJjEZgRx3H-KrvJu0zDBbaR7naGFIEJv5eZIA6Fi3qPVgKJvdxZTGg>
 <xmx:YJjEZgx7WWL4kMvZkasT73n03BZH3rqQfBcKeXJNXz7GEOCM_h-ubQ>
 <xmx:YJjEZm7InJyAn3M1CDIbCdGFPrWsy1cTWvHOveL7itFHx08kN0IdcQ>
 <xmx:YJjEZly82SZ8a7wl3Oiqc8YQVFT9e2Cbeks9QI18hl7V_pggTY7yPA>
 <xmx:YJjEZs-NQMAPfFPX5jEn3jpXeMoHfQZhX3uwXO-UQfXqIP23Xkw2ermF>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 20 Aug 2024 09:21:35 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: update fw_device outside of
 device_find_child()
Date: Tue, 20 Aug 2024 22:21:32 +0900
Message-ID: <20240820132132.28839-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When detecting updates of bus topology, the data of fw_device
 is newly allocated and caches the content of configuration ROM from the
 corresponding
 node. Then, the tree of device is sought to find the [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.148 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.148 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.148 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.148 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sgOnu-0006ZW-Nd
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
Cc: Zijun Hu <zijun_hu@icloud.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

When detecting updates of bus topology, the data of fw_device is newly
allocated and caches the content of configuration ROM from the
corresponding node. Then, the tree of device is sought to find the
previous data of fw_device corresponding to the node. If found, the
previous data is updated and reused and the data of fw_device newly
allocated is going to be released.

The above procedure is done in the call of device_find_child(), however it
is a bit abusing against the intention of the helper function, since it is
preferable to find only without updating.

This commit splits the update outside of the call.

Cc: Zijun Hu <zijun_hu@icloud.com>
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c | 116 +++++++++++++++++----------------
 1 file changed, 59 insertions(+), 57 deletions(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index f71e118ef60a..a99fe35f1f0d 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -928,56 +928,6 @@ static void fw_device_update(struct work_struct *work)
 	device_for_each_child(&device->device, NULL, update_unit);
 }
 
-/*
- * If a device was pending for deletion because its node went away but its
- * bus info block and root directory header matches that of a newly discovered
- * device, revive the existing fw_device.
- * The newly allocated fw_device becomes obsolete instead.
- */
-static int lookup_existing_device(struct device *dev, void *data)
-{
-	struct fw_device *old = fw_device(dev);
-	struct fw_device *new = data;
-	struct fw_card *card = new->card;
-	int match = 0;
-
-	if (!is_fw_device(dev))
-		return 0;
-
-	guard(rwsem_read)(&fw_device_rwsem); // serialize config_rom access
-	guard(spinlock_irq)(&card->lock); // serialize node access
-
-	if (memcmp(old->config_rom, new->config_rom, 6 * 4) == 0 &&
-	    atomic_cmpxchg(&old->state,
-			   FW_DEVICE_GONE,
-			   FW_DEVICE_RUNNING) == FW_DEVICE_GONE) {
-		struct fw_node *current_node = new->node;
-		struct fw_node *obsolete_node = old->node;
-
-		new->node = obsolete_node;
-		new->node->data = new;
-		old->node = current_node;
-		old->node->data = old;
-
-		old->max_speed = new->max_speed;
-		old->node_id = current_node->node_id;
-		smp_wmb();  /* update node_id before generation */
-		old->generation = card->generation;
-		old->config_rom_retries = 0;
-		fw_notice(card, "rediscovered device %s\n", dev_name(dev));
-
-		old->workfn = fw_device_update;
-		fw_schedule_device_work(old, 0);
-
-		if (current_node == card->root_node)
-			fw_schedule_bm_work(card, 0);
-
-		match = 1;
-	}
-
-	return match;
-}
-
 enum { BC_UNKNOWN = 0, BC_UNIMPLEMENTED, BC_IMPLEMENTED, };
 
 static void set_broadcast_channel(struct fw_device *device, int generation)
@@ -1038,12 +988,24 @@ int fw_device_set_broadcast_channel(struct device *dev, void *gen)
 	return 0;
 }
 
+static int compare_configuration_rom(struct device *dev, void *data)
+{
+	const struct fw_device *old = fw_device(dev);
+	const u32 *config_rom = data;
+
+	if (!is_fw_device(dev))
+		return 0;
+
+	// Compare the bus information block and root_length/root_crc.
+	return !memcmp(old->config_rom, config_rom, 6 * 4);
+}
+
 static void fw_device_init(struct work_struct *work)
 {
 	struct fw_device *device =
 		container_of(work, struct fw_device, work.work);
 	struct fw_card *card = device->card;
-	struct device *revived_dev;
+	struct device *found;
 	u32 minor;
 	int ret;
 
@@ -1071,13 +1033,53 @@ static void fw_device_init(struct work_struct *work)
 		return;
 	}
 
-	revived_dev = device_find_child(card->device,
-					device, lookup_existing_device);
-	if (revived_dev) {
-		put_device(revived_dev);
-		fw_device_release(&device->device);
+	// If a device was pending for deletion because its node went away but its bus info block
+	// and root directory header matches that of a newly discovered device, revive the
+	// existing fw_device. The newly allocated fw_device becomes obsolete instead.
+	//
+	// serialize config_rom access.
+	scoped_guard(rwsem_read, &fw_device_rwsem) {
+		found = device_find_child(card->device, (void *)device->config_rom,
+					  compare_configuration_rom);
+	}
+	if (found) {
+		struct fw_device *reused = fw_device(found);
+
+		if (atomic_cmpxchg(&reused->state,
+				   FW_DEVICE_GONE,
+				   FW_DEVICE_RUNNING) == FW_DEVICE_GONE) {
+			// serialize node access
+			scoped_guard(spinlock_irq, &card->lock) {
+				struct fw_node *current_node = device->node;
+				struct fw_node *obsolete_node = reused->node;
+
+				device->node = obsolete_node;
+				device->node->data = device;
+				reused->node = current_node;
+				reused->node->data = reused;
+
+				reused->max_speed = device->max_speed;
+				reused->node_id = current_node->node_id;
+				smp_wmb();  /* update node_id before generation */
+				reused->generation = card->generation;
+				reused->config_rom_retries = 0;
+				fw_notice(card, "rediscovered device %s\n",
+					  dev_name(found));
+
+				reused->workfn = fw_device_update;
+				fw_schedule_device_work(reused, 0);
+
+				if (current_node == card->root_node)
+					fw_schedule_bm_work(card, 0);
+			}
 
-		return;
+			put_device(found);
+			fw_device_release(&device->device);
+
+			return;
+		}
+
+		put_device(found);
 	}
 
 	device_initialize(&device->device);
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
